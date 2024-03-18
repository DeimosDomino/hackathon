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
    UseInterceptors
} from "@nestjs/common";
import {GameRepository} from "../../orm/db-hackaton/repositories";
import {ProvidersFindAllDto} from "./dto";
import {ILike, Repository} from "typeorm";
import {CacheInterceptor} from "@nestjs/cache-manager";
import {InjectRepository} from "@nestjs/typeorm";
import {Provider} from "../../orm";



@Controller('/provider')
export class ProviderController {
    @InjectRepository(Provider) private providerRepository: Repository<Provider>


    @Get('/:id')
    findById(@Param('id', ParseIntPipe) id: number){
        return this.providerRepository.findOne({where: {id}});
    }

    @Get('/')
    //@UseInterceptors(CacheInterceptor)
    async findAll(@Query() query: ProvidersFindAllDto){
        const {page = 1, perPage = 10, sort = 'id', sortKind = 'desc', name, ...params} = query;

        const where = {
            ...params,
            ...name && {name: ILike(`%${name}%`)}
        };

        const rows = await this.providerRepository.find({
            where,
            order: {[sort]: sortKind},
            take: perPage,
            skip: (page-1)*perPage,
        })
        const count = await this.providerRepository.count({where})
        return {
            page,
            count,
            rows,
        }

    }

    @Put('/:id/rate')
    async updateRate(
        @Param('id', ParseIntPipe) id: number,
        @Body('recommendation_rate', ParseFloatPipe) recommendationRate: number
    ){
        await this.providerRepository.update({id}, {recommendationRate});
        return this.providerRepository.findOne({where: {id}});
    }

}
