--1
SELECT *
FROM ROOM_ALLOCATION
WHERE MONTH(admission_date) = 1;

--2
SELECT *
FROM PATIENT_MASTER
WHERE gender = 'F' AND disease NOT LIKE 'Asthma';

--3
SELECT gender, COUNT(*) AS total
FROM PATIENT_MASTER
GROUP BY gender;

--4
SELECT 
    p.pid AS patient_id,
    p.name AS patient_name,
    d.doctor_id,
    d.doctor_name,
    r.room_no,
    rm.room_type,
    r.admission_date
FROM PATIENT_MASTER p
JOIN DOCTOR_MASTER d ON p.doctor_id = d.doctor_id
JOIN ROOM_ALLOCATION r ON p.pid = r.pid
JOIN ROOM_MASTER rm ON r.room_no = rm.room_no;

--5
SELECT room_no
FROM ROOM_MASTER
WHERE room_no NOT IN (
    SELECT DISTINCT room_no FROM ROOM_ALLOCATION
);

--6
SELECT 
    ra.room_no,
    rm.room_type,
    COUNT(*) AS times_allocated
FROM ROOM_ALLOCATION ra
JOIN ROOM_MASTER rm ON ra.room_no = rm.room_no
GROUP BY ra.room_no, rm.room_type
HAVING COUNT(*) > 1;
