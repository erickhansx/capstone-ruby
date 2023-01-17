CREATE TABLE "Author"(
    "id" INTEGER NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Author" ADD PRIMARY KEY("id");
CREATE TABLE "Genre"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Genre" ADD PRIMARY KEY("id");

CREATE TABLE "Label"(
    "id" BIGINT NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "color" VARCHAR(255) NOT NULL
);

ALTER TABLE
    "Label" ADD PRIMARY KEY("id");
CREATE TABLE "Book"(
    "id" BIGINT NOT NULL,
    "publisher" VARCHAR(255) NOT NULL,
    "cover_state" VARCHAR(255) NOT NULL,
    "publish_date" DATE NOT NULL,
    "archived" BOOLEAN NOT NULL,
    "label_id" INTEGER NOT NULL,
    "author_id" BIGINT NOT NULL,
    "source_id" BIGINT NOT NULL,
    "genre_id" BIGINT NOT NULL
);
ALTER TABLE
    "Book" ADD PRIMARY KEY("id");











CREATE TABLE "MusicAlbum"(
    "id" BIGINT NOT NULL,
    "publish_date" DATE NOT NULL,
    "on_spotify" BOOLEAN NOT NULL,
    "archived" BOOLEAN NOT NULL,
    "label_id" BIGINT NOT NULL,
    "genre_id" BIGINT NOT NULL,
    "author_id" BIGINT NOT NULL,
    "source_id" BIGINT NOT NULL
);
ALTER TABLE
    "MusicAlbum" ADD PRIMARY KEY("id");
CREATE TABLE "Movie"(
    "id" BIGINT NOT NULL,
    "silet" BOOLEAN NOT NULL,
    "archived" BOOLEAN NOT NULL,
    "published_date" DATE NOT NULL,
    "label_id" BIGINT NOT NULL,
    "author_id" BIGINT NOT NULL,
    "genre_id" BIGINT NOT NULL,
    "source_id" BIGINT NOT NULL
);
ALTER TABLE
    "Movie" ADD PRIMARY KEY("id");
CREATE TABLE "Source"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Source" ADD PRIMARY KEY("id");
CREATE TABLE "Game"(
    "id" BIGINT NOT NULL,
    "multiplayer" BOOLEAN NOT NULL,
    "archived" BOOLEAN NOT NULL,
    "last_played_at" DATE NOT NULL,
    "published_date" DATE NOT NULL,
    "label_id" BIGINT NOT NULL,
    "author_id" BIGINT NOT NULL,
    "source_id" BIGINT NOT NULL,
    "genre_id" BIGINT NOT NULL
);
ALTER TABLE
    "Game" ADD PRIMARY KEY("id");
ALTER TABLE
    "MusicAlbum" ADD CONSTRAINT "musicalbum_genre_id_foreign" FOREIGN KEY("genre_id") REFERENCES "Genre"("id");





    

ALTER TABLE
    "Movie" ADD CONSTRAINT "movie_genre_id_foreign" FOREIGN KEY("genre_id") REFERENCES "Genre"("id");
ALTER TABLE
    "Game" ADD CONSTRAINT "game_genre_id_foreign" FOREIGN KEY("genre_id") REFERENCES "Genre"("id");
ALTER TABLE
    "MusicAlbum" ADD CONSTRAINT "musicalbum_author_id_foreign" FOREIGN KEY("author_id") REFERENCES "Author"("id");
ALTER TABLE
    "Book" ADD CONSTRAINT "book_author_id_foreign" FOREIGN KEY("author_id") REFERENCES "Author"("id");
ALTER TABLE
    "Movie" ADD CONSTRAINT "movie_author_id_foreign" FOREIGN KEY("author_id") REFERENCES "Author"("id");
ALTER TABLE
    "Game" ADD CONSTRAINT "game_author_id_foreign" FOREIGN KEY("author_id") REFERENCES "Author"("id");







    

ALTER TABLE
    "MusicAlbum" ADD CONSTRAINT "musicalbum_source_id_foreign" FOREIGN KEY("source_id") REFERENCES "Source"("id");
ALTER TABLE
    "Book" ADD CONSTRAINT "book_source_id_foreign" FOREIGN KEY("source_id") REFERENCES "Source"("id");
ALTER TABLE
    "Movie" ADD CONSTRAINT "movie_source_id_foreign" FOREIGN KEY("source_id") REFERENCES "Source"("id");
ALTER TABLE
    "Game" ADD CONSTRAINT "game_source_id_foreign" FOREIGN KEY("source_id") REFERENCES "Source"("id");
