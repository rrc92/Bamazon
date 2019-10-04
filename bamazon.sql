DROP DATABASE BamazonCustomer_db;

CREATE DATABASE BamazonCustomer_db;

USE BamazonCustomer_db;
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



INSERT INTO BamazonCustomer_db.departments
(department_id,
department_name,
over_head_costs,
total_sales)
VALUES
(0100,
"Home Theater",
5000 ,
0),(0200,
"Computers",
30000.00 ,
0),(0300,
"Appliances",
150000.00 ,
0),(0400,
"Electronics",
20000.00 ,
0);


INSERT INTO BamazonCustomer_db.products
(item_id,
product_name,
department_id,
price,
stock)
VALUES
(0101,"Samsung 70",0100,1500,25),
(0102,"Sony 90",0100,2000,15),
(0203,"Apple Macbook",0200,1500,12),
(0204,"Dell 200x",0200 ,500,10),
(0205,"Windows Surface",0200,1300,7),
(0206,"Toshiba 300p",0200,800,21),
(0307,"Oven",0300,1000,5),
(0308,"Refrigerator",0300,3000,10),
(0309,"Microwave",0300,500,8),
(0410,"Beats Headphones",0400,300,15),
(0411," Iphone Charger",0400,30,19),
(0412,"Mophie charger",0400,100,12);
