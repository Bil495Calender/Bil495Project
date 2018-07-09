--
-- File generated with SQLiteStudio v3.1.1 on Pzt Tem 9 23:42:28 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Appointment
DROP TABLE IF EXISTS Appointment;
CREATE TABLE Appointment (Dates DATE NOT NULL, ID INT (5) PRIMARY KEY, Comment VARCHAR (150) NOT NULL);
INSERT INTO Appointment (Dates, ID, Comment) VALUES ('08.07.2018', 1, 'birthday');
INSERT INTO Appointment (Dates, ID, Comment) VALUES ('09.07.2018', 2, 'exam');
INSERT INTO Appointment (Dates, ID, Comment) VALUES ('15.07.2018', 3, 'demo');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
