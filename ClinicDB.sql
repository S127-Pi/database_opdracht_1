-- 
-- PRAGMA foreign_keys = off;
-- BEGIN TRANSACTION;

-- Table: Clinic
DROP TABLE IF EXISTS Clinic;
CREATE TABLE Clinic (
  C_ID INTEGER,
  C_Name TEXT,
  C_Address TEXT,
  PRIMARY KEY (C_ID)
);
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11001, 'Golden Valley Clinic', 'Berend Lane');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11002, 'Westview Hospital', 'West Virginia Avenue');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11003, 'Silver Oak Medical Clinic', 'Hill Street');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11004, 'Sapphire Lake Medical Clinic', 'Ella Street');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11005, 'Greenlawn Medical Center', 'Berend Lane');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11006, 'Two Point Hospital', 'Ella Street');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11007, 'Pokemon Medical Center', 'Bates Brothers Road');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11008, 'Angelwing Clinic', 'Red Maple Drive');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11009, 'Northshore Medical Center', 'Haymond Road');
INSERT INTO Clinic (C_ID, C_Name, C_Address) VALUES (11010, 'Riverside Hospital Center', 'Hill Street');



-- Table: Doctor
DROP TABLE IF EXISTS Doctor;
CREATE TABLE Doctor (
  D_ID INTEGER,
  D_Name TEXT,
  Speciality TEXT,
  PRIMARY KEY (D_ID)
);
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20101, 'Nier Guy', 'Allergists');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20102, 'Philip Kick', 'Otolaryngologists');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20103, 'George Oakville', 'General practitioner');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20104, 'Arthur Clerk', 'General practitioner');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20105, 'Robert Hein', 'General practitioner');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20106, 'Ted Chang', 'Psychiatrists');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20107, 'Robert Hein', 'General practitioner');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20108, 'Steven Kirk', 'General practitioner');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20109, 'Jack Robinson', 'General practitioner');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20110, 'Allen Smith', 'General practitioner');
INSERT INTO Doctor (D_ID, D_Name, Speciality) VALUES (20111, 'Ray Blackberry', 'General practitioner');



-- Table: Works_In
DROP TABLE IF EXISTS Works_In;
CREATE TABLE Works_In (
	C_ID INTEGER, 
	D_ID INTEGER, 
	PRIMARY KEY (C_ID, D_ID), 
	FOREIGN KEY (C_ID) REFERENCES Clinic,
	FOREIGN KEY (D_ID) REFERENCES Doctor
);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11004, 20101);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11007, 20102);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11005, 20103);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11009, 20104);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11010, 20105);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11004, 20106);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11002, 20107);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11008, 20108);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11001, 20109);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11002, 20110);
INSERT INTO Works_In (C_ID, D_ID) VALUES (11002, 20111);



-- Table: Patient
DROP TABLE IF EXISTS Patient;
CREATE TABLE Patient (
  P_ID INTEGER,
  P_FirstName TEXT,
  P_LastName TEXT,
  P_Address TEXT,
  P_Age INTEGER,
  Insurance TEXT,
  Symptoms TEXT,
  PRIMARY KEY (P_ID)
);
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300101, 'Aart', 'Baas', 'Berend Lane', 18, 'CNVZ', 'Anxiety');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300102, 'Ryan', 'Alvarez', 'Ella Street', 25, 'OZ', 'Allergies');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300103, 'Sandra', 'Johnson', 'West Virginia Avenue', 30, 'Zilveren Ster', 'Anxiety');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300104, 'Thomas', 'Brown', 'Hill Street', 48, 'OZ', 'Fever');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300105, 'Jennifer', 'Mendez', 'Colonial Drive', 25, 'Zilveren Ster', 'Diarrhoea');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300106, 'Cindel', 'Siemons', 'Berend Lane', 56, 'CNVZ', 'Migraine');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300107, 'James', 'Doyle', 'Ella Street', 37, 'OZ', 'Fever');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300108, 'Irena', 'Johnson', 'Berend Lane', 46, 'Zilveren Ster', 'Fever');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300109, 'Kathleen', 'Wiggins', 'Bates Brothers Road', 63, 'CNVZ', 'Earache');
INSERT INTO Patient (P_ID, P_FirstName, P_LastName, P_Address, P_Age, Insurance, Symptoms) VALUES (300110, 'Ryan', 'Mendez', 'Haymond Road', 25, 'OZ', 'Fever');



-- Table: Treats
DROP TABLE IF EXISTS Treats;
CREATE TABLE Treats (
  D_ID INTEGER,
  P_ID INTEGER,
  Prescription INTEGER,
  Treatment_Status BOOLEAN,
  PRIMARY KEY(D_ID, P_ID),
  FOREIGN KEY (D_ID) REFERENCES Doctor,
  FOREIGN KEY (P_ID) REFERENCES Patient
);
-- NEEDS DATA STILL -- 
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20101, 300102, 20210301, 1);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20102, 300109, 20210302, 1);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20103, 300105, 20210303, 0);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20106, 300101, 20210304, 1);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20111, 300104, 20210305, 0);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20109, 300107, 20210306, 0);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20111, 300108, 20210307, 1);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20108, 300110, 20210308, 1);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20106, 300106, 20210309, 0);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20106, 300103, 20210310, 1);
INSERT INTO Treats (D_ID, P_ID, Prescription, Treatment_Status) VALUES (20111, 300102, 20210311, 0);



-- Table: Visitor
DROP TABLE IF EXISTS Visitor;
CREATE TABLE Visitor (
  V_ID INTEGER,
  V_FirstName TEXT,
  V_LastName TEXT,
  PRIMARY KEY (V_ID)
);
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50001, 'Johannes', 'Baas');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50002, 'Anne', 'Doyle');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50003, 'Rick', 'Alvarez');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50004, 'Eric', 'Brown');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50005, 'Bob', 'Johnson');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50006, 'Catherine', 'Mendez');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50007, 'Henry', 'Siemons');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50008, 'Iris', 'Wiggins');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50009, 'Jane', 'Mendez');
INSERT INTO Visitor (V_ID, V_FirstName, V_LastName) VALUES (50010, 'Laurance', 'Johnson');



-- Table: Visits
DROP TABLE IF EXISTS Visits;
CREATE TABLE Visits (
  P_ID INTEGER,
  V_ID INTEGER,
  PRIMARY KEY (P_ID, V_ID),
  FOREIGN KEY (P_ID) REFERENCES Patient,
  FOREIGN KEY (V_ID) REFERENCES Visitor
);
INSERT INTO Visits (P_ID, V_ID) VALUES (300101, 50001);
INSERT INTO Visits (P_ID, V_ID) VALUES (300107, 50002);
INSERT INTO Visits (P_ID, V_ID) VALUES (300102, 50003);
INSERT INTO Visits (P_ID, V_ID) VALUES (300104, 50004);
INSERT INTO Visits (P_ID, V_ID) VALUES (300103, 50005);
INSERT INTO Visits (P_ID, V_ID) VALUES (300105, 50006);
INSERT INTO Visits (P_ID, V_ID) VALUES (300106, 50007);
INSERT INTO Visits (P_ID, V_ID) VALUES (300109, 50008);
INSERT INTO Visits (P_ID, V_ID) VALUES (300110, 50009);
INSERT INTO Visits (P_ID, V_ID) VALUES (300103, 50010);

-- COMMIT TRANSACTION;
-- PRAGMA foreign_keys = on;
