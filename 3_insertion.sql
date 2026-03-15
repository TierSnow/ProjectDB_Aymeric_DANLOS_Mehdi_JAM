-- =========================================================
-- 1. Fill Author table (15 rows)
-- =========================================================
INSERT INTO Author (author_id, author_role, author_name) VALUES
(1, 'writer', 'Eiichiro Oda'),
(2, 'writer', 'Takashi Hashiguchi'),
(3, 'writer', 'Sumire Morohoshi'),
(4, 'artist', 'Kouji Seo'),
(5, 'duo', 'Takeshi Obata & Tsugumi Ohba'),
(6, 'writer', 'Naoki Urasawa'),
(7, 'artist', 'Akira Toriyama'),
(8, 'writer', 'Haruko Kumota'),
(9, 'writer', 'Masashi Kishimoto'),
(10, 'artist', 'Rumiko Takahashi'),
(11, 'writer', 'Hajime Isayama'),
(12, 'artist', 'Kentaro Yabuki'),
(13, 'writer', 'Kouji Seo'),
(14, 'duo', 'Hajime Isayama & Hiroshi Seko'),
(15, 'writer', 'Yoshihiro Togashi');

-- =========================================================
-- 2. Fill Editor table (15 rows)
-- =========================================================
INSERT INTO Editor (editor_id, editor_name) VALUES
(101, 'Shueisha Editorial Team'),
(102, 'Kodansha Editorial Team'),
(103, 'Shogakukan Editorial Team'),
(104, 'Akita Shoten Editorial Team'),
(105, 'Square Enix Editorial Team'),
(106, 'Hakusensha Editorial Team'),
(107, 'Futabasha Editorial Team'),
(108, 'Shueisha Digital'),
(109, 'Kodansha Digital'),
(110, 'Shogakukan Digital'),
(111, 'VIZ Media'),
(112, 'Crunchyroll Manga'),
(113, 'Panini Comics'),
(114, 'Glénat'),
(115, 'Yen Press');

-- =========================================================
-- 3. Fill Manga table (25 rows)
-- =========================================================
INSERT INTO Manga (manga_id, manga_title, manga_genre, manga_serial_start_date, manga_publication_schedule, manga_publi_status, manga_sales) VALUES
(201, 'ONE PIECE', 'Adventure', '1997-07-22', 'weekly', 'ongoing', 500000000),
(202, 'Sakamoto Days', 'Action', '2020-05-20', 'weekly', 'ongoing', 3000000),
(203, 'Akane-banashi', 'Historical', '2022-02-12', 'weekly', 'ongoing', 1500000),
(204, 'Blue Box', 'Romance', '2021-10-01', 'weekly', 'ongoing', 800000),
(205, 'The Elusive Samurai', 'Historical', '2022-09-15', 'weekly', 'ongoing', 1200000),
(206, 'Naruto', 'Action', '1999-09-21', 'weekly', 'near cancellation', 250000000),
(207, 'Bleach', 'Action', '2001-08-07', 'weekly', 'on hiatus', 120000000),
(208, 'Dragon Ball', 'Adventure', '1984-12-03', 'weekly', 'ongoing', 300000000),
(209, 'Death Note', 'Thriller', '2003-12-01', 'weekly', 'ongoing', 30000000),
(210, 'Hunter x Hunter', 'Adventure', '1998-03-03', 'weekly', 'on hiatus', 78000000),
(211, 'Attack on Titan', 'Action', '2009-09-09', 'weekly', 'on hiatus', 110000000),
(212, 'Chainsaw Man', 'Action', '2018-12-03', 'weekly', 'ongoing', 15000000),
(213, 'Spy x Family', 'Comedy', '2019-03-25', 'weekly', 'ongoing', 12000000),
(214, 'Demon Slayer', 'Adventure', '2016-02-15', 'weekly', 'ongoing', 150000000),
(215, 'Jujutsu Kaisen', 'Action', '2018-03-05', 'weekly', 'ongoing', 25000000),
(216, 'Tokyo Revengers', 'Action', '2017-03-01', 'weekly', 'ongoing', 8000000),
(217, 'Black Clover', 'Adventure', '2015-02-16', 'weekly', 'ongoing', 9000000),
(218, 'My Hero Academia', 'Action', '2014-07-07', 'weekly', 'ongoing', 75000000),
(219, 'Vinland Saga', 'Historical', '2005-04-14', 'weekly', 'ongoing', 5000000),
(220, 'Berserk', 'Dark Fantasy', '1989-08-25', 'irregular', 'on hiatus', 5000000),
(221, 'Claymore', 'Dark Fantasy', '2001-05-08', 'weekly', 'on hiatus', 2000000),
(222, 'Noragami', 'Adventure', '2010-12-06', 'weekly', 'ongoing', 3500000),
(223, 'Gintama', 'Comedy', '2004-12-08', 'weekly', 'on hiatus', 5500000),
(224, 'Food Wars', 'Cooking', '2012-11-26', 'weekly', 'ongoing', 6000000),
(225, 'Kaguya-sama: Love is War', 'Romance', '2015-05-19', 'weekly', 'ongoing', 9000000);

-- =========================================================
-- 4. Fill Chapter table (40+ rows, include the 5 examples)
-- =========================================================
INSERT INTO Chapter (chapter_id, chapter_pub_date, chapter_performance_rank, manga_id) VALUES
(301, '2026-01-10', 87, 201),
(302, '2026-01-17', 91, 202),
(303, '2026-01-12', 78, 203),
(304, '2026-01-15', 84, 204),
(305, '2026-01-20', 89, 205),
(306, '2026-01-22', 85, 206),
(307, '2026-01-23', 80, 207),
(308, '2026-01-24', 95, 208),
(309, '2026-01-25', 88, 209),
(310, '2026-01-26', 90, 210),
(311, '2026-01-27', 92, 211),
(312, '2026-01-28', 83, 212),
(313, '2026-01-29', 86, 213),
(314, '2026-01-30', 97, 214),
(315, '2026-02-01', 81, 215),
(316, '2026-02-02', 79, 216),
(317, '2026-02-03', 82, 217),
(318, '2026-02-04', 89, 218),
(319, '2026-02-05', 76, 219),
(320, '2026-02-06', 77, 220),
(321, '2026-02-07', 74, 221),
(322, '2026-02-08', 80, 222),
(323, '2026-02-09', 85, 223),
(324, '2026-02-10', 88, 224),
(325, '2026-02-11', 83, 225),
(326, '2026-02-12', 91, 201),
(327, '2026-02-13', 87, 202),
(328, '2026-02-14', 79, 203),
(329, '2026-02-15', 85, 204),
(330, '2026-02-16', 88, 205),
(331, '2026-02-17', 84, 206),
(332, '2026-02-18', 81, 207),
(333, '2026-02-19', 96, 208),
(334, '2026-02-20', 89, 209),
(335, '2026-02-21', 92, 210),
(336, '2026-02-22', 90, 211),
(337, '2026-02-23', 82, 212),
(338, '2026-02-24', 87, 213),
(339, '2026-02-25', 98, 214),
(340, '2026-02-26', 83, 215);

-- =========================================================
-- 5. Fill Campaign table (10 rows)
-- =========================================================
INSERT INTO Campaign (Campaign_ID, Campaign_description, Campaign_merchandising_category, manga_id) VALUES
(401, 'ONE PIECE 25th Anniversary', 'figurines', 201),
(402, 'Sakamoto Days Collector Edition', 'posters', 202),
(403, 'Akane-banashi Historical Merch', 'artbooks', 203),
(404, 'Blue Box Romance Merchandise', 'stationery', 204),
(405, 'The Elusive Samurai Special Edition', 'figurines', 205),
(406, 'Naruto Legacy Campaign', 'figurines', 206),
(407, 'Bleach Reprint Campaign', 'artbooks', 207),
(408, 'Dragon Ball Anniversary Merch', 'posters', 208),
(409, 'Death Note Limited Edition', 'figurines', 209),
(410, 'Hunter x Hunter Special', 'stationery', 210);

-- =========================================================
-- 6. Fill Writes table
-- =========================================================
INSERT INTO Writes (author_id, manga_id) VALUES
(1, 201),
(2, 202),
(3, 203),
(4, 204),
(5, 205),
(6, 206),
(7, 208),
(8, 204),
(9, 206),
(10, 207),
(11, 211),
(12, 212),
(13, 204),
(14, 211),
(15, 209);

-- =========================================================
-- 7. Fill Publishes table
-- =========================================================
INSERT INTO Publishes (manga_id, editor_id) VALUES
(201, 101),
(202, 102),
(203, 103),
(204, 104),
(205, 105),
(206, 101),
(207, 103),
(208, 101),
(209, 102),
(210, 103),
(211, 101),
(212, 102),
(213, 103),
(214, 101),
(215, 102),
(216, 103),
(217, 104),
(218, 101),
(219, 103),
(220, 104),
(221, 105),
(222, 103),
(223, 104),
(224, 102),
(225, 104);

-- =========================================================
-- 8. Fill Crossover table
-- =========================================================
INSERT INTO Crossover (manga_id_participants, manga_id_crossover_amount) VALUES
(201, 208),
(202, 212),
(203, 205),
(204, 225),
(206, 218),
(207, 209),
(208, 201),
(209, 207),
(210, 214),
(211, 218);
