/*Conditions 1 : List mangas sorted by sales ; List distinct manga genres ; Find mangas with 1m <= sales <= 5m ; find mangaes with a weekly or seasonal schedule ; find mangas with title starting with "One"*/
SELECT manga_title, manga_sales
FROM Manga
ORDER BY manga_sales DESC;

SELECT DISTINCT manga_genre
FROM Manga;

SELECT manga_title, manga_sales
FROM Manga
WHERE manga_sales BETWEEN 1000000 AND 5000000;

SELECT manga_title, manga_publication_schedule
FROM Manga
WHERE manga_publication_schedule IN ('weekly','seasonal');

SELECT manga_title
FROM Manga
WHERE manga_title LIKE 'One%';

/*Conditions 2 : Average sales per genre ; Number of mangas per publication status ; Total sales per genre ; Editors managing more than one manga ; Mangas whose average chapter rank is above 70*/
SELECT manga_genre, AVG(manga_sales) AS avg_sales
FROM Manga
GROUP BY manga_genre;

SELECT manga_publi_status, COUNT(*) AS total_mangas
FROM Manga
GROUP BY manga_publi_status;

SELECT manga_genre, SUM(manga_sales) AS total_sales
FROM Manga
GROUP BY manga_genre;

SELECT editor_id, COUNT(manga_id) AS manga_count
FROM Publishes
GROUP BY editor_id
HAVING COUNT(manga_id) > 1;

SELECT manga_id, AVG(chapter_performance_rank) AS avg_rank
FROM Chapter
GROUP BY manga_id
HAVING AVG(chapter_performance_rank) > 70;

/*Conditions 3 : Authors and mangas they write ; Mangas and editors ; Campaigns and mangas ; Chapters and manga titles ; Crossovers*/
SELECT a.author_name, m.manga_title
FROM Author a
JOIN Writes w ON a.author_id = w.author_id
JOIN Manga m ON w.manga_id = m.manga_id;

SELECT m.manga_title, e.editor_name
FROM Manga m
JOIN Publishes p ON m.manga_id = p.manga_id
JOIN Editor e ON p.editor_id = e.editor_id;

SELECT m.manga_title, c.Campaign_description
FROM Manga m
JOIN Campaign c ON m.manga_id = c.manga_id;

SELECT m.manga_title, c.chapter_id, c.chapter_performance_rank
FROM Manga m
JOIN Chapter c ON m.manga_id = c.manga_id;

SELECT m1.manga_title AS manga_1, m2.manga_title AS manga_2
FROM Crossover c
JOIN Manga m1 ON c.manga_id_participants = m1.manga_id
JOIN Manga m2 ON c.manga_id_crossover_amount = m2.manga_id;

/*Conditions 4 : Mangas with sales higher than the average ; Authors with high (>5m) selling mangas ; Mangas without marketing campaigns ; Mangas with sales higher than all of the romance genre ; Mangas with chapters ranked in the top 10 */
SELECT manga_title, manga_sales
FROM Manga
WHERE manga_sales > (
    SELECT AVG(manga_sales)
    FROM Manga
);

SELECT author_name
FROM Author
WHERE author_id IN (
    SELECT author_id
    FROM Writes
    WHERE manga_id IN (
        SELECT manga_id
        FROM Manga
        WHERE manga_sales > 5000000
    )
);

SELECT manga_title
FROM Manga
WHERE manga_id NOT IN (
    SELECT manga_id
    FROM Campaign
);

SELECT manga_title
FROM Manga
WHERE manga_sales > ALL (
    SELECT manga_sales
    FROM Manga
    WHERE manga_genre = 'romance'
);

SELECT manga_title
FROM Manga m
WHERE EXISTS (
    SELECT *
    FROM Chapter c
    WHERE c.manga_id = m.manga_id
    AND c.chapter_performance_rank <= 10
);