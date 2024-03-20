import { Module } from "@nestjs/common";
import { RecommendationService } from "./recommendation.service";
import { CacheModule } from "@nestjs/cache-manager";
import {DbHackatonModule} from "../../orm/db-hackaton/db-hackaton.module";
import type { RedisClientOptions } from 'redis';
import {redisStore} from "cache-manager-redis-store";
import * as env from "env-var";
import {cacheConfig} from "../../config";


@Module({
    exports: [RecommendationService],
    imports: [CacheModule.register(<RedisClientOptions>cacheConfig), DbHackatonModule],
    providers: [RecommendationService]
})
export class RecommendationModule{}
