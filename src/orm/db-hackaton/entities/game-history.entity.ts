import {User} from "./user.entity";
import {Column, Entity, JoinColumn, ManyToOne, OneToOne, PrimaryColumn, PrimaryGeneratedColumn} from "typeorm";
import {Game} from "./game.entity";

@Entity('game_history')
export class GameHistory {

    @PrimaryGeneratedColumn({type: 'bigint', name: 'id'})
    id: number

    @ManyToOne(() => User, (user) => user.gameHistories)
    @JoinColumn({name: 'user_id', referencedColumnName: 'id'})
    user: User;

    @Column('bigint', {name: 'user_id', nullable: false})
    userId: number

    @ManyToOne(() => Game, (game) => game.gameHistories)
    @JoinColumn({name: 'game_id', referencedColumnName: 'id'})
    game: Game;

    @Column('bigint', {name: 'game_id', nullable: false})
    gameId: number

    @Column('timestamptz', {name: 'created_at', default: 'now()'})
    createdAt: Date;

}
