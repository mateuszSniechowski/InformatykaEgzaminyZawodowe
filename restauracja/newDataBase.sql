CREATE DATABASE newDataBase CHARACTER SET utf8mb4_polish_ci;
USE newDataBase; 

CREATE TABLE Restaurant (
    id INT NOT NULL AUTO_INCREMENT,
    nazwa TEXT VARCHAR(50) NOT NULL,
    city TEXT VARCHAR(50) NOT NULL,
    adres TEXT VARCHAR(100) NOT NULL, 
    kod_pocztowy INT VARCHAR(6) NOT NULL,
);

CREATE TABLE Restaurant_Employees (
    restaurant_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
);

CREATE TABLE Employee (
    id INT NOT NULL AUTO_INCREMENT,
    nazwa TEXT VARCHAR(60) NOT NULL,
    surname TEXT VARCHAR(50) NOT NULL,
    restaurant_id FOREIGN KEY REFERENCES Restaurant_Employees(restaurant_id),
    Pesel INT VARCHAR(11) NOT NULL,
);

CREATE TABLE Roles (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nazwa TEXT VARCHAR(50) NOT NULL, 
    role_id INT FOREIGN KEY REFERENCES Restaurant_Employees(role_id),
), 

CREATE TABLE Reservation (
    id NOT NULL INT AUTO AUTO_INCREMENT,
    phone INT VARCHAR(12) NOT NULL,
    surname TEXT VARCHAR(50) NOT NULL,
    guests INT NOT NULL,
    dataa DATETIME NOT NULL,
    restaurant_id INT FOREIGN KEY REFERENCES Restaurant_Employees(restaurant_id),
),

CREATE TABLE Meal (
    id INT NOT NULL AUTO_INCREMENT,
    nazwa TEXT VARCHAR(50) NOT NULL,
    Meal_type FOREIGN KEY REFERENCES Meal_Type(Meal_type),
),

CREATE TABLE Meal_type (
    id INT NOT NULL AUTO_INCREMENT Primary key,
    nazwa TEXT VARCHAR(50) NOT NULL, 
),

