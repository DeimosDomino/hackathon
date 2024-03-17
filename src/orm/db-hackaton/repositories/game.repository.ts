import {Injectable} from "@nestjs/common";
import {Repository} from "typeorm";
import {Game} from "../entities/game.entity";
import {InjectRepository} from "@nestjs/typeorm";

interface GameWithFinalWeights{
    id: number;
    name: string;
    finalWeight: number;
}

@Injectable()
export class GameRepository extends Repository<Game>{

    constructor(
        @InjectRepository(Game)
            repository: Repository<Game>
    ) {
        super(repository.target, repository.manager, repository.queryRunner);
    }

    getWeights(): Promise<GameWithFinalWeights[]>{
        const queryBuilder = this.createQueryBuilder('g');
        const query = queryBuilder
            .select('g.id', 'id')
            .addSelect('g.weight * p.recommendation_rate', 'finalWeight')
            .leftJoin('provider', 'p', 'g.provider_id = p.id')
        return query.execute();
    }

}
