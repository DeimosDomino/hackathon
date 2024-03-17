import {GameRepository} from "./game.repository";
import {GameHistoryRepository} from "./game-history.repository";

export * from './game.repository';
export * from './game-history.repository'
export const repositories = [
    GameRepository,
    GameHistoryRepository
]
