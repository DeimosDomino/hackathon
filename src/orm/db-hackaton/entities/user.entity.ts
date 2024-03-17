import {Column, Entity, JoinColumn, OneToMany, PrimaryColumn, PrimaryGeneratedColumn} from "typeorm";
import {GameHistory} from "./game-history.entity";

@Entity('user')
export class User {

    @PrimaryGeneratedColumn({type: 'bigint', name: 'id'})
    id: number

    @Column('varchar', {name: 'name', nullable: false})
    name: string

    @OneToMany(() => GameHistory, (gh) => gh.user)
    gameHistories: GameHistory[]

}
