import {Module} from "@nestjs/common";
import {TypeOrmModule} from "@nestjs/typeorm";
import {databaseConfig} from "../../config";
import {entities} from "./entities";
import {repositories} from "./repositories";


@Module({
    exports: [TypeOrmModule, ...repositories],
    imports: [
        TypeOrmModule.forRoot({...databaseConfig, entities}),
        TypeOrmModule.forFeature(entities),
    ],
    providers: [...repositories]
})
export class DbHackatonModule{}
