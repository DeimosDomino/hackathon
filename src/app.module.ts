import { Module } from '@nestjs/common';
import { RecommendationController } from './controllers/recommendation/recommendation.controller';
import {RecommendationModule} from "./services/recomendation";
import {GameController, ProviderController} from "./controllers";
import {DbHackatonModule} from "./orm";
import {CacheModule} from "@nestjs/cache-manager";
import type {RedisClientOptions} from "redis";
import {GameHistoryController} from "./controllers/game-history";
import {cacheConfig} from "./config";

@Module({
    imports: [RecommendationModule, DbHackatonModule,
        CacheModule.register(<RedisClientOptions>cacheConfig)],
    controllers: [RecommendationController, GameController, ProviderController, GameHistoryController],
    providers: [],
})
export class AppModule {}
