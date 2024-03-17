import {Column, Entity, OneToMany, PrimaryColumn, PrimaryGeneratedColumn} from "typeorm";
import {Game} from "./game.entity";


@Entity('provider')
export class Provider {

    @PrimaryGeneratedColumn({type: 'bigint', name: 'id'})
    id: number;

    @Column('varchar', {name: 'name',nullable: false})
    name: string;

    @Column('float', {name: 'recommendation_rate', nullable: false, default: 1})
    recommendationRate: number

    @OneToMany(() => Game, (game) => game.provider)
    games: Game[]

}
