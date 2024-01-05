-- Creazione della tabella STUDENTE
CREATE TABLE STUDENTE (
    Matricola INT PRIMARY KEY,
    Nome VARCHAR(255),
    Citta VARCHAR(255)
);

-- Inserimento valori nella tabella STUDENTE
INSERT INTO STUDENTE (Matricola, Nome, Citta)
VALUES
    (1, 'Alice Rossi', 'Roma'),
    (2, 'Bob Verdi', 'Milano'),
    (3, 'Charlie Bianchi', 'Firenze');

-- Creazione della tabella DOCENTE
CREATE TABLE DOCENTE (
    Matricola INT PRIMARY KEY,
    Nome VARCHAR(255)
);

-- Inserimento valori nella tabella DOCENTE
INSERT INTO DOCENTE (Matricola, Nome)
VALUES
    (201, 'Prof. Rossi'),
    (202, 'Prof. Verdi'),
    (203, 'Prof. Bianchi'),
    (204, 'Prof. Neri'),
    (205, 'Prof. Gialli'),
    (206, 'Prof. Marroni'),
    (207, 'Prof. Arancioni'),
    (208, 'Prof. Azzurri'),
    (209, 'Prof. Viola'),
    (210, 'Prof. Rosa'),
    (211, 'Prof. Celesti'),
    (212, 'Prof. Rossi Scuro'),
    (213, 'Prof. Verde Chiaro'),
    (214, 'Prof. Bianchi e Neri'),
    (215, 'Prof. Arcobaleno');

-- Creazione della tabella CORSO
CREATE TABLE CORSO (
    Codice INT PRIMARY KEY,
    Nome VARCHAR(255),
    MatricolaDocente INT,
    FOREIGN KEY (MatricolaDocente) REFERENCES DOCENTE(Matricola)
);

-- Inserimento valori nella tabella CORSO
INSERT INTO CORSO (Codice, Nome, MatricolaDocente)
VALUES
    -- Corsi per la Matricola 1
    (101, 'Corso Matematica', 201),
    (102, 'Corso Informatica', 202),
    (103, 'Corso Letteratura', 203),
    (104, 'Corso Storia', 204),
    (105, 'Corso Biologia', 205),

    -- Corsi per la Matricola 2
    (106, 'Corso Fisica', 206),
    (107, 'Corso Chimica', 207),
    (108, 'Corso Filosofia', 208),
    (109, 'Corso Economia', 209),
    (110, 'Corso Psicologia', 210),

    -- Corsi per la Matricola 3
    (111, 'Corso Lingue', 211),
    (112, 'Corso Geografia', 212),
    (113, 'Corso Arte', 213),
    (114, 'Corso Musica', 214),
    (115, 'Corso Medicina', 215);

-- Creazione della tabella ESAME
CREATE TABLE ESAME (
    Codice INT PRIMARY KEY,
    MatricolaStudente INT,
    Data DATE,
    Voto INT,
    SettoreScientifico VARCHAR(255),
    FOREIGN KEY (MatricolaStudente) REFERENCES STUDENTE(Matricola)
);

-- Inserimento valori nella tabella ESAME
INSERT INTO ESAME (Codice, MatricolaStudente, Data, Voto, SettoreScientifico)
VALUES
    -- Esami per la Matricola 1
    (101, 1, '2023-01-15', 28, 'Matematica'),
    (102, 1, '2023-02-20', 25, 'Informatica'),
    (103, 1, '2023-03-10', 30, 'Letteratura'),
    (104, 1, '2023-04-05', 26, 'Storia'),
    (105, 1, '2023-05-12', 24, 'Biologia'),

    -- Esami per la Matricola 2
    (106, 2, '2023-01-15', 27, 'Fisica'),
    (107, 2, '2023-02-20', 29, 'Chimica'),
    (108, 2, '2023-03-10', 28, 'Filosofia'),
    (109, 2, '2023-04-05', 26, 'Economia'),
    (110, 2, '2023-05-12', 25, 'Psicologia'),

    -- Esami per la Matricola 3
    (111, 3, '2023-01-15', 30, 'Lingue'),
    (112, 3, '2023-02-20', 28, 'Geografia'),
    (113, 3, '2023-03-10', 26, 'Arte'),
    (114, 3, '2023-04-05', 27, 'Musica'),
    (115, 3, '2023-05-12', 29, 'Medicina');

-- 1.Visualizzare per ogni studente la matricola, il nome, il voto massimo, minimo e medio conseguito negli esami. 
SELECT
S.Matricola,
S.Nome AS NomeStudente,
MAX(E.Voto) AS VotoMassimo,
MIN(E.Voto) AS VotoMinimo,
AVG(E.Voto) AS VotoMedio
FROM
STUDENTE S
JOIN ESAME E ON S.Matricola = E.MatricolaStudente
GROUP BY
S.Matricola, S.Nome;

SELECT
    S.Matricola,
    S.Nome AS NomeStudente,
    MAX(E.Voto) AS VotoMassimo,
    MIN(E.Voto) AS VotoMinimo,
    AVG(E.Voto) AS VotoMedio
FROM
    STUDENTE S
    JOIN ESAME E ON S.Matricola = E.MatricolaStudente
GROUP BY
    S.Matricola, S.Nome
HAVING AVG(E.Voto) > 25
ORDER BY VotoMedio DESC;

