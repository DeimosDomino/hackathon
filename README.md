
### POST `/recommend`
Получение случайной игры

### Пример ответа
```
[
    {
        "id": "62",
        "name": "European Roulette",
        "weight": 1,
        "providerId": "2856",
        "config": {
            "url": "https://game.igramba.com/siteng/gisgame?game_uuid=068fd44a3ce6e20d4ed2c490bbed08bed5bdaec3",
            "image": "https://staging.slotegrator.com/api/index.php/image/get?hash=068fd44a3ce6e20d4ed2c490bbed08bed5bdaec3.png",
            "expUsing": null,
            "has_lobby": 0,
            "dimensions": {},
            "aspect_ratio": "16:9",
            "wagerPercent": 100,
            "concatBetsWins": null
        }
    }
]
```

### GET `/game`
Получение игр 

#### Параметры запроса:
| Параметр     | Тип             | Обязательность | Описание                                                    |
|--------------|-----------------| --- |-------------------------------------------------------------|
| `page`       | number          |-| Номер требуемой страницы                                    |
| `per_page`   | number          |-| Количество элементов на странице                            |
| `sort_kind`  | 'asc' \| 'desc' |-| Тип сортировки результата                                   |
| `sort`       | string          |-| Название поля, по которому необходимо произвести сортировку |
| `name`       | string          |-| Название                                                    |
| `weight`     | number          |-| Вес                                                         |
| `providerId` | nubmer          |-| ID провайдера                                               |

#### Пример ответа
```
{
    "page": 1,
    "count": 99,
    "rows": [
        {
            "id": "100",
            "name": "4 of a King",
            "weight": 1,
            "providerId": "507138",
            "config": {
                "url": "https://game.igramba.com/siteng/gisgame?game_uuid=94ca17909c6d9b94d0902cbdf186ad4dcd598a28",
                "type": "slots",
                "image": "https://staging.slotegrator.com/api/images/games/Endorphina/079430eee333d319e4e2f8d99c3fa10c.png",
                "provider": "Endorphina",
                "has_lobby": 0,
                "is_mobile": 1,
                "dimensions": [],
                "technology": "HTML5",
                "aspect_ratio": "16:9",
                "wagerPercent": 100
            },
            "provider": {
                "id": "507138",
                "name": "test",
                "recommendationRate": 1
            }
        }
    ]
}
```

### GET `/game/:id`
Получение игр по ID

#### Пример ответа
``` 
{
    "id": "62",
    "name": "European Roulette",
    "weight": 1,
    "providerId": "2856",
    "config": {
        "url": "https://game.igramba.com/siteng/gisgame?game_uuid=068fd44a3ce6e20d4ed2c490bbed08bed5bdaec3",
        "image": "https://staging.slotegrator.com/api/index.php/image/get?hash=068fd44a3ce6e20d4ed2c490bbed08bed5bdaec3.png",
        "expUsing": null,
        "has_lobby": 0,
        "dimensions": {},
        "aspect_ratio": "16:9",
        "wagerPercent": 100,
        "concatBetsWins": null
    }
}
```


### PUT `/game/:id/weight`
Обновление веса игры

| Параметр | Тип             | Обязательность | Описание  |
|----------|-----------------|----------------|-----------|
| `weight` | number          | +              | Новый вес |

#### Пример ответа
``` 
{
    "id": "62",
    "name": "European Roulette",
    "weight": 1,
    "providerId": "2856",
    "config": {
        "url": "https://game.igramba.com/siteng/gisgame?game_uuid=068fd44a3ce6e20d4ed2c490bbed08bed5bdaec3",
        "image": "https://staging.slotegrator.com/api/index.php/image/get?hash=068fd44a3ce6e20d4ed2c490bbed08bed5bdaec3.png",
        "expUsing": null,
        "has_lobby": 0,
        "dimensions": {},
        "aspect_ratio": "16:9",
        "wagerPercent": 100,
        "concatBetsWins": null
    }
}
```


### GET `/provider`
Получение провайдеров

#### Параметры запроса:
| Параметр              | Тип             | Обязательность | Описание                                                    |
|-----------------------|-----------------| --- |-------------------------------------------------------------|
| `page`                | number          |-| Номер требуемой страницы                                    |
| `per_page`            | number          |-| Количество элементов на странице                            |
| `sort_kind`           | 'asc' \| 'desc' |-| Тип сортировки результата                                   |
| `sort`                | string          |-| Название поля, по которому необходимо произвести сортировку |
| `name`                | string          |-| Название                                                    |
| `recommendation_rate` | number          |-| Коэффициент провайдера                                      |

#### Пример ответа
``` 
{
    "page": 1,
    "count": 93,
    "rows": [
        {
            "id": "507191",
            "name": "SuperlottoSlots",
            "recommendationRate": 1.5
        }
    ]
}
```

### GET `/provider/:id`
Получение игр по ID

#### Пример ответа
``` 
{
    "id": "507191",
    "name": "SuperlottoSlots",
    "recommendationRate": 1.5
}
```

### PUT `/provider/:id/rate`
Обновление коэффициента провайдера

| Параметр              | Тип             | Обязательность | Описание          |
|-----------------------|-----------------|----------------|-------------------|
| `recommendation_rate` | number          | +              | Новый коэффициент |

#### Пример ответа
``` 
{
    "id": "507191",
    "name": "SuperlottoSlots",
    "recommendationRate": 1.5
}
```

### GET `/game_history`
Получение истории игр

#### Параметры запроса:
| Параметр    | Тип             | Обязательность | Описание                                                    |
|-------------|-----------------| --- |-------------------------------------------------------------|
| `page`      | number          |-| Номер требуемой страницы                                    |
| `per_page`  | number          |-| Количество элементов на странице                            |
| `sort_kind` | 'asc' \| 'desc' |-| Тип сортировки результата                                   |
| `sort`      | string          |-| Название поля, по которому необходимо произвести сортировку |
| `gameId`    | number          |-| Идентификатор игры                                          |
| `userId`    | number          |-| Идентификатор пользователя                                  |

#### Пример ответа
``` 
}
    "page": 1,
    "count": 13,
    "rows": [
        {
            "id": "13",
            "userId": "1",
            "gameId": "2",
            "createdAt": "2024-03-17T08:28:51.086Z"
        }
    ]
}
```

### GET `/game_history/:id`
Получение игр по ID

#### Пример ответа
``` 
{
    "id": "13",
    "userId": "1",
    "gameId": "2",
    "createdAt": "2024-03-17T08:28:51.086Z"
}
```

### POST `/game_history`
Создание истории пользователя

#### Параметры запроса:
| Параметр    | Тип             | Обязательность | Описание                                                    |
|-------------|-----------------| --- |-------------------------------------------------------------|
| `page`      | number          |-| Номер требуемой страницы                                    |
| `per_page`  | number          |-| Количество элементов на странице                            |
| `sort_kind` | 'asc' \| 'desc' |-| Тип сортировки результата                                   |
| `sort`      | string          |-| Название поля, по которому необходимо произвести сортировку |
| `gameId`    | number          |-| Идентификатор игры                                          |
| `userId`    | number          |-| Идентификатор пользователя                                  |

#### Пример ответа
``` 
{
    "id": "13",
    "userId": "1",
    "gameId": "2",
    "createdAt": "2024-03-17T08:28:51.086Z"
}
```

