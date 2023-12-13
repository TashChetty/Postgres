--Creating product table
CREATE TABLE product
(
    product_id bigserial PRIMARY KEY NOT NULL,
    description varchar (100) NOT NULL,
    price numeric (20,2) NOT NULL
);

--Insert into Product Table
INSERT INTO product (description, price)
VALUES ('Coke', 7.5),
       ('Doritos', 8.5),
       ('BarOne', 9.5),
       ('Fanta', 7.5),
       ('Juice', 10.5);
       
SELECT * FROM product;

--Creating Cart 
CREATE TABLE cart
(
    product_id bigint PRIMARY KEY NOT NULL,
    quantity bigint NOT NULL CHECK (quantity > -1)
     
);
