# CREATE DATABASE PublicHealthClinic;
USE PublicHealthClinic;

-- CREATE TABLE Patient
    CREATE TABLE Patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(100)
);

-- CREATE TABLE ClinicVisit
    CREATE TABLE ClinicVisit (
    VisitID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    HealthWorkerID INT,
    VisitDate DATE NOT NULL,
    FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID),
    FOREIGN KEY (HealthWorkerID)
        REFERENCES HealthWorker(HealthWorkerID)
);

-- CREATE TABLE HealthWorker
    CREATE TABLE HealthWorker (
    HealthWorkerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(15)
);

-- CREATE TABLE Appointment
    CREATE TABLE Appointment (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    AppointmentDate DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID)
);

-- CREATE TABLE Diagnosis
    CREATE TABLE Diagnosis (
    DiagnosisID INT AUTO_INCREMENT PRIMARY KEY,
    VisitID INT,
    Description TEXT NOT NULL,
    DiagnosisDate DATE NOT NULL,
    FOREIGN KEY (VisitID)
        REFERENCES ClinicVisit(VisitID)
);

-- CREATE TABLE Treatment
    CREATE TABLE Treatment (
    TreatmentID INT AUTO_INCREMENT PRIMARY KEY,
    DiagnosisID INT,
    TreatmentDescription TEXT NOT NULL,
    Medication VARCHAR(100) NOT NULL,
    FOREIGN KEY (DiagnosisID)
        REFERENCES Diagnosis(DiagnosisID)
);

# INSERT TABLES

-- INSERT INTO Patient
  INSERT INTO Patient
(FirstName, LastName, DateOfBirth, Gender, PhoneNumber, Address)
VALUES
('John','Sesay','2000-05-12','Male','076123456','Freetown'),
('Mariam','Kamara','1998-10-22','Female','078987654','Bo');


-- INSERT INTO HealthWorker
  INSERT INTO HealthWorker
(Name, Role, PhoneNumber)
VALUES
('Dr. Bangura','Doctor','077111111'),
('Nurse Kanu','Nurse','077222222');

-- INSERT INTO Appointment
    INSERT INTO Appointment
(PatientID, AppointmentDate, Status)
VALUES
(1,'2026-07-01','Pending'),
(2,'2026-07-02','Completed');


-- UPDATE...
    UPDATE Appointment
SET Status='Completed'
WHERE AppointmentID=1;

-- DELETE...
    DELETE FROM Appointment
WHERE AppointmentID=2;

-- SELECT...
    SELECT User, Host
FROM mysql.user;

-- CREATE USER...
    CREATE USER 'john'@'localhost'
IDENTIFIED BY 'john123';

-- GRANT...
    GRANT ALL PRIVILEGES
ON PublicHealthClinic.*
TO 'john'@'localhost';
