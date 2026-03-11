-- 2_contraintes.sql

-- 1. Ensure that chapter performance rank is between 1 and 100
ALTER TABLE Chapter
ADD CONSTRAINT chk_chapter_performance_rank
CHECK (chapter_performance_rank >= 1 AND chapter_performance_rank <= 100);

-- 2. Ensure manga sales are non-negative
ALTER TABLE Manga
ADD CONSTRAINT chk_manga_sales_non_negative
CHECK (manga_sales >= 0);

-- 3. Ensure manga publication schedule is only one of allowed values
ALTER TABLE Manga
ADD CONSTRAINT chk_manga_publication_schedule
CHECK (manga_publication_schedule IN ('weekly', 'irregular', 'seasonal'));

-- 4. Ensure manga publication status is valid
ALTER TABLE Manga
ADD CONSTRAINT chk_manga_publi_status
CHECK (manga_publi_status IN ('ongoing', 'on hiatus', 'near cancellation', 'newly launched'));

-- 5. Ensure author role is valid
ALTER TABLE Author
ADD CONSTRAINT chk_author_role
CHECK (author_role IN ('writer', 'artist', 'duo'));

-- 6. Ensure that Crossover participants are distinct
ALTER TABLE Crossover
ADD CONSTRAINT chk_crossover_distinct
CHECK (manga_id_participants <> manga_id_crossover_amount);