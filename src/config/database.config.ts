import {TypeOrmModuleOptions} from "@nestjs/typeorm";
import * as env from "env-var";

export const databaseConfig: TypeOrmModuleOptions = {
    type: 'postgres',
    host: env.get('POSTGRES_HOST').default('localhost').asString(),
    port: env.get('POSTGTES_PORT').default(5432).asPortNumber(),
    username: env.get('POSTGRES_USER').default('hackaton_user').asString() || 'hackaton_user',
    password: env.get('POSTGRES_PASSWORD').default('hackaton').asString() || 'hackaton',
    database: env.get('POSTGRES_DB').default('db_hackaton').asString() || 'db_hackaton',
    synchronize: false
}
