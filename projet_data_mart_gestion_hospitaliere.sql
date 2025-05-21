
CREATE DATABASE DataMartHopital;
GO

USE DataMartHopital;
GO

---creation de la table DimDate
CREATE TABLE DimDate (
    date_id INT PRIMARY KEY,
    date_complete DATE,
    jour INT,
    mois INT,
    trimestre INT,
    annee INT
);
GO



---creation de la table DimPatient

CREATE TABLE DimPatient (
    patient_id INT PRIMARY KEY IDENTITY(1,1),
    nom NVARCHAR(50),
    prenom NVARCHAR(50),
    sexe CHAR(1),
    date_naissance DATE,
    region NVARCHAR(100),
    ville NVARCHAR(100),
    quartier NVARCHAR(100)
);
GO
---creation de la Table DimMedcin

CREATE TABLE DimMedecin (
    medecin_id INT PRIMARY KEY IDENTITY(1,1),
    nom NVARCHAR(50),
    prenom NVARCHAR(50),
    sexe CHAR(1),
    anciennete INT,
    specialite NVARCHAR(100)
);
GO

---creation de la table DimService
CREATE TABLE DimService (
    service_id INT PRIMARY KEY IDENTITY(1,1),
    nom_service NVARCHAR(100),
    etage INT,
    batiment NVARCHAR(50)
);
GO

--- creation de la table des fait  FactConsultation

CREATE TABLE FactConsultation (
    consultation_id INT PRIMARY KEY IDENTITY(1,1),
    date_id INT,
    patient_id INT,
    medecin_id INT,
    service_id INT,
    coût DECIMAL(10,2),
    duree INT, 

    FOREIGN KEY (date_id) REFERENCES DimDate(date_id),
    FOREIGN KEY (patient_id) REFERENCES DimPatient(patient_id),
    FOREIGN KEY (medecin_id) REFERENCES DimMedecin(medecin_id),
    FOREIGN KEY (service_id) REFERENCES DimService(service_id)
);
GO


---insertion pour la table DimDate

INSERT INTO DimDate (date_id, date_complete, jour, mois, trimestre, annee) VALUES
(1, '2024-01-01', 1, 1, 1, 2024),
(2, '2024-01-02', 2, 1, 1, 2024),
(3, '2024-01-03', 3, 1, 1, 2024),
(4, '2024-01-04', 4, 1, 1, 2024),
(5, '2024-01-05', 5, 1, 1, 2024),
(6, '2024-01-06', 6, 1, 1, 2024),
(7, '2024-01-07', 7, 1, 1, 2024),
(8, '2024-01-08', 8, 1, 1, 2024),
(9, '2024-01-09', 9, 1, 1, 2024),
(10, '2024-01-10', 10, 1, 1, 2024),
(11, '2024-01-11', 11, 1, 1, 2024),
(12, '2024-01-12', 12, 1, 1, 2024),
(13, '2024-01-13', 13, 1, 1, 2024),
(14, '2024-01-14', 14, 1, 1, 2024),
(15, '2024-01-15', 15, 1, 1, 2024),
(16, '2024-01-16', 16, 1, 1, 2024),
(17, '2024-01-17', 17, 1, 1, 2024),
(18, '2024-01-18', 18, 1, 1, 2024),
(19, '2024-01-19', 19, 1, 1, 2024),
(20, '2024-01-20', 20, 1, 1, 2024),
(21, '2024-01-21', 21, 1, 1, 2024),
(22, '2024-01-22', 22, 1, 1, 2024),
(23, '2024-01-23', 23, 1, 1, 2024),
(24, '2024-01-24', 24, 1, 1, 2024),
(25, '2024-01-25', 25, 1, 1, 2024),
(26, '2024-01-26', 26, 1, 1, 2024),
(27, '2024-01-27', 27, 1, 1, 2024),
(28, '2024-01-28', 28, 1, 1, 2024),
(29, '2024-01-29', 29, 1, 1, 2024),
(30, '2024-01-30', 30, 1, 1, 2024),
(31, '2024-01-31', 31, 1, 1, 2024),
(32, '2024-02-01', 1, 2, 1, 2024),
(33, '2024-02-02', 2, 2, 1, 2024),
(34, '2024-02-03', 3, 2, 1, 2024),
(35, '2024-02-04', 4, 2, 1, 2024),
(36, '2024-02-05', 5, 2, 1, 2024),
(37, '2024-02-06', 6, 2, 1, 2024),
(38, '2024-02-07', 7, 2, 1, 2024),
(39, '2024-02-08', 8, 2, 1, 2024),
(40, '2024-02-09', 9, 2, 1, 2024),
(41, '2024-02-10', 10, 2, 1, 2024),
(42, '2024-02-11', 11, 2, 1, 2024),
(43, '2024-02-12', 12, 2, 1, 2024),
(44, '2024-02-13', 13, 2, 1, 2024),
(45, '2024-02-14', 14, 2, 1, 2024),
(46, '2024-02-15', 15, 2, 1, 2024),
(47, '2024-02-16', 16, 2, 1, 2024),
(48, '2024-02-17', 17, 2, 1, 2024),
(49, '2024-02-18', 18, 2, 1, 2024),
(50, '2024-02-19', 19, 2, 1, 2024),
(51, '2024-02-20', 20, 2, 1, 2024),
(52, '2024-02-21', 21, 2, 1, 2024),
(53, '2024-02-22', 22, 2, 1, 2024),
(54, '2024-02-23', 23, 2, 1, 2024),
(55, '2024-02-24', 24, 2, 1, 2024),
(56, '2024-02-25', 25, 2, 1, 2024),
(57, '2024-02-26', 26, 2, 1, 2024),
(58, '2024-02-27', 27, 2, 1, 2024),
(59, '2024-02-28', 28, 2, 1, 2024),
(60, '2024-02-29', 29, 2, 1, 2024), 
(61, '2024-03-01', 1, 3, 1, 2024),
(62, '2024-03-02', 2, 3, 1, 2024),
(63, '2024-03-03', 3, 3, 1, 2024),
(64, '2024-03-04', 4, 3, 1, 2024),
(65, '2024-03-05', 5, 3, 1, 2024),
(66, '2024-03-06', 6, 3, 1, 2024),
(67, '2024-03-07', 7, 3, 1, 2024),
(68, '2024-03-08', 8, 3, 1, 2024),
(69, '2024-03-09', 9, 3, 1, 2024),
(70, '2024-03-10', 10, 3, 1, 2024),
(71, '2024-03-11', 11, 3, 1, 2024),
(72, '2024-03-12', 12, 3, 1, 2024),
(73, '2024-03-13', 13, 3, 1, 2024),
(74, '2024-03-14', 14, 3, 1, 2024),
(75, '2024-03-15', 15, 3, 1, 2024),
(76, '2024-03-16', 16, 3, 1, 2024),
(77, '2024-03-17', 17, 3, 1, 2024),
(78, '2024-03-18', 18, 3, 1, 2024),
(79, '2024-03-19', 19, 3, 1, 2024),
(80, '2024-03-20', 20, 3, 1, 2024),
(81, '2024-03-21', 21, 3, 1, 2024),
(82, '2024-03-22', 22, 3, 1, 2024),
(83, '2024-03-23', 23, 3, 1, 2024),
(84, '2024-03-24', 24, 3, 1, 2024),
(85, '2024-03-25', 25, 3, 1, 2024),
(86, '2024-03-26', 26, 3, 1, 2024),
(87, '2024-03-27', 27, 3, 1, 2024),
(88, '2024-03-28', 28, 3, 1, 2024),
(89, '2024-03-29', 29, 3, 1, 2024),
(90, '2024-03-30', 30, 3, 1, 2024),
(91, '2024-03-31', 31, 3, 1, 2024);
GO


select * from dbo.DimDate

--insertion de la table DimPatient

INSERT INTO DimPatient (nom, prenom, sexe, date_naissance, region, ville, quartier) VALUES

('Ndiaye', 'Aminata', 'F', '1990-05-12', 'Dakar', 'Dakar', 'Parcelles Assainies'),
('Seck', 'Ousmane', 'M', '1988-10-14', 'Dakar', 'Pikine', 'Thiaroye'),
('Toure', 'Bineta', 'F', '1994-10-08', 'Dakar', 'Guédiawaye', 'Wakhinane Nimzatt'),
('Faye', 'Mamadou', 'M', '1991-03-22', 'Dakar', 'Dakar', 'Medina'),
('Diop', 'Fatou', 'F', '1996-07-01', 'Dakar', 'Dakar', 'Grand Yoff'),
('Fall', 'Cheikh', 'M', '1985-11-30', 'Dakar', 'Rufisque', 'Diamaguène'),
('Ba', 'Seynabou', 'F', '2000-01-17', 'Dakar', 'Pikine', 'Dalifort'),

('Sow', 'Fatou', 'F', '1993-11-30', 'Saint-Louis', 'Saint-Louis', 'Guet Ndar'),
('Faye', 'Ibrahima', 'M', '1978-02-18', 'Kaolack', 'Kaolack', 'Medina Mbaba'),
('Diallo', 'Aissatou', 'F', '1991-03-27', 'Kolda', 'Kolda', 'Sare Kémo'),
('Gueye', 'Adama', 'F', '1983-06-20', 'Fatick', 'Fatick', 'Diakhao'),
('Sy', 'Abdoulaye', 'M', '1995-09-01', 'Tambacounda', 'Tambacounda', 'Gourel Diadié'),
('Mbaye', 'Khady', 'F', '1999-01-09', 'Kaffrine', 'Kaffrine', 'Keur Babacar'),
('Camara', 'Alassane', 'M', '1980-04-04', 'Sédhiou', 'Sédhiou', 'Boudié'),
('Ndoye', 'Sokhna', 'F', '2002-02-02', 'Matam', 'Matam', 'Agnam'),
('Kane', 'Tidiane', 'M', '1987-12-25', 'Podor', 'Podor', 'Niandane'),
('Thiam', 'Mbayang', 'F', '1997-06-18', 'Louga', 'Louga', 'Keur Serigne Louga'),
('Cissé', 'Oumar', 'M', '1984-03-12', 'Thiès', 'Thiès', 'Takhikao'),
('Barry', 'Mame Diarra', 'F', '1998-08-09', 'Kédougou', 'Kédougou', 'Bandafassi'),
('Bâ', 'Mouhamadou', 'M', '1992-10-03', 'Ziguinchor', 'Ziguinchor', 'Kandé');
GO


SELECT * FROM DimPatient ;

-- insertion de la table DimMedcin

INSERT INTO DimMedecin (nom, prenom, sexe, anciennete, specialite) VALUES

('Laksyer', 'Reda', 'M', 10, 'Cardiologie'),
('Elgaddouch', 'Saad', 'M', 5, 'Pédiatrie'),
('Thiao', 'Lamine', 'M', 8, 'Neurologie'),

('Diagne', 'Mouhamed', 'M', 15, 'Médecine générale'),
('Sow', 'Mame Ndiaye', 'F', 7, 'Chirurgie'),
('Fall', 'Cheikh', 'M', 12, 'Gynécologie'),
('Ndiaye', 'Fatou', 'F', 6, 'Dermatologie'),
('Diop', 'Ibrahime', 'M', 3, 'Ophtalmologie');
GO

select * from  DimMedecin;


--insertion de la table DimService
INSERT INTO DimService (nom_service, etage, batiment) VALUES
('Consultations générales', 1, 'A'),
('Urgences', 0, 'B'),
('Chirurgie', 2, 'C'),
('Radiologie', 1, 'D');
GO

select * from DimService;

--insertion de la table des faits
INSERT INTO FactConsultation (date_id, patient_id, medecin_id, service_id, coût, duree) VALUES
(12, 3, 2, 1, 24567.80, 45),
(5, 7, 1, 3, 21345.50, 30),
(25, 14, 4, 2, 28765.90, 40),
(9, 10, 5, 4, 29567.30, 55),
(33, 2, 3, 1, 25890.00, 35),
(71, 6, 7, 2, 27654.20, 60),
(15, 8, 6, 3, 26980.00, 38),
(40, 1, 2, 1, 22345.10, 42),
(67, 19, 1, 4, 29999.99, 33),
(59, 5, 4, 2, 24000.00, 50),
(84, 17, 6, 3, 20999.99, 28),
(10, 20, 3, 2, 28000.75, 36),
(22, 11, 5, 4, 23000.00, 32),
(48, 15, 2, 1, 29500.00, 44),
(61, 4, 7, 3, 26444.30, 41),
(28, 13, 6, 2, 23999.90, 25),
(7, 9, 1, 4, 28990.00, 39),
(18, 16, 3, 1, 20000.00, 50),
(83, 12, 4, 3, 21800.00, 29),
(91, 18, 2, 2, 25555.55, 35),
(43, 3, 5, 4, 26000.00, 47),
(36, 7, 6, 1, 27500.00, 31),
(64, 8, 1, 3, 29000.00, 37),
(26, 14, 7, 2, 28050.00, 34),
(49, 10, 2, 4, 27777.77, 43),
(31, 11, 3, 2, 20500.00, 56),
(2, 5, 4, 1, 22222.22, 40),
(14, 1, 5, 3, 22999.00, 26),
(53, 6, 6, 2, 21000.00, 58),
(39, 13, 7, 4, 21900.00, 27);

INSERT INTO FactConsultation (date_id, patient_id, medecin_id, service_id, coût, duree) VALUES
(3, 2, 1, 2, 21890.50, 42),
(6, 4, 2, 1, 22000.00, 36),
(8, 6, 3, 3, 24500.00, 48),
(11, 7, 4, 4, 23330.30, 33),
(13, 9, 5, 2, 27500.50, 39),
(16, 11, 6, 3, 26000.00, 30),
(19, 13, 7, 1, 21000.00, 55),
(21, 15, 1, 2, 29500.00, 31),
(23, 17, 2, 4, 28200.00, 29),
(24, 18, 3, 2, 22200.00, 41),
(27, 20, 4, 3, 24440.00, 37),
(30, 1, 5, 1, 25300.00, 49),
(32, 3, 6, 2, 21300.00, 26),
(35, 5, 7, 4, 29999.00, 35),
(37, 7, 1, 3, 28760.00, 44),
(41, 9, 2, 1, 27000.00, 40),
(44, 11, 3, 2, 20000.00, 34),
(46, 13, 4, 3, 28000.00, 28),
(47, 15, 5, 4, 21250.00, 50),
(50, 17, 6, 1, 26666.66, 39),
(51, 19, 7, 2, 23000.00, 36),
(52, 20, 1, 3, 27000.00, 32),
(54, 2, 2, 1, 29000.00, 33),
(55, 4, 3, 4, 28400.00, 46),
(56, 6, 4, 2, 21100.00, 38),
(57, 8, 5, 3, 21999.99, 29),
(58, 10, 6, 1, 23400.00, 45),
(60, 12, 7, 4, 24300.00, 31),
(62, 14, 1, 2, 22777.77, 48),
(63, 16, 2, 3, 25999.99, 40),
(65, 18, 3, 1, 28000.00, 43),
(66, 1, 4, 2, 29600.00, 35),
(68, 3, 5, 3, 20100.00, 30),
(69, 5, 6, 4, 23000.00, 49),
(70, 7, 7, 1, 29000.00, 36),
(72, 9, 1, 3, 28800.00, 39),
(73, 11, 2, 2, 24550.00, 28),
(74, 13, 3, 4, 21200.00, 55),
(75, 15, 4, 1, 24000.00, 50),
(76, 17, 5, 2, 27890.00, 37),
(77, 19, 6, 3, 25600.00, 41),
(78, 20, 7, 4, 22000.00, 46),
(79, 2, 1, 1, 29900.00, 34),
(80, 4, 2, 2, 24100.00, 31),
(81, 6, 3, 3, 28900.00, 33),
(82, 8, 4, 4, 21900.00, 42),
(85, 10, 5, 1, 23300.00, 40),
(86, 12, 6, 2, 21400.00, 38),
(87, 14, 7, 3, 26000.00, 35),
(88, 16, 1, 4, 27000.00, 45),
(89, 18, 2, 1, 28000.00, 32),
(90, 1, 3, 2, 29500.00, 29),
(1, 3, 4, 3, 22500.00, 34),
(2, 5, 5, 4, 27500.00, 37),
(4, 7, 6, 1, 21500.00, 36),
(17, 9, 7, 2, 29800.00, 33),
(20, 11, 1, 3, 22900.00, 40),
(29, 13, 2, 4, 26500.00, 47),
(34, 15, 3, 1, 25000.00, 30),
(38, 17, 4, 2, 26800.00, 38),
(42, 19, 5, 3, 23800.00, 35),
(45, 1, 6, 4, 25500.00, 42),
(12, 2, 7, 1, 29200.00, 34),
(22, 4, 1, 2, 20700.00, 39),
(26, 6, 2, 3, 21000.00, 50),
(33, 8, 3, 4, 23100.00, 41),
(48, 10, 4, 1, 27700.00, 37),
(67, 12, 5, 2, 22500.00, 28),
(83, 14, 6, 3, 26200.00, 43),
(91, 16, 7, 4, 28500.00, 30),
(84, 18, 1, 1, 27000.00, 35),
(73, 20, 2, 2, 24500.00, 39),
(58, 1, 3, 3, 24900.00, 34),
(41, 3, 4, 4, 21900.00, 38),
(25, 5, 5, 1, 29800.00, 33),
(10, 7, 6, 2, 21200.00, 41),
(6, 9, 7, 3, 23500.00, 36),
(90, 11, 1, 4, 24500.00, 45),
(87, 13, 2, 1, 25000.00, 32),
(60, 15, 3, 2, 29000.00, 39),
(19, 17, 4, 3, 29900.00, 28),
(5, 19, 5, 4, 23200.00, 50),
(13, 20, 6, 1, 26000.00, 30);

INSERT INTO FactConsultation (date_id, patient_id, medecin_id, service_id, coût, duree) VALUES
(15, 5, 2, 2, 24600.00, 33),
(28, 10, 4, 1, 26700.00, 38),
(36, 8, 6, 3, 25550.00, 44),
(53, 13, 1, 4, 29300.00, 29),
(61, 16, 3, 2, 28000.00, 35),
(71, 6, 5, 1, 26100.00, 41),
(88, 18, 7, 4, 23050.00, 30);




--nombre de consultaion par mois
SELECT d.mois, d.annee, COUNT(fc.consultation_id) AS nombre_consultations
FROM DimDate d
LEFT JOIN FactConsultation fc ON d.date_id = fc.date_id
WHERE d.annee = 2024 AND d.mois IN (1, 2, 3)
GROUP BY d.annee, d.mois
ORDER BY d.mois;



--nombre de consultaion par service
SELECT d.mois, d.annee, s.nom_service, COUNT(fc.consultation_id) AS nombre_consultations
FROM DimDate d
CROSS JOIN DimService s
LEFT JOIN FactConsultation fc ON fc.date_id = d.date_id AND fc.service_id = s.service_id
WHERE d.annee = 2024 AND d.mois IN (1, 2, 3)
GROUP BY d.annee, d.mois, s.nom_service
ORDER BY d.mois, s.nom_service;


--nombre de consultaion par medecin
SELECT 
    m.nom, 
    m.prenom, 
    COUNT(fc.consultation_id) AS nombre_consultations
FROM 
    DimMedecin m
LEFT JOIN 
    FactConsultation fc ON m.medecin_id = fc.medecin_id
GROUP BY 
    m.nom, m.prenom
ORDER BY 
    nombre_consultations DESC;


---Coût total des consultations par mois et par service
SELECT 
    d.mois,
    d.annee,
    s.nom_service,
    SUM(fc.coût) AS cout_total_consultations
FROM 
    FactConsultation fc
JOIN 
    DimDate d ON fc.date_id = d.date_id
JOIN 
    DimService s ON fc.service_id = s.service_id
WHERE 
    d.annee = 2024 AND d.mois IN (1, 2, 3)
GROUP BY 
    d.annee, d.mois, s.nom_service
ORDER BY 
    d.mois, s.nom_service;


--autoriser des valeurs null pour ces colonnes
ALTER TABLE DimPatient
ALTER COLUMN region NVARCHAR(100) NULL;

ALTER TABLE DimPatient
ALTER COLUMN ville NVARCHAR(100) NULL;

ALTER TABLE DimPatient
ALTER COLUMN quartier NVARCHAR(100) NULL;



SELECT TOP 100 * FROM DimPatient;

--nombre de ligne dans chaque table 
SELECT 'Source' AS TableName, COUNT(*) AS NombreLignes FROM Hopital_OLTP.dbo.Patient
UNION ALL
SELECT 'Destination', COUNT(*) FROM DataMartHopital.dbo.DimPatient;



SELECT COUNT(*) FROM DimPatient;

--- verification si les donnee Medin sont copies dans DimMedecin

USE DataMartHopital;
GO

SELECT * FROM DimMedecin;



