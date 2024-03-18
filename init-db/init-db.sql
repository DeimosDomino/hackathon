create user hackaton_user;

create table provider
(
    id                  bigint                                         not null
        constraint "PK_6ab2f66d8987bf1bfdd6136a2d5"
            primary key,
    name                varchar                                        not null,
    recommendation_rate double precision default '1'::double precision not null
);

alter table provider
    owner to hackaton_user;

create table "user"
(
    id   bigint  not null
        constraint "PK_cace4a159ff9f2512dd42373760"
            primary key,
    name varchar not null
);

alter table "user"
    owner to hackaton_user;


INSERT INTO public."user" (id, name) VALUES (1, 'Test Testov');

INSERT INTO public.provider (id, name, recommendation_rate) VALUES (1, 'Spribe', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (2, 'Thunderkick', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (3, 'OneXTwoNetwork', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (4, 'NetEnt', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (5, 'PariPlay', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (6, 'Fugaso', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (7, 'Leander', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (8, 'Play n GO', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (9, 'EGTInteractive', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (10, 'NoLimitCity', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (11, 'RedRake', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (12, 'PushGaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (13, 'MrSlotty', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (14, 'Platipus', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (547, 'Microgaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (550, 'Habanero', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (783, 'Spinomenal', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (2240, 'Booongo', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (2295, 'Dlv', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (2856, 'Blueprint', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (2860, 'Foxium', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (4782, 'Lightning Box', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (5096, 'Quickspin', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (5124, 'Playson', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (5221, 'Igrosoft', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (5509, 'Betgames', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (155349, 'ConceptGaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (157025, 'XProgaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (157127, 'Tomhorn', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (157800, 'Kiron', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (169997, 'GameArt', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (175895, 'Amatic', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (176827, 'Endorphina', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (223299, 'JFTW', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (223511, 'ELK', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (223552, 'ReelNRG', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (225891, 'BGaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (225945, 'Big Time Gaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (226467, 'CasinoTechnology', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (227295, 'TripleCherry', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (227328, 'Truelab', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (229344, 'Wazdan', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (229366, 'Rabcat', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (231144, 'Gamzix', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (231848, 'RevolverGaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (231849, 'PlayTech', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (231850, 'Betsolutions', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (234310, 'Ganapati', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (234407, 'Red Tiger Slot', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (299663, 'Yggdrasil', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (299763, 'NetGame', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (299814, 'Evoplay', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (299975, 'BoomingGames', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (341894, 'Evolution2', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (341988, 'ISoftBet', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (341994, 'PragmaticPlay', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (351761, 'OneTouch', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (351806, 'Ezugi', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (351879, 'Spinmatic', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (480865, 'Playson Premium', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507138, 'test', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507139, 'Mascot', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507140, 'TVBet', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507143, 'oddin', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507144, 'bet_soft', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507145, 'liw', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507146, 'hacksaw', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507147, 'Swintt', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507148, 'Stakelogic', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507149, 'digitain', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507160, 'Mancala gaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507161, 'AmigoGaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507162, 'Relax Gaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507164, 'Galaxsys', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507166, 'KA Gaming play', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507168, 'Aviatrix', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507169, 'Winfinity', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507171, 'PGSoft', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507173, 'Apollo', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507175, 'EvoOSS', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507176, 'Belatra', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507177, 'Edict', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507179, 'SuperlottoTV', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507180, 'FelixGaming', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507181, 'SuperlottoFast', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507182, 'Poggi play', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507183, 'Fazi', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507184, 'Caleta', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507185, 'SmartSoft', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507186, 'ZeusPlay', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507187, 'OnlyPlay', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507188, 'ElysiumStudios', 1);
INSERT INTO public.provider (id, name, recommendation_rate) VALUES (507191, 'SuperlottoSlots', 1.5);


create table game
(
    id          bigint            not null
        constraint "PK_352a30652cd352f552fef73dec5"
            primary key,
    name        varchar           not null,
    weight      double precision default 1 not null,
    provider_id bigint            not null
        constraint "FK_7e25b59d3d4012016f4646c0e27"
            references provider,
    config      json
);

alter table game
    owner to hackaton_user;

INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (5, 'Fu Cai Shen', 2240, '{"image": "https://masterpiecer-images.s3.yandex.net/c73cfe3b7ffe11ee881b5696910b1137:upscaled"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (9, 'Monkey 27', 169997, '{"image": "https://egt-digital.com/wp-content/uploads/2022/12/40ch496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (15, 'JOYS OF LIFE', 14, '{"image": "https://egt-digital.com/wp-content/uploads/2023/09/5-crown-hot_496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (12, 'Book Of Spells', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/07/10_action_diamonds.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (32, 'The Cup Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/10_super_fruits.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (58, 'Dancing Lions', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/clover_respoin.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (82, 'Madder Scientist', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-5dh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (84, 'Mata Hari: The Spy', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/x-ride-2.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (91, 'Imperial Dragon Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/sc496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (80, 'Fa-Fa Twins', 2240, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/sb496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (35, 'Bet-on-Poker', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-5dh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (41, 'Joker Poker', 507184, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/10bh496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (37, 'Ogre Empire', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/x-ride-2.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (22, 'More Gold Diggin', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/50hb496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (27, 'Baccarat', 157025, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-sc-bl-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (36, 'Divine Lotus Mobile', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-bh-spj-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (78, 'Deuces Wild 1 Hand Mobile', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-fh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (64, 'In Jazz', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/09/2o-dazzling-cash_496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (66, 'Convertus Aurum Mobile', 550, '{"image": "https://egt-digital.com/wp-content/uploads/2023/07/10_action_diamonds.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (63, 'Super Fortune Dragon Mobile', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/09/5-crown-hot_496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (50, 'Wild wild spin', 783, '{"image": "https://store-images.s-microsoft.com/image/apps.12280.13883470003746040.69c2265a-5473-4460-8ced-badfa44795ba.7ca38016-71cd-4459-b3af-60fe43f97be6?mode=scale&q=90&h=1080&w=1920"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (98, 'Spartans Legacy Mobile', 507138, '{"image": "https://avatars.mds.yandex.net/get-games/3006389/2a000001852c9e63bd03b7a949e69409b90e/orig"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (54, 'Lorelei''s Pearls Mobile', 176827, '{"image": "https://sun9-62.userapi.com/impg/9nK5zEGoHbrnXadDQu8ZAHGmdgkRT2rkhzBhaQ/73gjcy-qG1A.jpg?size=807x454&quality=96&sign=757d3be6538a0fe75c9e2baccf729be0&c_uniq_tag=1bNF7QzMk7WPKw3CIGq36eOYkEbFkHBVzEumyAFI1l8&type=album"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (70, 'Aces And Faces Mega Poker', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/50hb496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (57, 'Aces And Faces Poker', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/12/40ch496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (73, 'Panda''s Run', 2856, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/100sh6r496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (13, 'Super Keno', 14, '{"image": "https://egt-digital.com/wp-content/uploads/2023/08/5-dazzling-cash.jpg"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (72, 'Undine’s Deep Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/10_burning_clover.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (76, 'Jungle Jackpots', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-40-sh-bl-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (97, 'Tiger Heart Mobile', 169997, '{"image": "https://store-images.s-microsoft.com/image/apps.12280.13883470003746040.69c2265a-5473-4460-8ced-badfa44795ba.7ca38016-71cd-4459-b3af-60fe43f97be6?mode=scale&q=90&h=1080&w=1920"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (29, 'Baccarat Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-40-sh-bl-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (23, 'Mega Gems', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/uf-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (11, 'Wild Weather Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/uf-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (53, 'FRENZY DISCS: TWIN NUMBERS', 11, '{"image": "https://masterpiecer-images.s3.yandex.net/c73cfe3b7ffe11ee881b5696910b1137:upscaled"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (24, 'Sin City Nights', 14, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/10_burning_clover.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (10, 'Puppy Love Plus', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/clover_respoin.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (100, '4 of a King', 507138, '{"image": "https://masterpiecer-images.s3.yandex.net/c73cfe3b7ffe11ee881b5696910b1137:upscaled"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (16, 'Book of Egypt Mobile', 227328, '{"image": "https://egt-digital.com/wp-content/uploads/2023/09/2o-dazzling-cash_496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (88, 'Red Lights Mobile', 14, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/10bh496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (6, 'Book of Sun Mobile', 169997, '{"image": "https://sun9-62.userapi.com/impg/9nK5zEGoHbrnXadDQu8ZAHGmdgkRT2rkhzBhaQ/73gjcy-qG1A.jpg?size=807x454&quality=96&sign=757d3be6538a0fe75c9e2baccf729be0&c_uniq_tag=1bNF7QzMk7WPKw3CIGq36eOYkEbFkHBVzEumyAFI1l8&type=album"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (49, 'KIN HOUSE Mobile', 783, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/100sh496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (89, 'Baccarat Mini Mobile', 2, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/40cj496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (96, 'Monster Madness', 169997, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/100sh496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (38, 'Slotfather', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/clover_respoin.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (61, 'Dia De Los Muertos Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/08/5-dazzling-cash.jpg"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (33, 'Sky Barons', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/sb496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (65, '4 Winning Directions', 2856, '{"image": "https://egt-digital.com/wp-content/uploads/2023/07/27_fruit_ways.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (85, 'Pyramid Poker: Deuces Wild', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/clover_respoin.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (52, 'Frankenslot''s Monster', 507138, '{"image": "https://avatars.dzeninfra.ru/get-zen_doc/1898242/pub_5ff2aaebfe4e686f6ab4ba47_60d87897a487630a3f07e1e0/scale_1200"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (94, 'Riders of the Storm Mobile', 5124, '{"image": "https://avatars.dzeninfra.ru/get-zen_doc/1898242/pub_5ff2aaebfe4e686f6ab4ba47_60d87897a487630a3f07e1e0/scale_1200"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (75, 'Thunder of Olympus Mobile', 2856, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-sc-bl-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (90, 'Jin Chan''s Pond of Riches', 2856, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/30sf496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (77, 'Clover Riches Mobile', 550, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-bh-bl-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (92, 'Don Juan''s Peppers', 550, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/10cw496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (56, 'Power Keno', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/100bh496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (62, 'European Roulette', 2856, '{"image": "https://egt-digital.com/wp-content/uploads/2023/08/spooky-jack.jpg.jpg"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (31, 'Mamma Mia', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-fh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (87, 'Wolf Sierra Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/11/shining-dimond.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (48, 'Egyptian adventure', 2295, '{"image": "https://sun9-62.userapi.com/impg/9nK5zEGoHbrnXadDQu8ZAHGmdgkRT2rkhzBhaQ/73gjcy-qG1A.jpg?size=807x454&quality=96&sign=757d3be6538a0fe75c9e2baccf729be0&c_uniq_tag=1bNF7QzMk7WPKw3CIGq36eOYkEbFkHBVzEumyAFI1l8&type=album"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (19, 'Safari Sam', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/20sfbl-496x420-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (83, 'Double Poker', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-bh-spj-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (26, 'Baccarat Mobile', 157025, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-40bh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (60, 'Super Wild Diamonds', 176827, '{"image": "https://egt-digital.com/wp-content/uploads/2023/07/10_action_diamonds.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (86, 'Leprechaun''s Treasure', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/12/100sf496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (21, 'ROYAL JEWELS Mobile', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/20hb-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (40, 'Art of the Heist', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/11/shining-dimond.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (25, 'Legend of Atlantis Mobile', 550, '{"image": "https://egt-digital.com/wp-content/uploads/2023/03/100sh6r496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (95, 'Treasures of Tombs Hidden Gold', 157127, '{"image": "https://sun9-62.userapi.com/impg/9nK5zEGoHbrnXadDQu8ZAHGmdgkRT2rkhzBhaQ/73gjcy-qG1A.jpg?size=807x454&quality=96&sign=757d3be6538a0fe75c9e2baccf729be0&c_uniq_tag=1bNF7QzMk7WPKw3CIGq36eOYkEbFkHBVzEumyAFI1l8&type=album"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (55, '7 Bonus Up Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/40mc496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (93, 'Santa''s Village Mobile', 507138, '{"image": "https://masterpiecer-images.s3.yandex.net/c73cfe3b7ffe11ee881b5696910b1137:upscaled"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (43, 'Once Upon A Time', 2, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/30sf496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (34, 'The Vault Mobile', 155349, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-20sh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (99, 'Crypt of the Vampires', 507138, '{"image": "https://avatars.dzeninfra.ru/get-zen_doc/1898242/pub_5ff2aaebfe4e686f6ab4ba47_60d87897a487630a3f07e1e0/scale_1200"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (47, 'Well of Wonders', 783, '{"image": "https://avatars.dzeninfra.ru/get-zen_doc/1898242/pub_5ff2aaebfe4e686f6ab4ba47_60d87897a487630a3f07e1e0/scale_1200"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (68, 'Quick Bingo', 550, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/bhe-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (4, 'Rook''s Revenge', 2240, '{"image": "https://avatars.dzeninfra.ru/get-zen_doc/1898242/pub_5ff2aaebfe4e686f6ab4ba47_60d87897a487630a3f07e1e0/scale_1200"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (42, 'Slots Angels', 507184, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/40cj496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (3, 'Slotfather 2', 169997, '{"image": "https://avatars.mds.yandex.net/get-games/3006389/2a000001852c9e63bd03b7a949e69409b90e/orig"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (51, 'Demi Gods II Expanded Edition Mobile', 507138, '{"image": "https://avatars.mds.yandex.net/get-games/3006389/2a000001852c9e63bd03b7a949e69409b90e/orig"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (17, 'Magic Shoppe', 227328, '{"image": "https://egt-digital.com/wp-content/uploads/2023/07/27_fruit_ways.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (69, 'Ocean''s Call Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/20hb-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (44, 'Babushkas', 2295, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/sc496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (8, 'La Playa', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/100bh496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (74, 'Journey of the Gods', 2240, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-40bh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (18, 'Bar X Safe Cracker Megaways', 227328, '{"image": "https://egt-digital.com/wp-content/uploads/2023/07/10_action_diamonds.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (1, 'Casillero del Diablo', 2240, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/100sh496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (81, 'Thunder Zeus', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-20sh-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (30, 'Flaming Fruit', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2022/06/496x420-bh-bl-1.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (14, 'Safari Adventures Mobile', 227328, '{"image": "https://egt-digital.com/wp-content/uploads/2023/08/spooky-jack.jpg.jpg"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (7, 'A Night In Paris Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/40mc496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (39, 'Deuces And Joker Poker', 5124, '{"image": "https://egt-digital.com/wp-content/uploads/2022/12/100sf496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (101, 'asd', 2240, '{"image": "https://sun9-62.userapi.com/impg/9nK5zEGoHbrnXadDQu8ZAHGmdgkRT2rkhzBhaQ/73gjcy-qG1A.jpg?size=807x454&quality=96&sign=757d3be6538a0fe75c9e2baccf729be0&c_uniq_tag=1bNF7QzMk7WPKw3CIGq36eOYkEbFkHBVzEumyAFI1l8&type=album"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (79, 'Bingo', 507138, '{"image": "https://egt-digital.com/wp-content/uploads/2023/11/10_super_fruits.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (46, 'Scratch Card', 2, '{"image": "https://masterpiecer-images.s3.yandex.net/c73cfe3b7ffe11ee881b5696910b1137:upscaled"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (20, 'Sizable Win Mobile', 2295, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/bhe-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (67, 'Egyptian Dreams Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/20sfbl-496x420-bl.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (45, 'LUCKY SEVEN Mobile', 157127, '{"image": "https://egt-digital.com/wp-content/uploads/2022/10/10cw496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (71, 'Christmas Eve Mobile', 176827, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/uf-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (59, 'American Roulette', 2856, '{"image": "https://egt-digital.com/wp-content/uploads/2023/06/uf-496x420-cc.png"}', 1);
INSERT INTO public.game (id, name, provider_id, config, weight) VALUES (2, 'God''s Temple Mobile', 169997, '{"image": "https://store-images.s-microsoft.com/image/apps.12280.13883470003746040.69c2265a-5473-4460-8ced-badfa44795ba.7ca38016-71cd-4459-b3af-60fe43f97be6?mode=scale&q=90&h=1080&w=1920"}', 1);

create table game_history
(
    id         bigserial
        constraint "PK_0e74b90c56b815ed54e90a29f1a"
            primary key,
    created_at timestamp with time zone default '2024-03-17 08:28:51.086953+00'::timestamp with time zone not null,
    user_id    bigint                                                                                     not null
        constraint "FK_23b52151ea534c59dc15bd0dd12"
            references "user",
    game_id    bigint                                                                                     not null
        constraint "FK_d09df292c60e6f9438f84923343"
            references game
);

alter table game_history
    owner to hackaton_user;
