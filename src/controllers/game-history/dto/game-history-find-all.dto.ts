import {Pagination} from "../../types";


export type GameHistoryFindAllDto = {

    gameId?: number;

    userId?: number;

} & Pagination;
