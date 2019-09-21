DROP DATABASE bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;
CREATE TABLE departments (
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(255) NOT NULL,
  over_head_costs INT NOT NULL,
  total_sales INT NOT NULL DEFAULT '0',

  PRIMARY KEY (department_id)
);

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(255) NOT NULL,
  department_id INT NOT NULL,
  price DECIMAL(7,2) NOT NULL,
  stock INT NOT NULL DEFAULT '1' ,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
      PRIMARY KEY (item_id)
);
 

ALTER TABLE products ADD COLUMN product_sales INT NOT NULL DEFAULT '1';



INSERT INTO bamazon_db.departments
(department_id,
department_name,
over_head_costs,
total_sales)
VALUES
(1,
"Home Theater",
5000 ,
0),(2,
"Computers",
30000.00 ,
0),(3,
"Appliances",
150000.00 ,
0),(4,
"Electronics",
20000.00 ,
0);


INSERT INTO bamazon_db.products
(item_id,
product_name,
department_id,
price,
stock)
VALUES
(1,"Samsung 70",1,1500,8),
(2,"Sony 90",1,2000,5),
(3,"Apple Macbook",2,1500,5),
(4,"Dell 200x",2 ,500,10),
(5,"Windows Surface",2,1300,7),
(6,"Toshiba 300p",2,800,4),
(7,"Oven",3,1000,3),
(8,"Refrigerator",3,3000,4),
(9,"Microwave",3,500,5),
(10,"Beats Headphones",4,300,15),
(11," Iphone Charger",4,30,19),
(12,"Mophie charger",4,100,8);
