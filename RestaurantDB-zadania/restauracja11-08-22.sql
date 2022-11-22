

CREATE TABLE Restaurant (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nazwa TEXT NOT NULL,
    city TEXT NOT NULL,
    adres TEXT NOT NULL,
    kod_pocztowy INT NOT NULL
);

CREATE TABLE Employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name TEXT NOT NULL,
    surname TEXT NOT NULL,
    personal_id_number INT NOT NULL
);

CREATE TABLE Employee_position (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Employment (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    employee_position_id INT NOT NULL,
    FOREIGN KEY (employee_position_id) REFERENCES Employee_position(id),
    restaurant_id INT NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant (id)
);


CREATE TABLE Restaurant_Table (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    number_of_guests INT NOT NULL,
    restaurant_id INT NOT NULL, 
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);

CREATE TABLE Reservation (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    restaurant_table_id INT NOT NULL,
    FOREIGN KEY (restaurant_table_id) REFERENCES Restaurant_Table(id),
    phone_number VARCHAR(12) NOT NULL, 
    date DATE NOT NULL,
    number_of_guests INT NOT NULL
);


CREATE TABLE Meal_type (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(50) NOT NULL
);

CREATE TABLE Meal (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    meal_type_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id),
    price INT NOT NULL,
    meal_name VARCHAR(100),
    FOREIGN KEY (meal_type_id) REFERENCES Meal_Type(id)
);


