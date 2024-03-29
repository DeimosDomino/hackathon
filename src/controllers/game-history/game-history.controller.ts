import {
    Body,
    Controller,
    Get,
    Inject,
    Param,
    ParseIntPipe, Post,
    Query,
} from "@nestjs/common";
import {GameHistoryRepository} from "../../orm/db-hackaton/repositories";
import {GameHistoryFindAllDto} from "./dto";
import {CACHE_MANAGER, CacheStore} from "@nestjs/cache-manager";



@Controller('/game_history')
export class GameHistoryController {
    @Inject(GameHistoryRepository) private gameHistoryRepository: GameHistoryRepository;
    @Inject(CACHE_MANAGER) private cacheManager: CacheStore

    @Get('/:id')
    findById(@Param('id', ParseIntPipe) id: number){
        return this.gameHistoryRepository.findOne({where: {id}});
    }

    @Get('/')
    async findAll(@Query() query: GameHistoryFindAllDto){
        const {page = 1, perPage = 10, sort = 'id', sortKind = 'desc', ...params} = query;

        const where = {
            ...params,
        };

        const rows = await this.gameHistoryRepository.find({
            where,
            order: {[sort]: sortKind},
            take: perPage,
            skip: (page-1)*perPage,
        })
        const count = await this.gameHistoryRepository.count({where})
        return {
            page,
            count,
            rows,
        }

    }

    @Post()
    async create(
        @Body('user_id', ParseIntPipe) userId: number,
        @Body('game_id', ParseIntPipe) gameId: number
    ){
        const {identifiers: [{id}]} = await this.gameHistoryRepository.insert({userId, gameId});
        await this.cacheManager.del('recommendation_ranges')
        return this.gameHistoryRepository.find({where: {id}})
    }

}
