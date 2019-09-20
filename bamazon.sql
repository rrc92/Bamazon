DROP DATABASE bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE product (
    id INT AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    department_name VARCHAR(255) NOT NULL,
    price VARCHAR(255) NOT NULL,
    stock_quantity VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

/*CREATE TABLE  (
    id INT AUTO_INCREMENT,
    car_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE parts (
    id INT AUTO_INCREMENT,
    part_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE person_cars (
    car_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    person_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person(id)
);

CREATE TABLE car_parts (
    car_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    part_id INT NOT NULL,
    FOREIGN KEY (part_id) REFERENCES parts(id)
);

INSERT INTO person (name) VALUES 
('steph curry'),  
('lionel messi'), 
('cristiano ronaldo');

INSERT INTO cars (car_name) VALUES 
('toyota highlander'), 
('bugati ceron'),
('alpha romero'),
('chevy cruise');

INSERT INTO parts (part_name) VALUES 
('wheel'),
('break'),
('spark plugs');

INSERT INTO person_cars (car_id, person_id) VALUES 
(1,1), 
(4,2),
(2,3),
(3,1),
(3,2);

INSERT INTO car_parts (car_id, part_id) VALUES 
(1,3), 
(2,2),
(2,1),
(3,2),
(3,3),
(3,1); */