DROP TABLE IF EXISTS "book";
DROP TABLE IF EXISTS "author";
DROP TABLE IF EXISTS "account";

CREATE TABLE "account" (
	"id" SERIAL PRIMARY KEY,
	"login" VARCHAR(50) UNIQUE,
	"password" VARCHAR(128),
	"role" VARCHAR(50)
);

CREATE TABLE "author" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(50)
);

CREATE TABLE "book" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(50),
	"author_id" INTEGER REFERENCES "author"(id) ON DELETE CASCADE
);

INSERT INTO "author" ("name") VALUES ('Pushkin');
INSERT INTO "author" ("name") VALUES ('Dostoevsky');
INSERT INTO "author" ("name") VALUES ('Tolstoy');
INSERT INTO "author" ("name") VALUES ('Lermontov');

INSERT INTO "book" ("name", "author_id") VALUES ('Evgeny Onegin', 1);
INSERT INTO "book" ("name", "author_id") VALUES ('Captains daughter', 1);
INSERT INTO "book" ("name", "author_id") VALUES ('Crime and punishment', 2);
INSERT INTO "book" ("name", "author_id") VALUES ('The Devils', 2);


INSERT INTO "account" ("login", "password", "role") VALUES ('login', '$2a$12$9xLOy8Xw3.3.V.CEkacpguZy1Q0sTREd9QgT3L5twFLpUvN8KpdjG	', 'USER');
INSERT INTO "account" ("login", "password", "role") VALUES ('user', '$2a$12$q9h/buXt2bxoaH0Llm4DKeBZoNOIf9/ZfKRuM33nJdn6mCN.gfEfa', 'USER');
INSERT INTO "account" ("login", "password", "role") VALUES ('123', '$2a$12$m8AQ8YnqSBb3keBAIaczF.wo4VD1fviepIVEPjVFgUeJWk.I59AVK', 'USER');
INSERT INTO "account" ("login", "password", "role") VALUES ('qwerty', '$2a$12$RlXacIw.Z64xCS1oIDWrc.zVQPgGkRaZ8jgyUJBt4zzY3DSeSHJce', 'USER');



select * from "author";
select * from "book";


