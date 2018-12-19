CREATE database adlister;
USE adlister;


DROP TABLE IF EXISTS ad;

CREATE TABLE user (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) UNIQUE NOT NULL,
    email VARCHAR(240) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ad (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(255) NOT NULL,
    picture TEXT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user (id)
);

# CREATE TABLE ad_category (
#     ad_id INTEGER UNSIGNED NOT NULL,
#     cat_id INTEGER UNSIGNED NOT NULL,
#     FOREIGN KEY (ad_id) REFERENCES ad (id),
#     FOREIGN KEY (cat_id) REFERENCES category(id)
# );


# CREATE TABLE category (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(255) NOT NULL,
#     PRIMARY KEY (id)
# );
