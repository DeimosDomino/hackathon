import {
    Body,
    Controller,
    Get,
    Inject,
    Param,
    ParseFloatPipe,
    ParseIntPipe,
    Put,
    Query,
} from "@nestjs/common";
import {GameRepository} from "../../orm/db-hackaton/repositories";
import {GameFindAllDto} from "./dto";
import {ILike} from "typeorm";
import {CACHE_MANAGER, CacheStore} from "@nestjs/cache-manager";



@Controller('/game')
export class GameController{
    @Inject(GameRepository) private gameRepository: GameRepository;
    @Inject(CACHE_MANAGER) private cacheManager: CacheStore;

    @Get('/:id')
    findById(@Param('id', ParseIntPipe) id: number){
        return this.gameRepository.findOne({where: {id}});
    }

    @Get('/')
    async findAll(@Query() query: GameFindAllDto){
        const {page = 1, perPage = 10, sort = 'id', sortKind = 'desc', name, ...params} = query;

        const where = {
            ...params,
            ...name && {name: ILike(`%${name}%`)}
        };

        const rows = await this.gameRepository.find({
            where,
            order: {[sort]: sortKind},
            take: perPage,
            skip: (page-1)*perPage,
            relations: ['provider']
        })
        const count = await this.gameRepository.count({where})
        return {
            page,
            count,
            rows,
        }

    }

    @Put('/:id/weight')
    async updateWeight(
        @Param('id', ParseIntPipe) id: number,
        @Body('weight', ParseFloatPipe) weight: number
    ){
        await this.gameRepository.update({id}, {weight});
        await this.cacheManager.del('recommendation_ranges')
        return this.gameRepository.findOne({where: {id}, relations: ['provider']});
    }

}
