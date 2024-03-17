import { Inject, Injectable } from "@nestjs/common";
import { GameRepository } from "../../orm/db-hackaton/repositories/game.repository";
import { CACHE_MANAGER, CacheStore } from "@nestjs/cache-manager";
import * as _ from 'lodash';
import {InjectRepository} from "@nestjs/typeorm";
import {GameHistory, GameHistoryRepository} from "../../orm";
import {Repository} from "typeorm";

interface Range{
    id: number;
    from: number;
    to: number;
}

@Injectable()
export class RecommendationService {

    @Inject(GameRepository) private gameRepository: GameRepository;
    @Inject(GameHistoryRepository) private gameHistoryRepository: GameHistoryRepository;
    @Inject(CACHE_MANAGER) private cacheManager: CacheStore

    async recommendGame(){

        let ranges: Range[] = await this.cacheManager.get('recommendation_ranges')
        if(!ranges){
            ranges = await this.getRanges();
            await this.cacheManager.set('recommendation_ranges', ranges, {ttl: 60 * 30});
        }

        const recommendedGameId = await this.getRandomGameFromRanges(ranges);

        return this.gameRepository.find({where: {id: recommendedGameId}});

    }

    private async getRandomGameFromRanges(ranges: Range[]){
        const randomNumber = Math.random();
        let recommendedGameId: number;
        for(const {id, from, to} of ranges){
            if(_.inRange(randomNumber,from, to)){
                recommendedGameId = id;
                break;
            }
        }
        return recommendedGameId;
    }

    private async getRanges(){
        const games = await this.gameRepository.getWeights();

        const lastGames = (await this.gameHistoryRepository.getHistory(1))
            .map((gh) => gh.gameId);
        for(const game of games){
            if(lastGames.includes(game.id)){
                game.finalWeight = 0;
            }
        }

        const weightSum = games.reduce((acc, game,) => acc + game.finalWeight, 0);

        let ranges: Range[] = [];
        let curSum = 0;
        for(const {id, finalWeight} of games){
            ranges.push({id, from: curSum/weightSum, to: (curSum+finalWeight)/weightSum})
            curSum += finalWeight;
        }
        return ranges;
    }


}
