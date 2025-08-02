-- 1. Create the database (SQL Server style)
IF DB_ID('HMS') IS NULL
    CREATE DATABASE HMS;
GO

USE HMS;
GO

-- 2. Drop tables in correct dependency order
IF OBJECT_ID('ROOM_ALLOCATION', 'U') IS NOT NULL DROP TABLE ROOM_ALLOCATION;
IF OBJECT_ID('PATIENT_MASTER', 'U') IS NOT NULL DROP TABLE PATIENT_MASTER;
IF OBJECT_ID('ROOM_MASTER', 'U') IS NOT NULL DROP TABLE ROOM_MASTER;
IF OBJECT_ID('DOCTOR_MASTER', 'U') IS NOT NULL DROP TABLE DOCTOR_MASTER;
GO

-- 3. Create DOCTOR_MASTER table
CREATE TABLE DOCTOR_MASTER (
    doctor_id VARCHAR(15) PRIMARY KEY,
    doctor_name VARCHAR(15) NOT NULL,
    dept VARCHAR(15) NOT NULL
);
GO

-- 4. Insert into DOCTOR_MASTER
INSERT INTO DOCTOR_MASTER (doctor_id, doctor_name, dept) VALUES
('D0001', 'Ram', 'ENT'),
('D0002', 'Rajan', 'ENT'),
('D0003', 'Smita', 'Eye'),
('D0004', 'Bhavan', 'Surgery'),
('D0005', 'Sheela', 'Surgery'),
('D0006', 'Nethra', 'Surgery');
GO

-- 5. Create ROOM_MASTER table
CREATE TABLE ROOM_MASTER (
    room_no VARCHAR(15) PRIMARY KEY,
    room_type VARCHAR(15) NOT NULL,
    status VARCHAR(15) NOT NULL
);
GO

-- 6. Insert into ROOM_MASTER
INSERT INTO ROOM_MASTER (room_no, room_type, status) VALUES
('R0001', 'AC', 'occupied'),
('R0002', 'Suite', 'vacant'),
('R0003', 'NonAC', 'vacant'),
('R0004', 'NonAC', 'occupied'),
('R0005', 'AC', 'vacant'),
('R0006', 'AC', 'occupied');
GO

-- 7. Create PATIENT_MASTER (doctor_id VARCHAR(15) to match foreign key)
CREATE TABLE PATIENT_MASTER (
    pid VARCHAR(15) PRIMARY KEY,
    name VARCHAR(15) NOT NULL,
    age INT NOT NULL,
    weight INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phoneno VARCHAR(10) NOT NULL,
    disease VARCHAR(50) NOT NULL,
    doctor_id VARCHAR(15) NOT NULL,
    FOREIGN KEY (doctor_id) REFERENCES DOCTOR_MASTER(doctor_id)
);
GO

-- 8. Insert into PATIENT_MASTER
INSERT INTO PATIENT_MASTER (pid, name, age, weight, gender, address, phoneno, disease, doctor_id) VALUES
('P0001', 'Gita', 35, 65, 'F', 'Chennai', '9867145678', 'Eye Infection', 'D0003'),
('P0002', 'Ashish', 40, 70, 'M', 'Delhi', '9845675678', 'Asthma', 'D0003'),
('P0003', 'Radha', 25, 60, 'F', 'Chennai', '9867166678', 'Pain in heart', 'D0005'),
('P0004', 'Chandra', 28, 55, 'F', 'Bangalore', '9978675567', 'Asthma', 'D0001'),
('P0005', 'Goyal', 42, 65, 'M', 'Delhi', '8967533223', 'Pain in Stomach', 'D0004');
GO

-- 9. Create ROOM_ALLOCATION
CREATE TABLE ROOM_ALLOCATION (
    room_no VARCHAR(15),
    pid VARCHAR(15),
    admission_date DATE NOT NULL,
    release_date DATE,
    FOREIGN KEY (room_no) REFERENCES ROOM_MASTER(room_no),
    FOREIGN KEY (pid) REFERENCES PATIENT_MASTER(pid)
);
GO

-- 10. Insert into ROOM_ALLOCATION
INSERT INTO ROOM_ALLOCATION (room_no, pid, admission_date, release_date) VALUES
('R0001', 'P0001', '2016-10-15', '2016-10-26'),
('R0002', 'P0002', '2016-11-15', '2016-11-26'),
('R0002', 'P0003', '2016-12-01', '2016-12-30'),
('R0004', 'P0001', '2017-01-01', '2017-01-30');
GO
