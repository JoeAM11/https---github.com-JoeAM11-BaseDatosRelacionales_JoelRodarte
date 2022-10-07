DROP DATABASE IF EXISTS spotify_hits;
CREATE database spotify_hits; 
USE spotify_hits ; 
SHOW DATABASES

#### Eliminar Tablas ###############################

DROP TABLE IF EXISTS artist_origin;
DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS genre ;
DROP TABLE IF EXISTS subgenre;
DROP TABLE IF EXISTS song;
DROP TABLE IF EXISTS  artist; 

#################################################

#### CREAR TABLAS ###############################

CREATE TABLE artist ( 
	artist_id INT AUTO_INCREMENT PRIMARY KEY, 
    artist_name VARCHAR(100) -- Puede ser más pero por ahora lo dejaré en 100
);

CREATE TABLE artist_origin ( 
	continent_id INT AUTO_INCREMENT PRIMARY KEY, 
    continent_name VARCHAR(50), -- dificilmente más de 50
    country VARCHAR(50), -- dificilmente más de 50
    city VARCHAR(50),
    artist_origin INT,
    FOREIGN KEY (artist_origin) REFERENCES artist (artist_id)
);

CREATE TABLE song ( 
	song_id INT AUTO_INCREMENT PRIMARY KEY, 
    song_name VARCHAR(300),
    duration INT(10),
    explicit TINYINT,
    release_year INT(4),
    popularity INT(100),
	danceability Float(4),
    energy Float(5),
	song_key INT(2),
    loudness Float(5),
    song_mode TINYINT,
    speechiness Float(5),
    acousticness Float(8),
    instrumentalness Float(4),
    liveness Float(5),
    valence Float(6),
	tempo VARCHAR (50) ,
    -- song_weekdayRelease VARCHAR(5), NO lo incluire por ahora porque esta info no existe
    artist_song INT,
    FOREIGN KEY (artist_song) REFERENCES artist (artist_id)
);

CREATE TABLE album ( 
	album_id INT AUTO_INCREMENT PRIMARY KEY, 
    album_name VARCHAR(100),
    album_song INT,
    FOREIGN KEY (album_song) REFERENCES song (song_id)
);

CREATE TABLE genre ( 
	genre_id INT AUTO_INCREMENT PRIMARY KEY, 
    genre_name VARCHAR(100),
    genre_song INT,
    FOREIGN KEY (genre_song) REFERENCES song (song_id)
);

CREATE TABLE subgenre ( 
	subgenre_id INT AUTO_INCREMENT PRIMARY KEY, 
    subgenre_name VARCHAR(100),
    subgenre_song INT,
    FOREIGN KEY (subgenre_song) REFERENCES song (song_id)
);

/* en esta ocasion dejare fuera review
CREATE TABLE review ( 
	review_id INT AUTO_INCREMENT PRIMARY KEY, 
    review_name VARCHAR(5),
	review_song INT,
    FOREIGN KEY (review_song) REFERENCES song (song_id)
);
*/

#################################################

#### Insertar informacion ######################

INSERT INTO artist (artist_name) VALUES
	('Britney Spears'),
	('Faith Hill'),
	('Bon Jovi'),
	('*NSYNC'),
	('Sisqo'),
	('Eminem'),
	('Robbie Williams'),
	('Destinys Child'),
	('Modjo'),
	('Gigi DAgostino'),
	('Eiffel 65'),
	('Bomfunk MCs'),
	('Sting'),
	('Melanie C'),
	('Aaliyah'),
	('Anastacia'),
	('Alice Deejay'),
	('Gigi DAgostino'),
	('Dr. Dre'),
	('Linkin Park');

INSERT INTO song (song_name,duration,explicit,release_year,popularity,danceability,energy,song_key,loudness,song_mode,speechiness,acousticness,instrumentalness, liveness,valence,tempo,artist_song) VALUES 
    ('What You Know',189693,0,2010,0,0.55,0.753,6,-4.003,0,0.0407,0.000665,7.74E-06,0.0921,0.841,139.048,1),
    ('You re All I Have',273333,0,2006,35,0.467,0.921,2,-4.554,1,0.045,5.48E-05,0.0566,0.176,0.501,132.013,2),
	('Vertigo',193520,0,2004,64,0.416,0.819,9,-3.974,1,0.0613,0.000138,0.00108,0.147,0.632,140.083,3),
	('Sometimes You Cant Make It On Your Own',305080,0,2004,56,0.53,0.597,2,-5.652,1,0.0247,0.00275,0.473,0.105,0.346,96,4),
	('Black Horse And The Cherry Tree',172373,0,2005,64,0.748,0.786,4,-7.788,0,0.0641,0.328,0,0.34,0.917,104.833,5),
	('Suddenly I See',201706,0,2005,71,0.587,0.767,0,-5.713,1,0.0449,0.225,0,0.112,0.664,100.38,6),
	('I Wish I Was a Punk Rocker (with Flowers in My Hair)',151640,0,2006,61,0.7,0.465,4,-6.815,1,0.358,0.544,0,0.606,0.719,108.102,7),
	('Options',240081,1,2020,57,0.836,0.621,1,-4.684,0,0.0894,0.389,9.16E-05,0.104,0.762,101.993,8),
	('Mundian to Bach Ke',244666,0,2003,61,0.778,0.879,8,-4.951,0,0.0371,0.399,0.792,0.15,0.942,98.077,9),
	('Only Time',218546,0,2000,69,0.418,0.249,3,-13.744,1,0.0301,0.841,0.661,0.112,0.213,82.803,10),
	('The Ketchup Song (Aserejé) - Spanglish Version',213973,0,2002,66,0.607,0.923,1,-6.777,1,0.0948,0.0193,1.10E-06,0.0924,0.868,184.819,11),
	('Juju on That Beat (TZ Anthem)',144244,0,2016,57,0.807,0.887,1,-3.892,1,0.275,0.00381,0,0.391,0.78,160.517,12),
	('Crossroads - Radio Edit',188693,0,2012,40,0.661,0.746,4,-5.153,1,0.042,0.109,0,0.325,0.502,144.188,13),
	('Rude',224840,0,2014,80,0.773,0.758,1,-4.993,1,0.0381,0.0422,0,0.305,0.925,144.033,14),
	('Jai Ho! (You Are My Destiny',222400,0,2009,65,0.657,0.941,8,-3.919,0,0.061,0.0476,0,0.0797,0.879,136.202,15),
	('Cha Cha Slide - Hardino Mix',222146,0,2004,51,0.853,0.911,11,-6.722,0,0.125,0.0436,0.00571,0.287,0.802,131.012,16),
	('Somebody That I Used To Know',244884,0,2011,57,0.863,0.527,0,-6.896,1,0.0358,0.607,0.000168,0.107,0.674,129.054,17),
	('Let Me Think About It',151973,0,2012,43,0.762,0.754,0,-3.425,0,0.046,0.00022,0.0665,0.146,0.715,129.026,18),
	('Thunder in My Heart Again (Radio Edit)',189800,0,2005,46,0.679,0.922,2,-4.67,0,0.0294,0.000241,0.69,0.0697,0.806,129.016,19),
	('Amazing',265826,0,2004,57,0.805,0.754,10,-6.825,0,0.0394,0.0884,1.77E-06,0.117,0.88,128.429,20);

INSERT INTO album (album_name,album_song) VALUES
	('album_1',1),
    ('album_2',2),
    ('album_3',3),
    ('album_4',4),
    ('album_5',5),
    ('album_6',6),
    ('album_7',7),
    ('album_8',8),
    ('album_9',9),
    ('album_10',10),
    ('album_11',11),
    ('album_12',12),
    ('album_13',13),
    ('album_14',14),
    ('album_15',15),
    ('album_16',16),
    ('album_17',17),
    ('album_18',18),
    ('album_19',19),
    ('album_20',20);
  

INSERT INTO genre (genre_name,genre_song) VALUES
	('genre_1',1),
    ('genre_2',2),
    ('genre_3',3),
    ('genre_4',4),
    ('genre_5',5),
    ('genre_6',6),
    ('genre_7',7),
    ('genre_8',8),
    ('genre_9',9),
    ('genre_10',10),
    ('genre_11',11),
    ('genre_12',12),
    ('genre_13',13),
    ('genre_14',14),
    ('genre_15',15),
    ('genre_16',16),
    ('genre_17',17),
    ('genre_18',18),
    ('genre_19',19),
    ('genre_20',20);
    
INSERT INTO subgenre (subgenre_name,subgenre_song) VALUES
	('subgenre_1',1),
    ('subgenre_2',2),
    ('subgenre_3',3),
    ('subgenre_4',4),
    ('subgenre_5',5),
    ('subgenre_6',6),
    ('subgenre_7',7),
    ('subgenre_8',8),
    ('subgenre_9',9),
    ('subgenre_10',10),
    ('subgenre_11',11),
    ('subgenre_12',12),
    ('subgenre_13',13),
    ('subgenre_14',14),
    ('subgenre_15',15),
    ('subgenre_16',16),
    ('subgenre_17',17),
    ('subgenre_18',18),
    ('subgenre_19',19),
    ('subgenre_20',20);

INSERT INTO artist_origin (continent_name,country,city,artist_origin) VALUES
	('con1','cou1','cit1',1),
	('con2','cou2','cit2',2),
    ('con3','cou3','cit3',3),
    ('con4','cou4','cit4',4),
    ('con5','cou5','cit5',5),
    ('con6','cou6','cit6',6),
    ('con7','cou7','cit7',7),
    ('con8','cou8','cit8',8),
    ('con9','cou9','cit9',9),
    ('con10','cou10','cit10',10),
    ('con11','cou11','cit11',11),
    ('con12','cou12','cit12',12),
    ('con13','cou13','cit13',13),
    ('con14','cou14','cit14',14),
    ('con15','cou15','cit15',15),
    ('con16','cou16','cit16',16),
    ('con17','cou17','cit17',17),
    ('con18','cou18','cit18',18),
    ('con19','cou19','cit19',19),
    ('con20','cou20','cit20',20);
    
### DESCRIBIR TABLAS ###########################

describe artist ;
describe artist_origin ;
describe song ;
describe album ;
describe genre ;
describe subgenre ;
describe review ;

#################################################

SELECT * FROM artist; 
SELECT * FROM song;
SELECT * FROM genre; 
SELECT * FROM subgenre;
SELECT * FROM artist; 
SELECT * FROM artist_origin;




