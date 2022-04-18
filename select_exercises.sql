USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date From albums Where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT name FROM albums WHERE release_date >= 1990 && albums.release_date < 2000;

SELECT name FROM albums WHERE sales < 20000000;

SELECT name FROM albums WHERE genre = 'Rock';