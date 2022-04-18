USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(50),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('J cole','2014 Forest Hills Drive',2014,5000000,'Rap');

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('Eminem','an album',2000,100000,'Rap');

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('Kendrick Lamar','an album',2014,3000000,'Rap');

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('The Weeknd','Trilogy',2014,2000000,'Rap');

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('Childish Gambino','2nd album',2012,2000000,'Rap');

INSERT INTO albums(artist, name, release_date, sales, genre)
            VALUES('1st artist','their album',2005,1500000,'Rock'),
                  ('Linkin Park','Numb',2004,2000000,'Alternative'),
                  ('3rd artist','The album',2007,800000,'Rock');

SELECT * FROM albums WHERE release_date > 2010;

DESCRIBE albums;

SHOW CREATE TABLE albums;

