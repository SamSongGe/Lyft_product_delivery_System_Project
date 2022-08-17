/*Create database*/
CREATE DATABASE LYFT;

/*Create tables and setting keys*/
CREATE TABLE EMPLOYEE (
employee_ID int(100) NOT NULLAUTO_INCREMENT,
first_name varchar(60),
last_name varchar(60),
address varchar(100),
phone varchar(100),
manager_ID int(100),
PRIMARY KEY (employee_ID),
FOREIGN KEY (manager_ID) REFERENCES Employee(employee_ID)
);

CREATE TABLE DRIVER (
driver_ID int(100),
driver_rate int(100),
employee_ID int(100),
PRIMARY KEY (driver_ID),
FOREIGN KEY (employee_ID) REFERENCES Employee(employee_ID)
);

CREATE TABLE VEHICLE(
vin_ID varchar(100),
vehicle_type varchar(100),
driver_ID int(100),
PRIMARY KEY (vin_ID),
FOREIGN KEY (driver_ID) REFERENCES Driver(driver_ID)
);

CREATE TABLE CUSTOMER(
customer_ID int(100) NOT NULLAUTO_INCREMENT,
first_name varchar(60),
last_name varchar(60),
address varchar(100),
phone varchar(100),
PRIMARY KEY (customer_ID)
);

CREATE TABLE PAYMENT(
payment_ID int(100),
payment_type varchar(60),
card_account_number varchar(60),
payment_amount int(100),
tips int(100),
customer_ID int(100),
PRIMARY KEY (payment_ID),
FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID)
);

CREATE TABLE PICKUP_DESTINATION_ADDRESS(
pickup_address_destination_address_ID int(100),
unit int(40),
street varchar(100),
city varchar(100),
state varchar(100),
zip_code int (60),
country varchar(100),
customer_ID int(100) NOT NULL,
PRIMARY KEY (pickup_address_destination_address_ID),
FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID)
);

CREATE TABLE PRODUCT(
product_ID int(100),
product_price int(100),
product_type varchar(100),
PRIMARY KEY (product_ID)
);

/*supertyoe tables*/
CREATE TABLE RETAIL_STORE(
product_ID int(100),
product_name varchar(100),
store_name varchar(100),
FOREIGN KEY (product_ID) REFERENCES Product(product_ID)
);

CREATE TABLE RESTAURANT(
product_ID int(100),
restaurant_name varchar(100),
dish_name varchar(100),
FOREIGN KEY (product_ID) REFERENCES Product(product_ID)
);

CREATE TABLE PHARMACY(
product_ID int(100),
pharmacy_name varchar(100),
medicine_name varchar(100),
FOREIGN KEY (product_ID) REFERENCES Product(product_ID)
);

CREATE TABLE CAR_DEALERSHIP(
product_ID int(100),
dealership_name varchar(100),
component_name varchar(100),
FOREIGN KEY (product_ID) REFERENCES Product(product_ID)
);

/*main tables*/
CREATE TABLE TRIP (
trip_ID int(100) NOT NULL,
trip_date date,
trip_time time,
trip_wait_time varchar(50),
pickup_address_ID int(100),
destination_address_ID int(100),
customer_ID int(100) NOT NULL,
driver_ID int(100) NOT NULL,
payment_ID int(100) NOT NULL,
PRIMARY KEY (trip_ID),
FOREIGN KEY (pickup_address_ID) REFERENCES
PICKUP_DESTINATION_ADDRESS(pickup_address_destination_address_ID),
FOREIGN KEY (destination_address_ID) REFERENCES
PICKUP_DESTINATION_ADDRESS(pickup_address_destination_address_ID),
FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID),
FOREIGN KEY (driver_ID) REFERENCES Driver(driver_ID),
FOREIGN KEY (payment_ID) REFERENCES Payment(payment_ID)
);

CREATE TABLE ORDER_DETAIL(
trip_ID int(100),
product_ID int(100),
quantity int(100),
discount int(100),
CONSTRAINT PK_Order PRIMARY KEY (trip_ID, product_ID),
FOREIGN KEY (trip_ID) REFERENCES Trip(trip_ID),
FOREIGN KEY (product_ID) REFERENCES Product(product_ID));
