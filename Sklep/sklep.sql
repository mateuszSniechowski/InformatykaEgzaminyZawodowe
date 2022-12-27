DROP DATABASE IF EXISTS sklep;
CREATE DATABASE sklep;
USE sklep;

CREATE TABLE dostawcy(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(50),
    adres VARCHAR(50)
);

CREATE TABLE towary(
    id int PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(20) ,
    cena FLOAT,
    promocja TINYINT(1),
    idDostawcy int(11),
    FOREIGN KEY (idDostawcy) REFERENCES dostawcy(id)
);


INSERT INTO `towary`(`nazwa`, `cena`, `promocja`, `idDostawcy`) VALUES ("gumka", 5.99, 1, 1);
INSERT INTO `towary`(`nazwa`, `cena`, `promocja`, `idDostawcy`) VALUES ("zeszyt", 7.99, 0, 1);
INSERT INTO `towary`(`nazwa`, `cena`, `promocja`, `idDostawcy`) VALUES ("długopis", 2.5, 1, 2);
INSERT INTO `towary`(`nazwa`, `cena`, `promocja`, `idDostawcy`) VALUES ("ołówek", 1.99, 0, 2);
INSERT INTO `towary`(`nazwa`, `cena`, `promocja`, `idDostawcy`) VALUES ("cienkopis", 4.69, 0, 2);
INSERT INTO `towary`(`nazwa`, `cena`, `promocja`, `idDostawcy`) VALUES ("piórnik", 10.99, 1, 2);

INSERT INTO `dostawcy`(`nazwa`, `adres`) VALUES("Dostawca1", "Kopernika 05");
INSERT INTO `dostawcy`(`nazwa`, `adres`) VALUES("Dostawca2", "800-lecia");



