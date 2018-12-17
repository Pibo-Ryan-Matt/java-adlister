
INSERT INTO user (username, email, password) VALUES
      ('justin','justin.reich@gmail.com', 'password1'),
      ('matt', 'joe.blow@gmail.com', 'password2'),
      ('pibo', 'maximus@gmail.com', 'password3');

INSERT INTO ad (title, description, user_id, category) VALUES
      ('Cats food', 'Nutritious food for cats', 4, 'space'),
      ('Eye shadow', 'Best makeup ever', 5, 'space'),
      ('CAR parts for sale', 'Best parts for your vehicle!', 6, 'space'),
      ('Dog toys', 'Make your dog happy', 6, 'space'),
      ('Lipstick', 'Best shades of colors', 4, 'space'),
      ('Looking for hot singles?', 'Lonely, call 1-888-400-5555', 5, 'space');


select * from ad;

UPDATE user SET username = 'ryan', password = 'ryan', email = 'ryan@gmail.com' WHERE id = 4;