-- Creazione della tabella 'vendite'
CREATE TABLE vendite (
    ID_transazione INT PRIMARY KEY,
    categoria_prodotto VARCHAR(255),
    costo_vendita DECIMAL(10, 2),
    sconto DECIMAL(5, 2)
);

-- Creazione della tabella 'dettagli_vendite'
CREATE TABLE dettagli_vendite (
    ID_transazione INT,
    data_transazione DATE,
    quantita INT,
    PRIMARY KEY (ID_transazione),
    FOREIGN KEY (ID_transazione) REFERENCES vendite(ID_transazione)
);

-- Inserimento dati nella tabella 'vendite'
INSERT INTO vendite VALUES
(4, 'Elettronica', 700.00, 20.00),
(5, 'Abbigliamento', 150.25, 15.00),
(6, 'Casa', 250.50, 50.00),
(7, 'Elettronica', 600.00, 20.00),
(8, 'Abbigliamento', 130.75, 10.00),
(9, 'Casa', 350.25, 20.00),
(10, 'Elettronica', 550.00, 15.00),
(11, 'Abbigliamento', 110.00, 10.00),
(12, 'Casa', 280.00, 20.00),
(13, 'Elettronica', 750.00, 25.00),
(14, 'Abbigliamento', 140.50, 15.00),
(15, 'Casa', 320.75, 55.00),
(16, 'Elettronica', 680.00, 60.00),
(17, 'Abbigliamento', 160.25, 15.00),
(18, 'Casa', 270.50, 55.00),
(19, 'Elettronica', 620.00, 30.00),
(20, 'Abbigliamento', 125.75, 10.00),
(21, 'Casa', 330.25, 15.00),
(22, 'Elettronica', 580.00, 25.00),
(23, 'Abbigliamento', 145.00, 10.00),
(24, 'Casa', 310.50, 25.00),
(25, 'Elettronica', 800.00, 15.00),
(26, 'Abbigliamento', 120.25, 10.00),
(27, 'Casa', 280.50, 25.00),
(28, 'Elettronica', 650.00, 18.00),
(29, 'Abbigliamento', 135.75, 12.50),
(30, 'Casa', 320.25, 22.50),
(31, 'Elettronica', 720.00, 12.50),
(32, 'Abbigliamento', 115.00, 8.75),
(33, 'Casa', 260.00, 18.00),
(34, 'Elettronica', 880.00, 22.50),
(35, 'Abbigliamento', 130.50, 14.50),
(36, 'Casa', 290.75, 16.00),
(37, 'Elettronica', 750.00, 28.50),
(38, 'Abbigliamento', 155.25, 18.50),
(39, 'Casa', 330.50, 20.00),
(40, 'Elettronica', 600.00, 25.00),
(41, 'Abbigliamento', 110.75, 10.50),
(42, 'Casa', 310.25, 15.50),
(43, 'Elettronica', 820.00, 20.00),
(44, 'Abbigliamento', 125.00, 15.00),
(45, 'Casa', 270.75, 22.50),
(46, 'Elettronica', 700.00, 30.00),
(47, 'Abbigliamento', 140.25, 20.00),
(48, 'Casa', 250.50, 55.00),
(49, 'Elettronica', 600.00, 25.00),
(50, 'Abbigliamento', 120.75, 15.00),
(51, 'Casa', 320.25, 22.50),
(52, 'Elettronica', 720.00, 25.00),
(53, 'Abbigliamento', 110.00, 10.00),
(54, 'Casa', 280.50, 18.50),
(55, 'Elettronica', 880.00, 30.00),
(56, 'Abbigliamento', 130.50, 14.50),
(57, 'Casa', 290.75, 16.00),
(58, 'Elettronica', 750.00, 28.50),
(59, 'Abbigliamento', 155.25, 18.50),
(60, 'Casa', 330.50, 20.00);

-- Inserimento dati nella tabella 'dettagli_vendite'
INSERT INTO dettagli_vendite VALUES
(4, '2024-01-12', 2),
(5, '2024-01-13', 1),
(6, '2024-01-14', 6),
(7, '2024-01-12', 7),
(8, '2024-01-16', 2),
(9, '2024-01-17', 1),
(10, '2024-01-12', 2),
(11, '2024-01-19', 4),
(12, '2024-02-20', 2),
(13, '2024-02-21', 2),
(14, '2024-02-22', 1),
(15, '2024-02-23', 3),
(16, '2024-02-24', 1),
(17, '2024-02-25', 2),
(18, '2024-03-26', 5),
(19, '2024-03-27', 2),
(20, '2024-03-28', 3),
(21, '2023-12-29', 1),
(22, '2023-10-30', 3),
(23, '2023-12-31', 1),
(24, '2023-11-01', 3),
(25, '2024-04-12', 2),
(26, '2024-04-13', 1),
(27, '2024-04-14', 3),
(28, '2024-04-15', 1),
(29, '2024-05-16', 2),
(30, '2024-05-17', 1),
(31, '2024-05-18', 2),
(32, '2024-05-19', 4),
(33, '2024-06-20', 1),
(34, '2024-06-21', 2),
(35, '2024-06-22', 3),
(36, '2024-06-23', 3),
(37, '2024-07-24', 1),
(38, '2024-07-25', 2),
(39, '2024-07-26', 3),
(40, '2024-08-27', 1),
(41, '2024-08-28', 2),
(42, '2024-08-29', 3),
(43, '2023-12-30', 1),
(44, '2023-10-31', 2),
(45, '2023-12-01', 3),
(46, '2023-11-02', 1),
(47, '2023-11-03', 2),
(48, '2023-11-04', 3),
(49, '2023-11-05', 1),
(50, '2023-11-06', 2),
(51, '2023-11-07', 3),
(52, '2023-11-08', 1),
(53, '2023-11-09', 2),
(54, '2023-11-10', 3),
(55, '2023-11-11', 1),
(56, '2023-11-12', 2),
(57, '2023-11-13', 3),
(58, '2023-11-14', 1),
(59, '2023-11-15', 2),
(60, '2023-11-16', 3);

-- Query semplici:
#1.Selezione delle vendite avvenute in una specifica data:
SELECT *
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
WHERE dettagli_vendite.data_transazione = '2024-01-12';

#2.Elenco delle vendite con sconti maggiori del 50%:
SELECT *
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
WHERE vendite.sconto > 50;

-- Aggregazione dei dati: 
#1.Calcolo del totale delle vendite per categorie:
SELECT categoria_prodotto, SUM(costo_vendita) AS totale_vendite
FROM vendite
GROUP BY categoria_prodotto;

#2.Numero di prodotti venduti per ogni categoria:
SELECT categoria_prodotto, SUM(quantita) AS totale_prodotti_venduti
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
GROUP BY categoria_prodotto
    ORDER BY totale_prodotti_venduti DESC;

-- Funzioni di Data:
#1.Selezione delle vendite dell'ultimo trimestre. 
SELECT *
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
WHERE dettagli_vendite.data_transazione >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
  AND dettagli_vendite.data_transazione <= CURDATE();

#2.Raggruppamento delle vendite per mese e calcolo del totale delle vendite per ogni mese.
SELECT 
    YEAR(dettagli_vendite.data_transazione) AS anno,
    MONTH(dettagli_vendite.data_transazione) AS mese,
    SUM(vendite.costo_vendita) AS totale_vendite
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
GROUP BY anno, mese
ORDER BY anno, mese;

-- Analisi degli Sconti: 
#1.Categoria con lo sconto medio più alto.
SELECT categoria_prodotto, MAX(sconto_medio) AS sconto_medio_massimo
FROM (
    SELECT categoria_prodotto, AVG(sconto) AS sconto_medio
    FROM vendite
    GROUP BY categoria_prodotto
) AS sconti_per_categoria
GROUP BY categoria_prodotto
    LIMIT 1;

--  Variazioni delle Vendite: 
#1.Confronto delle vendite mese per mese per vedere l'incremento o il decremento delle vendite e
#calcolo dell’incremento o decremento mese per mese.
SELECT
    anno,
    mese,
    SUM(costo_vendita) AS totale_vendite,
    LAG(SUM(costo_vendita)) OVER (ORDER BY anno, mese) AS vendite_precedenti,
    CASE WHEN LAG(SUM(costo_vendita)) OVER (ORDER BY anno, mese) IS NOT NULL THEN
    SUM(costo_vendita) - LAG(SUM(costo_vendita)) OVER (ORDER BY anno, mese)
    ELSE 0
    END AS variazione_mese
FROM (
    SELECT
        YEAR(dettagli_vendite.data_transazione) AS anno,
        MONTH(dettagli_vendite.data_transazione) AS mese,
        vendite.costo_vendita
    FROM vendite
    JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
) AS vendite_mese
GROUP BY anno, mese
ORDER BY anno, mese;

-- Analisi Stagionale:
#1.Confronto delle vendite totali in diverse stagioni.
SELECT
    CASE
        WHEN mese IN (12, 1, 2) THEN 'Inverno'
        WHEN mese IN (3, 4, 5) THEN 'Primavera'
        WHEN mese IN (6, 7, 8) THEN 'Estate'
        WHEN mese IN (9, 10, 11) THEN 'Autunno'
    END AS stagione,
    SUM(costo_vendita) AS vendite_totali
FROM (
    SELECT
        YEAR(dettagli_vendite.data_transazione) AS anno,
        MONTH(dettagli_vendite.data_transazione) AS mese,
        vendite.costo_vendita
    FROM vendite
    JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
) AS vendite_stagione
GROUP BY stagione
ORDER BY stagione;

-- Creazione della tabella 'clienti'
CREATE TABLE clienti (
    IDCliente INT PRIMARY KEY,
    nome_cliente VARCHAR(255),
    cognome_cliente VARCHAR(255)
);

-- Inserimento dati nella tabella 'clienti'
INSERT INTO clienti VALUES
(1, 'Mario', 'Rossi'),
(2, 'Luigi', 'Bianchi'),
(3, 'Giovanna', 'Verdi'),
(4, 'Anna', 'Neri'),
(5, 'Paolo', 'Gialli'),
(6, 'Laura', 'Azzurri'),
(7, 'Giacomo', 'Rosa'),
(8, 'Sara', 'Viola'),
(9, 'Roberto', 'Arancioni'),
(10, 'Elena', 'Marroni'),
(11, 'Francesco', 'Giallo'),
(12, 'Alessia', 'Bianchi'),
(13, 'Davide', 'Verdi'),
(14, 'Martina', 'Rossi'),
(15, 'Simone', 'Neri'),
(16, 'Chiara', 'Azzurri'),
(17, 'Andrea', 'Rosa'),
(18, 'Giulia', 'Viola'),
(19, 'Marco', 'Arancioni'),
(20, 'Camilla', 'Marroni'),
(21, 'Fabio', 'Giallo'),
(22, 'Elisa', 'Bianchi'),
(23, 'Massimo', 'Verdi'),
(24, 'Caterina', 'Rossi'),
(25, 'Enrico', 'Neri'),
(26, 'Federica', 'Azzurri'),
(27, 'Alessandro', 'Rosa'),
(28, 'Valentina', 'Viola'),
(29, 'Giovanni', 'Arancioni'),
(30, 'Rosa', 'Marroni');

    -- Aggiunta della colonna IDCliente alla tabella dettagli_vendite e della chiave esterna. Perchè avevo cancellato la colonna IDClienti sopra.
ALTER TABLE dettagli_vendite
ADD COLUMN IDCliente INT;

ALTER TABLE dettagli_vendite
ADD FOREIGN KEY (IDCliente) REFERENCES clienti(IDCliente);

UPDATE dettagli_vendite
SET IDCliente = 1
WHERE ID_transazione IN (4, 5); 

UPDATE dettagli_vendite
SET IDCliente = 2
WHERE ID_transazione IN (6, 7); 

UPDATE dettagli_vendite
SET IDCliente = 3
WHERE ID_transazione IN (8, 9);

UPDATE dettagli_vendite
SET IDCliente = 4
WHERE ID_transazione IN (10, 11);

UPDATE dettagli_vendite
SET IDCliente = 5
WHERE ID_transazione IN (12, 13);

UPDATE dettagli_vendite
SET IDCliente = 6
WHERE ID_transazione IN (14, 15);

UPDATE dettagli_vendite
SET IDCliente = 7
WHERE ID_transazione IN (16, 17);

UPDATE dettagli_vendite
SET IDCliente = 8
WHERE ID_transazione IN (18, 19);

UPDATE dettagli_vendite
SET IDCliente = 9
WHERE ID_transazione IN (20, 21);

UPDATE dettagli_vendite
SET IDCliente = 10
WHERE ID_transazione IN (22, 22, 23);

UPDATE dettagli_vendite
SET IDCliente = 11
WHERE ID_transazione IN (24, 25, 26);

UPDATE dettagli_vendite
SET IDCliente = 12
WHERE ID_transazione IN (27, 28, 29);

UPDATE dettagli_vendite
SET IDCliente = 13
WHERE ID_transazione IN (30);

UPDATE dettagli_vendite
SET IDCliente = 14
WHERE ID_transazione IN (31, 32, 33);

UPDATE dettagli_vendite
SET IDCliente = 15
WHERE ID_transazione IN (34);

UPDATE dettagli_vendite
SET IDCliente = 16
WHERE ID_transazione IN (35);

UPDATE dettagli_vendite
SET IDCliente = 17
WHERE ID_transazione IN (36, 37, 38);

UPDATE dettagli_vendite
SET IDCliente = 18
WHERE ID_transazione IN (39, 40, 41);

UPDATE dettagli_vendite
SET IDCliente = 19
WHERE ID_transazione IN (42, 43);

UPDATE dettagli_vendite
SET IDCliente = 20
WHERE ID_transazione IN (44, 45);

UPDATE dettagli_vendite
SET IDCliente = 21
WHERE ID_transazione IN (46, 47); 

UPDATE dettagli_vendite
SET IDCliente = 22
WHERE ID_transazione IN (48, 49); 

UPDATE dettagli_vendite
SET IDCliente = 23
WHERE ID_transazione IN (50);

UPDATE dettagli_vendite
SET IDCliente = 24
WHERE ID_transazione IN (51);

UPDATE dettagli_vendite
SET IDCliente = 25
WHERE ID_transazione IN (52);

UPDATE dettagli_vendite
SET IDCliente = 26
WHERE ID_transazione IN (53);

UPDATE dettagli_vendite
SET IDCliente = 27
WHERE ID_transazione IN (54, 55);

UPDATE dettagli_vendite
SET IDCliente = 28
WHERE ID_transazione IN (56);

UPDATE dettagli_vendite
SET IDCliente = 29
WHERE ID_transazione IN (57, 58);

UPDATE dettagli_vendite
SET IDCliente = 30
WHERE ID_transazione IN (59, 60);

-- Top 5 clienti con il maggior numero di acquisti:
SELECT c.IDCliente, c.nome_cliente, c.cognome_cliente, SUM(d.quantita) AS totale_acquisti
FROM clienti c
JOIN dettagli_vendite d ON c.IDCliente = d.IDCliente
GROUP BY c.IDCliente, c.nome_cliente, c.cognome_cliente
ORDER BY totale_acquisti DESC
LIMIT 5;

-- Query aggiuntive: 
#1.Cliente che ha spesso di più.
SELECT c.IDCliente, c.nome_cliente, c.cognome_cliente, SUM(v.costo_vendita) AS totale_speso
FROM clienti c
JOIN dettagli_vendite dv ON c.IDCliente = dv.IDCliente
JOIN vendite v ON dv.ID_transazione = v.ID_transazione
GROUP BY c.IDCliente, c.nome_cliente, c.cognome_cliente
ORDER BY totale_speso DESC
LIMIT 1;

#2.Totale sconto applicato per ogni cliente.
SELECT c.IDCliente, c.nome_cliente, c.cognome_cliente, SUM(v.sconto) AS totale_sconto
FROM clienti c
JOIN dettagli_vendite dv ON c.IDCliente = dv.IDCliente
JOIN vendite v ON dv.ID_transazione = v.ID_transazione
GROUP BY c.IDCliente, c.nome_cliente, c.cognome_cliente
ORDER BY totale_sconto DESC;

#3.Giorno con il maggior numero di vendite.
SELECT data_transazione, COUNT(*) AS numero_vendite
FROM dettagli_vendite
GROUP BY data_transazione
ORDER BY numero_vendite DESC
LIMIT 1;

#4.Query per trasformare le date in formato Europeo con quantita venduta per transazione.
SELECT ID_transazione, DATE_FORMAT(data_transazione, '%d/%m/%Y') AS data_formattata, quantita
FROM dettagli_vendite;

#5.Totale vendita per mese per ogni categoria.
-- Categoria: Abbigliamento
SELECT
    DATE_FORMAT(dv.data_transazione, '%Y-%m') AS mese,
    v.categoria_prodotto,
    SUM(v.costo_vendita) AS totale_vendite
FROM dettagli_vendite dv
JOIN vendite v ON dv.ID_transazione = v.ID_transazione
WHERE v.categoria_prodotto = 'Abbigliamento'
GROUP BY mese, v.categoria_prodotto
ORDER BY mese;

-- Categoria: Casa
SELECT
    DATE_FORMAT(dv.data_transazione, '%Y-%m') AS mese,
    v.categoria_prodotto,
    SUM(v.costo_vendita) AS totale_vendite
FROM dettagli_vendite dv
JOIN vendite v ON dv.ID_transazione = v.ID_transazione
WHERE v.categoria_prodotto = 'Casa'
GROUP BY mese, v.categoria_prodotto
ORDER BY mese;

-- Categoria: Elettronica
SELECT
    DATE_FORMAT(dv.data_transazione, '%Y-%m') AS mese,
    v.categoria_prodotto,
    SUM(v.costo_vendita) AS totale_vendite
FROM dettagli_vendite dv
JOIN vendite v ON dv.ID_transazione = v.ID_transazione
WHERE v.categoria_prodotto = 'Elettronica'
GROUP BY mese, v.categoria_prodotto
ORDER BY mese;

-- Miglior mese per ogni categoria
WITH TotaliMensili AS (
    SELECT
        v.categoria_prodotto,
        DATE_FORMAT(dv.data_transazione, '%Y-%m') AS mese,
        SUM(v.costo_vendita) AS totale_vendite,
        RANK() OVER (PARTITION BY v.categoria_prodotto ORDER BY SUM(v.costo_vendita) DESC) AS rank_per_categoria
    FROM dettagli_vendite dv
    JOIN vendite v ON dv.ID_transazione = v.ID_transazione
    GROUP BY v.categoria_prodotto, mese
)

SELECT categoria_prodotto, mese, totale_vendite
FROM TotaliMensili
WHERE rank_per_categoria = 1
ORDER BY categoria_prodotto, mese;

