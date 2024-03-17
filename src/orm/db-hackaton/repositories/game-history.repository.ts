import {Injectable} from "@nestjs/common";
import {Repository} from "typeorm";
import {Game, GameHistory} from "../entities";
import {InjectRepository} from "@nestjs/typeorm";

@Injectable()
export class GameHistoryRepository extends Repository<GameHistory>{

    constructor(
        @InjectRepository(GameHistory)
            repository: Repository<GameHistory>
    ) {
        super(repository.target, repository.manager, repository.queryRunner);
    }

    async getHistory(userId: number, count: number = 10): Promise<GameHistory[]>{
        const queryBuilder = this.createQueryBuilder('gh');
        const query = queryBuilder
            .select('gh.user_id', 'userId')
            .addSelect('gh.game_id', 'gameId')
            .where('gh.user_id = :userId', {userId})
            .groupBy('gh.user_id, gh.game_id')
            .orderBy('MAX(gh.created_at)', 'DESC')
            .limit(count);
        return query.execute();

    }
}
