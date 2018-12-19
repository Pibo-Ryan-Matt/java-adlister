CREATE database adlister;
USE adlister;


DROP TABLE IF EXISTS ad;
DROP TABLE user;
DROP TABLE planet;
DROP TABLE ad_planet;
DROP TABLE category;

CREATE TABLE user (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) UNIQUE NOT NULL,
    email VARCHAR(240) UNIQUE NOT NULL,
    planet VARCHAR(240),
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ad (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(255) NOT NULL,
    planet TEXT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user (id)
);

CREATE TABLE planet (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(240) NOT NULL,
  url VARCHAR(240)
);

CREATE TABLE ad_planet (
    ad_id INT UNSIGNED NOT NULL,
    planet_id INT NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ad (id),
    FOREIGN KEY (planet_id) REFERENCES planet(id)
);

