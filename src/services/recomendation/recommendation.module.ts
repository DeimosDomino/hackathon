import { Module } from "@nestjs/common";
import { RecommendationService } from "./recommendation.service";
import { CacheModule } from "@nestjs/cache-manager";
import {DbHackatonModule} from "../../orm/db-hackaton/db-hackaton.module";
import type { RedisClientOptions } from 'redis';
import {redisStore} from "cache-manager-redis-store";
import * as env from "env-var";


@Module({
    exports: [RecommendationService],
    imports: [CacheModule.register(<RedisClientOptions>{
        store: redisStore,
        socket: {
            host: env.get('REDIS_HOST').default('localhost').asString(),
            port: env.get('REDIS_PORT').default(6379).asPortNumber(),
        },
        ttl: 10 * 60,
    }), DbHackatonModule],
    providers: [RecommendationService]
})
export class RecommendationModule{}
