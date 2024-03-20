import type {RedisClientOptions} from "redis";
import {redisStore} from "cache-manager-redis-store";
import * as env from "env-var";

export const cacheConfig = {
    store: redisStore,
    socket: {
        host: env.get('REDIS_HOST').default('localhost').asString(),
        port: env.get('REDIS_PORT').default(6379).asPortNumber(),
    },
}
