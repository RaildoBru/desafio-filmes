CREATE TABLE films (
    id int AUTO_INCREMENT,
    id_film int,
    episode_id int,
    title varchar(255),
    opening_crawl varchar(1000),
    url varchar(100),
    director varchar(100),
    producer varchar(100),
    release_date varchar(50),
    PRIMARY KEY (id)
)

CREATE TABLE characters (
	id int AUTO_INCREMENT,
    id_character int,
	name varchar(255),
    height varchar(255),
    mass varchar(255),
    hair_color varchar(255),
    skin_color varchar(255),
    eye_color varchar(255),
    birth_year varchar(255),
    gender varchar(100),
    url varchar(100),
    PRIMARY KEY (id)
)

CREATE TABLE filmsCharacters (
	id_films int,
	id_characters int,
	foreign key (id_films) references films(id),
	foreign key (id_characters) references characters(id)
)

CREATE TABLE log (
    id int AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);