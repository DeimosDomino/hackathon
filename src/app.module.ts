import { Module } from '@nestjs/common';
import { RecommendationController } from './controllers/recommendation/recommendation.controller';
import {RecommendationModule} from "./services/recomendation";
import {GameController, ProviderController} from "./controllers";
import {DbHackatonModule} from "./orm";
import {CacheModule} from "@nestjs/cache-manager";
import type {RedisClientOptions} from "redis";
import {redisStore} from "cache-manager-redis-store";
import {GameHistoryController} from "./controllers/game-history";
import * as env from "env-var";

@Module({
    imports: [RecommendationModule, DbHackatonModule,
        CacheModule.register(<RedisClientOptions>{
            store: redisStore,
            socket: {
                host: env.get('REDIS_HOST').default('localhost').asString(),
                port: env.get('REDIS_PORT').default(6379).asPortNumber(),
            },
            ttl: 10 * 60
        })],
    controllers: [RecommendationController, GameController, ProviderController, GameHistoryController],
    providers: [],
})
export class AppModule {}
