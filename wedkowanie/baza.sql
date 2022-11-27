DROP DATABASE IF EXISTS wedkowanie;
CREATE DATABASE wedkowanie;
USE wedkowanie;

CREATE TABLE Ryby (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa TEXT,
    wystepowanie TEXT,
    styl_zycia INT
);

CREATE TABLE Okres_ochronny (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Ryby_id INT,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id),
    od_miesiaca INT,
    do_miesiaca INT,
    wymiar_ochronny INT
);

CREATE TABLE Lowisko (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Ryby_id INT,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id),
    akwen TEXT,
    wojewodztwo TEXT,
    rodzaj INT
);



INSERT INTO `ryby`(`nazwa`, `wystepowanie`, `styl_zycia`) VALUES ('szczupak','jezioro', 2)
INSERT INTO `ryby`(`nazwa`, `wystepowanie`, `styl_zycia`) VALUES ('rekin','morze', 1)
INSERT INTO `ryby`(`nazwa`, `wystepowanie`, `styl_zycia`) VALUES ('wegorz','rzeki', 2)
INSERT INTO `ryby`(`nazwa`, `wystepowanie`, `styl_zycia`) VALUES ('delfin','morze', 2)
INSERT INTO `ryby`(`nazwa`, `wystepowanie`, `styl_zycia`) VALUES ('pirania','rzeki', 1)

INSERT INTO `okres_ochronny`(`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES (1, 1, 1, 12, 1)
INSERT INTO `okres_ochronny`(`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES (5, 5, 0, 0, 0)