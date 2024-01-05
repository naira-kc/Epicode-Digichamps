-- Creazione della tabella DISCO
CREATE TABLE DISCO (
    NroSerie INT PRIMARY KEY,
    TitoloAlbum VARCHAR(255),
    Anno INT,
    Prezzo DECIMAL(10, 2)
);

-- Creazione della tabella ESECUZIONE
CREATE TABLE ESECUZIONE (
    CodiceReg INT PRIMARY KEY,
    TitoloCanzone VARCHAR(255),
    Anno INT,
    INDEX (TitoloCanzone)
);

-- Creazione della tabella CONTIENE
CREATE TABLE CONTIENE (
    NroSerieDisco INT,
    CodiceReg INT,
    NroProg INT,
    PRIMARY KEY (NroSerieDisco, CodiceReg, NroProg),
    FOREIGN KEY (NroSerieDisco) REFERENCES DISCO(NroSerie),
    FOREIGN KEY (CodiceReg) REFERENCES ESECUZIONE(CodiceReg)
);

-- Creazione della tabella AUTORE
CREATE TABLE AUTORE (
    Nome VARCHAR(255),
    TitoloCanzone VARCHAR(255),
    PRIMARY KEY (Nome, TitoloCanzone),
    FOREIGN KEY (TitoloCanzone) REFERENCES ESECUZIONE (TitoloCanzone)
);

-- Creazione della tabella CANTANTE
CREATE TABLE CANTANTE (
    NomeCantante VARCHAR(255),
    CodiceReg INT,
    PRIMARY KEY (NomeCantante, CodiceReg),
    FOREIGN KEY (CodiceReg) REFERENCES ESECUZIONE(CodiceReg)
);

-- Inserimento valori nella tabella DISCO
INSERT INTO DISCO (NroSerie, TitoloAlbum, Anno, Prezzo)
VALUES
    (4, 'Greatest Hits', 2005, 29.99),
    (5, 'Unplugged Sessions', 2018, 24.99),
    (6, 'Love Songs Collection', 2020, 19.99),
    (7, 'Rock Classics', 1990, 34.99),
    (8, 'Summer Vibes', 2021, 22.99),
    (9, 'Golden Oldies', 1985, 27.99),
    (10, 'Acoustic Bliss', 2015, 31.99),
    (11, 'Electronic Dreams', 2008, 26.99),
    (12, 'Jazz Fusion', 1980, 39.99),
    (13, 'Country Roads', 2003, 28.99);

-- Inserimento valori nella tabella ESECUZIONE
INSERT INTO ESECUZIONE (CodiceReg, TitoloCanzone, Anno)
VALUES
    (104, 'Lost in the City', 2014),
    (105, 'Moonlight Sonata', NULL),
    (106, 'Sunshine Groove', 2006),
    (107, 'Eternal Love', NULL),
    (108, 'Midnight Jazz', 2019),
    (109, 'Dancefloor Beats', 2001),
    (110, 'Retro Vibes', NULL),
    (111, 'Whispers in the Wind', 2017),
    (112, 'Summer Romance', NULL),
    (113, 'Mystical Journey', 2009);

-- Inserimento valori nella tabella CONTIENE
INSERT INTO CONTIENE (NroSerieDisco, CodiceReg, NroProg)
VALUES
    (4, 104, 1),
    (4, 105, 2),
    (5, 106, 1),
    (6, 107, 1),
    (7, 108, 1),
    (8, 109, 1),
    (8, 110, 2),
    (9, 111, 1),
    (10, 112, 1),
    (13, 113, 1);

-- Inserimento valori nella tabella AUTORE
-- Inserimento valori nella tabella AUTORE con chiave esterna
INSERT INTO AUTORE (Nome, TitoloCanzone)
VALUES
    ('David Bowie', 'Lost in the City'),
    ('Ludwig van Beethoven', 'Moonlight Sonata'),
    ('Diana Ross', 'Sunshine Groove'),
    ('John Legend', 'Eternal Love'),
    ('Miles Davis', 'Midnight Jazz'),
    ('Ed Sheeran', 'Dancefloor Beats'),
    ('Pink Floyd', 'Retro Vibes'),
    ('Enya', 'Whispers in the Wind'),
    ('Adele', 'Summer Romance'),
    ('Enigma', 'Mystical Journey');

-- Inserimento valori nella tabella CANTANTE
INSERT INTO CANTANTE (NomeCantante, CodiceReg)
VALUES
    ('David Bowie', 104),
    ('Ludwig van Beethoven', 105),
    ('Diana Ross', 107),
    ('John Legend', 111),
    ('Adele', 112),
    ('Miles Davis', 112),
    ('Elvis Presley', 113),
    ('Ed Sheeran', 109),
    ('Taylor Swift', 110),
    ('Pink Floyd', 110);

-- 1. I cantautori (persone che hanno cantato e scritto la stessa canzone) il cui nome inizia per 'D’;
SELECT DISTINCT A.Nome
FROM AUTORE A
JOIN ESECUZIONE E ON A.TitoloCanzone = E.TitoloCanzone
WHERE A. Nome LIKE 'D%';

-- 2. I titoli dei dischi che contengono canzoni di cui non si conosce l'anno di registrazione;
SELECT DISTINCT D.TitoloAlbum
FROM DISCO D
JOIN CONTIENE C ON D.NroSerie = C.NroSerieDisco
JOIN ESECUZIONE E ON C.CodiceReg = E.CodiceReg
WHERE E.Anno IS NULL;

-- 3. I cantanti che hanno sempre registrato canzoni come solisti.
SELECT DISTINCT C.NomeCantante
FROM CANTANTE C
WHERE NOT EXISTS (
    SELECT *
    FROM ESECUZIONE E
    WHERE E.CodiceReg = C.CodiceReg
    AND E.TitoloCanzone IN (
        SELECT A.TitoloCanzone
        FROM AUTORE A
        WHERE A.Nome = C.NomeCantante
    )
);


