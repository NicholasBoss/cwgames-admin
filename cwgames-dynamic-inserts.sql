USE cwgames;

-- Rating table inserts
INSERT INTO ratings
(ratingLevel)
VALUES
('E'),
('E10+'),
('T'),
('M'),
('NR');

-- Variables for ratings
SET @E = (SELECT rating_id FROM rating WHERE rating_level = 'E');
SET @E10 = (SELECT rating_id FROM rating WHERE rating_level = 'E10+');
SET @T = (SELECT rating_id FROM rating WHERE rating_level = 'T');
SET @M = (SELECT rating_id FROM rating WHERE rating_level = 'M');
SET @NR = (SELECT rating_id FROM rating WHERE rating_level = 'NR');

-- Game table inserts
INSERT INTO games
(gameTitle, releaseDate, ratingId)
VALUES
('Assassins Creed: Black Flag','2013-10-29',@M),
('Legend of Zelda: Twilight Princess','2006-11-19',@T),
('Halo: The Master Chief Collection','2019-12-03',@M),
('Undertale','2015-09-15',@E10),
('Spark the Electric Jester 3','2022-08-24',@NR),
('Legend of Zelda: Ocarina of Time','1998-11-21',@E),
('Scribblenauts Unmasked','2013-09-24',@E10),
('Octopath Traveller','2019-06-07',@T),
('Fossil Fighters','2009-08-10',@E),
('Fossil Fighters: Frontier','2014-02-27',@E10),
('Ori and the Will of the Wisps','2020-03-10',@E),
('Crash Bandicoot 1','1996-09-09',@E10)),
('Crash Bandicoot 2: Cortex Strikes Back','1997-10-31',@E10)),
('Crash Bandicoot 3: Warped','1998-10-31',@E10)),
('Uncharted 3: Drake''s Deception','2011-10-01',@T)),
('Tetris Evolution','2007-04-19',@E10)),
('Medal of Honor: Pacific Assault','2004-10-04',@T)),
('Elder Scrolls V: Skyrim Special Edition','2011-11-11',@M));

-- Set Variables for each game
SET @b_flag = (SELECT game_id
	FROM   game
    WHERE  game_title = 'Assassins Creed: Black Flag');

SET @twilight = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Legend of Zelda: Twilight Princess');
    
SET @halo = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Halo: The Master Chief Collection');
    
SET @undertale = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Undertale');
    
SET @spark = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Spark the Electric Jester 3');
    
SET @ocarina = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Legend of Zelda: Ocarina of Time');
    
SET @scrib = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Scribblenauts Unmasked');
    
SET @octo = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Octopath Traveller');
    
SET @ff = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Fossil Fighters');
    
SET @fff = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Fossil Fighters: Frontier');
    
SET @ori = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Ori and the Will of the Wisps');
    
SET @cb1 = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Crash Bandicoot 1');
    
SET @cb2 = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Crash Bandicoot 2: Cortex Strikes Back');
    
SET @cb3 = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Crash Bandicoot 3: Warped');
    
SET @uncharted = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Uncharted 3: Drake''s Deception');
    
SET @tetris = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Tetris Evolution');
    
SET @medal = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Medal of Honor: Pacific Assault');
    
SET @skyrim = (SELECT game_id
    FROM   game
    WHERE  game_title = 'Elder Scrolls V: Skyrim Special Edition');
    
-- Genre inserts
INSERT INTO genre
( genre_type )
VALUES
('Action'),
('Adventure'),
('Open World'),
('Story'),
('Role-playing'),
('Puzzle'),
('FPS'),
('Strategy'),
('Indie'),
('Casual'),
('Third-person Shooter'),
('Fantasy');

-- Set variables for genre
SET @action = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Action');
               
SET @adventure = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Adventure');
               
SET @open_world = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Open World');
               
SET @story = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Story');
               
SET @role_p = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Role-Playing');

SET @puzzle = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Puzzle');
               
SET @fps = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'FPS');
               
SET @strategy = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Strategy');
               
SET @indie = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Indie');

SET @casual = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Casual');
               
SET @tps = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Third-person Shooter');

SET @fantasy = (SELECT genre_id
               FROM   genre
               WHERE  genre_type = 'Fantasy');

-- Owner inserts
INSERT INTO owner
(first_name, last_name)
VALUES
('Nick','Boss'),
('Austin','Longhurst'),
('Christian','Mijangos');

-- Set variables for owner

SET @nb = (SELECT owner_id
           FROM   owner
           WHERE  first_name = 'Nick' AND last_name = 'Boss');

SET @al = (SELECT owner_id
           FROM   owner
           WHERE  first_name = 'Austin' AND last_name = 'Longhurst');
           
SET @cm = (SELECT owner_id
           FROM   owner
           WHERE  first_name = 'Christian' AND last_name = 'Mijangos');

-- Platform inserts
INSERT INTO platform
(platform_name)
VALUES
('PC'),
('Wii'),
('N64'),
('Playstation 1'),
('Playstation 3'),
('NDS'),
('3DS');

-- Set variables for platform

SET @pc = (SELECT platform_id
           FROM   platform
           WHERE  platform_name = 'PC');
           
SET @wii = (SELECT platform_id
           FROM   platform
           WHERE  platform_name = 'Wii');
           
SET @n64 = (SELECT platform_id
           FROM   platform
           WHERE  platform_name = 'N64');
           
SET @ps1 = (SELECT platform_id
           FROM   platform
           WHERE  platform_name = 'Playstation 1');
           
SET @ps3 = (SELECT platform_id
           FROM   platform
           WHERE  platform_name = 'Playstation 3');
           
SET @nds = (SELECT platform_id
           FROM   platform
           WHERE  platform_name = 'NDS');
           
SET @n3ds = (SELECT platform_id
           FROM   platform
           WHERE  platform_name = '3DS');

-- Company inserts
INSERT INTO company
(company_name, is_developer, is_publisher)
VALUES
('Ubisoft','y','n'),
('Nintendo','y','y'),
('343 Industries','y','n'),
('Bungee','y','n'),
('Xbox Game Studios','n','y'),
('Tobyfox','y','y'),
('Feperd Games','y','y'),
('Warner Bros. Interactive Media Entertainment','n','y'),
('Square Enix','n','y'),
('Moon Studios GmbH','y','n'),
('Sony','n','y'),
('Mass Media Inc','n','y'),
('Electronic Arts','y','y'),
('Bethesda','y','y');

-- Set variables for company

-- Ubisoft
SET @ubisoft = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Ubisoft');

-- Nintendo
SET @nintendo = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Nintendo');

-- 343 Industries
SET @ind343 = (SELECT company_id
                FROM   company
                WHERE  company_name = '343 Industries');
                
-- Bungee
SET @bungee = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Bungee');

-- Xbox Game Studios
SET @xboxgs = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Xbox Game Studios');

-- Tobyfox
SET @tobyfox = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Tobyfox');

-- Feperd Games
SET @feperd = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Feperd Games');

-- Warner Bros. Interactive Media Entertainment
SET @w_bros = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Warner Bros. Interactive Media Entertainment');

-- Square Enix
SET @sq_enix = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Square Enix');

-- Moon Studios GmbH
SET @moon_st = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Moon Studios GmbH');

-- Sony
SET @sony = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Sony');

-- Mass Media Inc
SET @mmi = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Mass Media Inc');

-- Electronic Arts
SET @ea = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Electronic Arts');

-- Bethesda
SET @bethesda = (SELECT company_id
                FROM   company
                WHERE  company_name = 'Bethesda');

-- Price inserts
INSERT INTO price
( price_value )
VALUES
(16.95),
(44.99),
(39.99),
(9.99),
(24.99),
(41.92),
(19.99),
(59.99),
(74.78),
(29.99),
(21.00),
(35.85),
(25.99);


-- gameCompany
INSERT INTO game_company
(game_id, company_id)
VALUES
(@b_flag, @ubisoft),
(@twilight, @nintendo),
(@halo, @ind343),
(@halo, @bungee),
(@halo, @xboxgs),
(@undertale, @tobyfox),
(@spark, @feperd),
(@ocarina, @nintendo),
(@scrib, @w_bros),
(@octo, @sq_enix),
(@ff, @nintendo),
(@fff, @nintendo),
(@ori, @moon_st),
(@ori, @xbox_gs),
(@cb1, @sony),
(@cb2, @sony),
(@cb3, @sony),
(@uncharted, @sony),
(@tetris, @mmi),
(@medal, @ea),
(@skyrim, @bethesda);

-- game_genre inserts
INSERT INTO game_genre
(game_id,genre_id)
VALUES
(@b_flag,@action),
(@b_flag,@adventure),
(@b_flag,@open_world),
(@b_flag,@story),
(@twilight,@action),
(@twilight,@adventure),
(@twilight,@role_p),
(@twilight,@puzzle),
(@halo,@fps),
(@halo,@story),
(@halo,@strategy),
(@halo,@action),
(@undertale,@indie),
(@undertale,@role_p),
(@spark,@action),
(@spark,@indie),
(@ocarina,@action),
(@ocarina,@adventure),
(@ocarina,@puzzle),
(@scrib,@action),
(@scrib,@adventure),
(@scrib,@casual),
(@scrib,@strategy),
(@octo,@role_p),
(@ff,@role_p),
(@fff,@role_p),
(@ori,@action),
(@ori,@adventure),
(@cb1,@action),
(@cb1,@adventure),
(@cb2,@action),
(@cb2,@adventure),
(@cb3,@action),
(@cb3,@adventure),
(@uncharted,@action),
(@uncharted,@adventure),
(@uncharted,@tps),
(@tetris,@puzzle),
(@medal,@fps),
(@skyrim,@action),
(@skyrim,@adventure),
(@skyrim,@role_p),
(@skyrim,@fantasy);

-- gamePlatform inserts
INSERT INTO game_platform
(game_id, platform_id, price_id, owner_id, has_played)
VALUES
(@b_flag,@pc,(SELECT price_id FROM price WHERE price_value = 16.95),@nb,'y'),
(@twilight,@wii,(SELECT price_id FROM price WHERE price_value = 44.99),@nb,'y'),
(@halo,@pc,(SELECT price_id FROM price WHERE price_value = 39.99),@nb,'y'),
(@undertale,@pc,(SELECT price_id FROM price WHERE price_value = 9.99),@al,'y'),
(@spark,@pc,(SELECT price_id FROM price WHERE price_value = 24.99),@al,'y'),
(@ocarina,@n64,(SELECT price_id FROM price WHERE price_value = 41.92),@nb,'y'),
(@scrib,@pc,(SELECT price_id FROM price WHERE price_value = 19.99),@al,'n'),
(@octo,@pc,(SELECT price_id FROM price WHERE price_value = 59.99),@al,'y'),
(@ff,@nds,(SELECT price_id FROM price WHERE price_value = 74.78),@al,'y'),
(@fff,@n3ds,(SELECT price_id FROM price WHERE price_value = 29.99),@al,'y'),
(@ori,@pc,(SELECT price_id FROM price WHERE price_value = 29.99),@nb,'n'),
(@cb1,@ps1,(SELECT price_id FROM price WHERE price_value = 19.99),@cm,'y'),
(@cb2,@ps1,(SELECT price_id FROM price WHERE price_value = 21.00),@cm,'y'),
(@cb3,@ps1,(SELECT price_id FROM price WHERE price_value = 21.00),@cm,'y'),
(@uncharted,@ps3,(SELECT price_id FROM price WHERE price_value = 35.85),@cm,'y'),
(@tetris,@ps3,(SELECT price_id FROM price WHERE price_value = 19.99),@cm,'y'),
(@medal,@pc,(SELECT price_id FROM price WHERE price_value = 25.99),@cm,'y'),
(@skyrim,@pc,(SELECT price_id FROM price WHERE price_value = 39.99),@nb,'y');
