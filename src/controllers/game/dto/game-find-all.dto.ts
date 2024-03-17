import {Pagination} from "../../types";


export type GameFindAllDto = {

    name?: string;

    weight?: number;

    providerId?: number;

} & Pagination;
