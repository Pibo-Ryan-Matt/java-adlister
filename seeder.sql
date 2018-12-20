
INSERT INTO user (username, email, password) VALUES
      ('justin','justin.reich@gmail.com', 'password1'),
      ('matt', 'joe.blow@gmail.com', 'password2'),
      ('pibo', 'maximus@gmail.com', 'password3');

INSERT INTO ad (title, description, user_id, category) VALUES
      ('Cats food', 'Nutritious food for cats', 1, 'Space Item'),
      ('Eye shadow', 'Best makeup ever', 1, 'Space Item'),
      ('CAR parts for sale', 'Best parts for your vehicle!', 3, 'Space Vehicle'),
      ('Dog toys', 'Make your dog happy', 2, 'Space Item'),
      ('Lipstick', 'Best shades of colors', 2, 'Space Item'),
      ('Looking for hot singles?', 'Lonely, call 1-888-400-5555', 2, 'Space Jobs');

INSERT INTO planet (name, url) VALUES
       ('Jupiter', 'http://pluspng.com/img-png/jupiter-planet-png-file-jupiter-transparent-png-779.png'),
       ('Mercury', 'http://wiki.bacterialtakeover.com/images/4/41/Mercury.png'),
       ('Uranus', 'https://vignette.wikia.nocookie.net/diepio/images/6/6d/Uranus_spacepedia.png/revision/latest?cb=20180601142434'),
       ('Venus', 'https://vignette.wikia.nocookie.net/spongebob/images/f/f4/3D_Venus.png/revision/latest?cb=20181125160841'),
       ('Mars', 'https://vignette.wikia.nocookie.net/diepio/images/0/0e/Mars_spacepedia.png/revision/latest?cb=20180601141159'),
       ('Neptune', 'https://upload.wikimedia.org/wikipedia/commons/d/da/3D_Neptune.png');

select * from ad;

UPDATE user SET username = 'ryan', password = 'ryan', email = 'ryan@gmail.com' WHERE id = 4;

INSERT INTO ad_planet (planet_id, ad_id) VALUES (1, 8);

SELECT name
FROM planet
WHERE id in (
    select planet_id
    from ad_planet
    WHERE ad_id in (
      select id
      from ad
      WHERE title = 'Space Stuff for Sale'
        )
    );