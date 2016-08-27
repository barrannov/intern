CREATE DATABASE root;

USE root;
CREATE TABLE users
(
    ID INT(8) PRIMARY KEY NOT NULL,
    name VARCHAR(25),
    age INT(11),
    isAdmin BIT(1),
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO root.users (name, age, isAdmin) VALUES ('Emma', '15', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Noah', '19', TRUE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Olivia', '20', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Liam', '24', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Sophia', '20', TRUE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Mason', '23', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Isabella', '29', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Jacob', '17', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Ava', '17', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('William', '18', FALSE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Mia', '16', TRUE);
INSERT INTO root.users (name, age, isAdmin) VALUES ('Ethan', '14', FALSE);