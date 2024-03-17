import {Pagination} from "../../types";


export type ProvidersFindAllDto = {

    name?: string;

    recommendation_rate?: number;

} & Pagination;
