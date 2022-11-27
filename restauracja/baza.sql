DROP DATABASE IF EXISTS baza; 
CREATE DATABASE baza CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE baza; 


CREATE TABLE lokale (    
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,    
    nazwa TEXT NOT NULL,    
    miasto TEXT NOT NULL,    
    ulica TEXT NOT NULL,    
    numer INT NOT NULL
);

CREATE TABLE dania (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    typ INT NOT NULL,
    nazwa TEXT NOT NULL,
    cena INT NOT NULL
);

CREATE TABLE rezerwacja (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nr_stolika INT, 
    data_rez DATE NOT NULL,
    liczba_osob INT NOT NULL,
    telefon TEXT NOT NULL
);

CREATE TABLE pracownicy (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    imie TEXT NOT NULL,
    nazwisko TEXT NOT NULL,
    stanowisko INT NOT NULL
);


INSERT INTO lokale(nazwa, miasto, ulica, numer)
VALUES('T.G Fridays', 'Warszawa', 'Jana Pawła II', 69), ('McDonald', 'Gdańsk', 'Balonowa', 7);

INSERT INTO dania(typ, nazwa, cena)
VALUES(2, 'zeberka w sosie BBQ', 35), (3, 'nachos', 14), (1, 'rosół', 17), (4, 'cola', 5);

INSERT INTO rezerwacja(nr_stolika, data_rez, liczba_osob, telefon)
VALUES(1, "2022-08-05", 6, '123123123'), ("2023-09-07", 10, '567567567'), (3, "2029-10-07", 15, '098098098');

INSERT INTO pracownicy(imie, nazwisko, stanowisko)
VALUES('Matuesz', 'Sniechowski', 4), ('Oskar', 'Kowalski', 3), ('Alicja', 'Pomocna', 2), ('Zuzia', 'Nowak', 1);

