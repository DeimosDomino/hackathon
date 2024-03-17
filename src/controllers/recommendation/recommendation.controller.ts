import {Controller, Get, Inject} from '@nestjs/common';
import {RecommendationService} from "../../services/recomendation";


@Controller()
export class RecommendationController {
    @Inject(RecommendationService) private recommendationService: RecommendationService;
    constructor() {}

    @Get('/recommend')
    async recommend(){
        return await this.recommendationService.recommendGame();
    }


}
