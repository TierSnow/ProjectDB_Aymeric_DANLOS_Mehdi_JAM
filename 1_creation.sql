CREATE TABLE Author(
   author_id INT,
   author_role VARCHAR(50),
   author_name VARCHAR(50),
   PRIMARY KEY(author_id)
);

CREATE TABLE Manga(
   manga_id INT,
   manga_title VARCHAR(50),
   manga_genre VARCHAR(50),
   manga_serial_start_date DATE,
   manga_publication_schedule VARCHAR(20),
   manga_publi_status VARCHAR(50),
   manga_sales INT,
   PRIMARY KEY(manga_id)
);

CREATE TABLE Chapter(
   chapter_id INT,
   chapter_pub_date VARCHAR(50),
   chapter_performance_rank DECIMAL(3,0),
   manga_id INT NOT NULL,
   PRIMARY KEY(chapter_id),
   FOREIGN KEY(manga_id) REFERENCES Manga(manga_id)
);

CREATE TABLE Editor(
   editor_id DECIMAL(10,0),
   editor_name VARCHAR(50),
   PRIMARY KEY(editor_id)
);

CREATE TABLE Campaign(
   Campaign_ID DECIMAL(10,0),
   Campaign_description VARCHAR(200),
   Campaign_merchandising_category VARCHAR(50),
   manga_id INT NOT NULL,
   PRIMARY KEY(Campaign_ID),
   FOREIGN KEY(manga_id) REFERENCES Manga(manga_id)
);

CREATE TABLE Writes(
   author_id INT,
   manga_id INT,
   PRIMARY KEY(author_id, manga_id),
   FOREIGN KEY(author_id) REFERENCES Author(author_id),
   FOREIGN KEY(manga_id) REFERENCES Manga(manga_id)
);

CREATE TABLE Publishes(
   manga_id INT,
   editor_id DECIMAL(10,0),
   PRIMARY KEY(manga_id, editor_id),
   FOREIGN KEY(manga_id) REFERENCES Manga(manga_id),
   FOREIGN KEY(editor_id) REFERENCES Editor(editor_id)
);

CREATE TABLE Crossover(
   manga_id_participants INT,
   manga_id_crossover_amount INT,
   PRIMARY KEY(manga_id_participants, manga_id_crossover_amount),
   FOREIGN KEY(manga_id_participants) REFERENCES Manga(manga_id),
   FOREIGN KEY(manga_id_crossover_amount) REFERENCES Manga(manga_id)
);
