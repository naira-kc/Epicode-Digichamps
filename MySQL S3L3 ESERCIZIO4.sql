-- Creazione della tabella STUDENTE
CREATE TABLE STUDENTE (
    Matricola INT PRIMARY KEY,
    NomeStudente VARCHAR(255),
    AnnoLaurea INT,
    TitoloStudio VARCHAR(255),
    VotoLaurea DECIMAL(5, 2)
);

-- Inserimento valori nella tabella STUDENTE
INSERT INTO STUDENTE (Matricola, NomeStudente, AnnoLaurea, TitoloStudio, VotoLaurea)
VALUES
    (1, 'Eleonora', 2022, 'Laurea in Informatica', 110.00),
    (2, 'Barbie', 2021, 'Laurea in Matematica', 108.50),
    (3, 'Giuseppe', 2022, 'Laurea in Fisica', 105.75),
    (4, 'Rodrigo', 2021, 'Laurea in Economia', 107.25),
    (5, 'Riccardo', 2023, 'Laurea in Ingegneria', 112.00),
    (6, 'Elisabetta', 2020, 'Laurea in Chimica', 106.00),
    (7, 'Isabella', 2023, 'Laurea in Psicologia', 109.50),
    (8, 'Aurora', 2022, 'Laurea in Lettere', 104.25),
    (9, 'Sveva', 2021, 'Laurea in Giurisprudenza', 110.50),
    (10, 'Edward', 2020, 'Laurea in Medicina', 112.00);

-- Creazione della tabella DIPARTIMENTO
CREATE TABLE DIPARTIMENTO (
    CodiceDipartimento INT PRIMARY KEY,
    NomeDipartimento VARCHAR(255),
    SettoreScientifico VARCHAR(255),
    NumDocenti INT
);

-- Inserimento valori nella tabella DIPARTIMENTO
INSERT INTO DIPARTIMENTO (CodiceDipartimento, NomeDipartimento, SettoreScientifico, NumDocenti)
VALUES
    (101, 'Dipartimento di Informatica', 'Informatica', 20),
    (102, 'Dipartimento di Matematica', 'Matematica', 15),
    (103, 'Dipartimento di Fisica', 'Fisica', 18),
    (104, 'Dipartimento di Economia', 'Economia', 25),
    (105, 'Dipartimento di Ingegneria', 'Ingegneria', 30),
    (106, 'Dipartimento di Chimica', 'Chimica', 22),
    (107, 'Dipartimento di Psicologia', 'Psicologia', 12),
    (108, 'Dipartimento di Lettere', 'Lettere', 17),
    (109, 'Dipartimento di Giurisprudenza', 'Giurisprudenza', 20),
    (110, 'Dipartimento di Medicina', 'Medicina', 28);

-- Creazione della tabella CONCORSOMASTER
CREATE TABLE CONCORSOMASTER (
    CodiceMaster INT PRIMARY KEY,
    CodiceDipartimento INT,
    DataPubblicazione DATE,
    DataScadenza DATE,
    NumPostiDisponibili INT,
    INDEX (CodiceDipartimento), 
    FOREIGN KEY (CodiceDipartimento) REFERENCES DIPARTIMENTO(CodiceDipartimento)
);

-- Inserimento valori nella tabella CONCORSOMASTER
INSERT INTO CONCORSOMASTER (CodiceMaster, CodiceDipartimento, DataPubblicazione, DataScadenza, NumPostiDisponibili)
VALUES
    (201, 101, '2022-10-01', '2022-11-01', 15),
    (202, 102, '2022-09-15', '2022-10-15', 7),
    (203, 105, '2022-11-05', '2022-12-05', 20),
    (204, 108, '2022-10-01', '2022-11-01', 12),
    (205, 109, '2022-11-10', '2022-12-10', 18),
    (206, 110, '2022-09-15', '2022-10-15', 25),
    (207, 103, '2022-12-01', '2023-01-01', 15),
    (208, 107, '2022-10-01', '2022-11-01', 10),
    (209, 106, '2022-11-15', '2022-12-15', 22),
    (210, 104, '2022-11-30', '2022-12-30', 28);

-- Creazione della tabella PARTECIPACONCORSOMASTER
CREATE TABLE PARTECIPACONCORSOMASTER (
    CodiceDipartimento INT,
    CodiceMaster INT,
    MatricolaStudente INT,
    DataInvioDomanda DATE,
    PRIMARY KEY (CodiceDipartimento, CodiceMaster, MatricolaStudente),
    FOREIGN KEY (MatricolaStudente) REFERENCES STUDENTE(Matricola)
);

-- Inserimento valori nella tabella PARTECIPACONCORSOMASTER
INSERT INTO PARTECIPACONCORSOMASTER (CodiceDipartimento, CodiceMaster, MatricolaStudente, DataInvioDomanda)
VALUES
    (101, 201, 1, '2022-10-05'),
    (102, 202, 2, '2022-09-20'),
    (105, 203, 3, '2022-11-10'),
    (108, 204, 4, '2022-10-30'),
    (109, 205, 5, '2022-11-20'),
    (110, 206, 6, '2022-10-10'),
    (103, 207, 7, '2022-12-05'),
    (107, 208, 8, '2022-11-01'),
    (106, 209, 9, '2022-11-25'),
    (104, 210, 10, '2022-12-10'),
    (103, 204, 1, '2022-10-05'),
    (105, 208, 1, '2022-10-06'),
    (108, 213, 2, '2023-02-15'),
    (110, 214, 2, '2023-03-01');

-- 1.-
SELECT
    S.NomeStudente,
    D.SettoreScientifico
FROM
    STUDENTE S
JOIN
    PARTECIPACONCORSOMASTER P ON S.Matricola = P.MatricolaStudente
JOIN
    CONCORSOMASTER C ON P.CodiceDipartimento = C.CodiceDipartimento AND P.CodiceMaster = C.CodiceMaster
JOIN
    DIPARTIMENTO D ON C.CodiceDipartimento = D.CodiceDipartimento
WHERE
    S.Matricola IN (
        SELECT
            MatricolaStudente
        FROM
            PARTECIPACONCORSOMASTER
        GROUP BY
            MatricolaStudente
        HAVING
            COUNT(DISTINCT CodiceMaster) = 3
    )
ORDER BY S.NomeStudente ;

-- 2.-
-- Query per i dipartimenti con concorsi di master aventi posti disponibili > 7
SELECT
    D.NomeDipartimento,
    D.SettoreScientifico,
    COUNT(C.CodiceMaster) AS NumConcorsiMaster
FROM
    DIPARTIMENTO D
JOIN
    CONCORSOMASTER C ON D.CodiceDipartimento = C.CodiceDipartimento
WHERE
    C.NumPostiDisponibili > 7
GROUP BY
    D.NomeDipartimento, D.SettoreScientifico
HAVING
    COUNT(C.CodiceMaster) > 0
ORDER BY D.NomeDipartimento, D.SettoreScientifico;

-- 3.-
SELECT
    S.Matricola,
    S.NomeStudente
FROM
    STUDENTE S
JOIN
    PARTECIPACONCORSOMASTER P ON S.Matricola = P.MatricolaStudente
JOIN
    CONCORSOMASTER C ON P.CodiceDipartimento = C.CodiceDipartimento AND P.CodiceMaster = C.CodiceMaster
WHERE
    S.VotoLaurea > 100;

   -- Visualizza i master che hanno la stessa data di pubblicazione
SELECT
    C1.CodiceMaster AS Master1,
    C1.DataPubblicazione AS DataPubblicazione,
    C2.CodiceMaster AS Master2
FROM
    CONCORSOMASTER C1
JOIN
    CONCORSOMASTER C2 ON C1.DataPubblicazione = C2.DataPubblicazione
WHERE
    C1.CodiceMaster < C2.CodiceMaster;
-- Query per studenti con voto di laurea > 100 e partecipazione a concorsi di master con la stessa data di pubblicazione
SELECT
    S.Matricola,
    S.NomeStudente
FROM
    STUDENTE S
JOIN
    PARTECIPACONCORSOMASTER P ON S.Matricola = P.MatricolaStudente
JOIN
    CONCORSOMASTER C1 ON P.CodiceDipartimento = C1.CodiceDipartimento AND P.CodiceMaster = C1.CodiceMaster
JOIN
    CONCORSOMASTER C2 ON P.CodiceDipartimento = C2.CodiceDipartimento AND P.CodiceMaster = C2.CodiceMaster
WHERE
    S.VotoLaurea > 100
    AND C1.DataPubblicazione = C2.DataPubblicazione
    AND C1.CodiceMaster <> C2.CodiceMaster
GROUP BY
    S.Matricola, S.NomeStudente
HAVING
    COUNT(DISTINCT P.CodiceMaster) >= 2;




