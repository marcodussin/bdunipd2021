-- crea tabella studente
CREATE TABLE studente
(matricola INTEGER(6) NOT NULL, 
cognome VARCHAR(30) NOT NULL, 
nome VARCHAR(10),
sesso CHAR(1),
nascita DATE,
media DECIMAL(4 ,2));

-- inserisce tuple studenti
INSERT INTO studente VALUES
(1,'Rossi','Mario','M','1990−08−10',21.9);
INSERT INTO studente VALUES
(2,'Bianchi','Paola','F','1989−07−22',NULL), 
(3,'Verdi',NULL,NULL,'1991−09−6',29.9),
(4,'Azzurri','Luisa','F',NULL,18.6);


-- aggiungere un attributo
ALTER TABLE studente ADD iscrizione DATE AFTER nascita;

--aggiungere un altro attributo
ALTER TABLE studente ADD numero_esami INTEGER(2);

-- eliminare un attributo
ALTER TABLE studente DROP numero_esami;

-- aggiungere la chiave primaria
ALTER TABLE studente ADD PRIMARY KEY matricola_key (matricola);

-- aggiungere una chiave secondaria
ALTER TABLE studente ADD UNIQUE KEY cognomenome_key (cognome,nome);
