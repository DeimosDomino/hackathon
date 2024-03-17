import {Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryColumn, PrimaryGeneratedColumn} from "typeorm";
import {Provider} from "./provider.entity";
import {GameHistory} from "./game-history.entity";


@Entity('game')
export class Game {

    @PrimaryGeneratedColumn({type: 'bigint', name: 'id'})
    id: number;

    @Column('varchar', {name: 'name',nullable: false})
    name: string;

    @Column('float', {name: 'weight', nullable: false, default: 1})
    weight: number;

    @ManyToOne(() => Provider, (provider) => provider.games)
    @JoinColumn({name: 'provider_id', referencedColumnName: 'id'})
    provider: Provider

    @Column('bigint', {name: 'provider_id', nullable: false})
    providerId: number

    @Column('json', {name: 'config', nullable: true})
    config?: any

    @OneToMany(() => GameHistory, (gh) => gh.game)
    gameHistories: GameHistory[]
}
