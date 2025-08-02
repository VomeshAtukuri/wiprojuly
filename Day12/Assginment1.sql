-- Left side
--1
SELECT Name
FROM tblEmployees
WHERE CHARINDEX(' ', Name) = 0;
GO

--2
SELECT Name
FROM tblEmployees
WHERE LEN(Name) - LEN(REPLACE(Name, ' ', '')) = 2;
Go

--3
SELECT Name
FROM tblEmployees
WHERE 
    Name = 'Ram'
    OR Name LIKE 'Ram %'
    OR Name LIKE '% Ram'
    OR Name LIKE '% Ram %';
Go

--4
--.1
select EmployeeNumber, Name, CentreCode
from dbo.tblEmployees
where CentreCode = 65 or CentreCode = 11;
--.2
select COUNT(*)
from dbo.tblEmployees
where (CategoryCode = 65 and CentreCode <> 11) or ((CategoryCode <> 65 and CentreCode = 11));
--.3
select EmployeeNumber, Name, CentreCode, CategoryCode
from tblEmployees
where CategoryCode = 12 and CentreCode = 4;
--.4
select EmployeeNumber, Name, CentreCode, CategoryCode
from dbo.tblEmployees 
where (CategoryCode=12 and CentreCode=4)or (CategoryCode=13 and CentreCode=1);
--.5
select EmployeeNumber, Name
from dbo.tblEmployees
where EmployeeNumber = 127 or EmployeeNumber = 64;

--5
SELECT *
FROM dbo.tblCentreMaster;
Go

--6
SELECT DISTINCT EmployeeType
FROM tblEmployees;
Go

--7
SELECT Name, FatherName, DOB
FROM tblEmployees
WHERE PresentBasic > 3000;

SELECT Name, FatherName, DOB
FROM tblEmployees
WHERE PresentBasic < 3000;

SELECT Name, FatherName, DOB
FROM tblEmployees
WHERE PresentBasic BETWEEN 3000 AND 5000;


--8
SELECT *
FROM tblEmployees
WHERE Name LIKE '%KHAN';

SELECT *
FROM tblEmployees
WHERE Name LIKE 'CHANDRA%';

SELECT *
FROM tblEmployees
WHERE Name LIKE '[A-T].RAMESH';

-----------------------------------------------------------------------------------------------------------------------------
--Right side

--1
SELECT DepartmentCode, SUM(PresentBasic) AS TotalPresentBasic
FROM tblEmployees
GROUP BY DepartmentCode
HAVING SUM(PresentBasic) > 30000
ORDER BY DepartmentCode;

--2
SELECT 
    ServiceType,
    ServiceStatus,
    MAX(DATEDIFF(YEAR, DOB, GETDATE())) AS MaxAge,
    MIN(DATEDIFF(YEAR, DOB, GETDATE())) AS MinAge,
    AVG(DATEDIFF(MONTH, DOB, GETDATE())) / 12.0 AS AvgAgeYears
FROM tblEmployees
GROUP BY ServiceType, ServiceStatus;

--3
SELECT 
    ServiceType,
    ServiceStatus,
    MAX(DATEDIFF(MONTH, DOJ, GETDATE())) AS MaxServiceMonths,
    MIN(DATEDIFF(MONTH, DOJ, GETDATE())) AS MinServiceMonths,
    AVG(DATEDIFF(MONTH, DOJ, GETDATE())) AS AvgServiceMonths
FROM tblEmployees
GROUP BY ServiceType, ServiceStatus;

--4
SELECT DepartmentCode
FROM tblEmployees
GROUP BY DepartmentCode
HAVING SUM(PresentBasic) > 3 * AVG(PresentBasic);

--5
SELECT DepartmentCode
FROM tblEmployees
GROUP BY DepartmentCode
HAVING 
    SUM(PresentBasic) > 2 * AVG(PresentBasic)
    AND MAX(PresentBasic) >= 3 * MIN(PresentBasic);

--6
SELECT CentreCode
FROM tblEmployees
GROUP BY CentreCode
HAVING MAX(LEN(Name)) = 2 * MIN(LEN(Name));

--7
SELECT 
    ServiceType,
    ServiceStatus,
    MAX(DATEDIFF(MILLISECOND, DOJ, GETDATE())) AS MaxServiceMs,
    MIN(DATEDIFF(MILLISECOND, DOJ, GETDATE())) AS MinServiceMs,
    AVG(DATEDIFF(MILLISECOND, DOJ, GETDATE())) AS AvgServiceMs
FROM tblEmployees
GROUP BY ServiceType, ServiceStatus
ORDER BY ServiceType, ServiceStatus;

--8
select Name
from dbo.tblEmployees
where Name like '[ ]%' or Name like '%[ ]';

--9
SELECT Name
FROM tblEmployees
WHERE Name COLLATE Latin1_General_CS_AS = LOWER(Name);

--10
SELECT Name
FROM tblEmployees
WHERE Name COLLATE Latin1_General_CS_AS = UPPER(Name);

--11
SELECT Name
FROM tblEmployees
WHERE 
    LTRIM(RTRIM(Name)) LIKE '% %'
    AND 
    PARSENAME(REPLACE(Name, ' ', '.'), 1) = PARSENAME(REPLACE(Name, ' ', '.'), 2);

--12
SELECT Name
FROM tblEmployees
WHERE Name LIKE '%0%' OR Name LIKE '%1%' OR Name LIKE '%2%' OR 
      Name LIKE '%3%' OR Name LIKE '%4%' OR Name LIKE '%5%' OR 
      Name LIKE '%6%' OR Name LIKE '%7%' OR Name LIKE '%8%' OR 
      Name LIKE '%9%';

--13
SELECT *
FROM (
        select LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(emp.Name,'.',' '),' ',' %'),'% ',''),'%','') )) FormatedName                            
        from dbo.tblEmployees emp
      )DummyTable  
where LEFT(DummyTable.FormatedName,1)=SUBSTRING(DummyTable.FormatedName,PATINDEX('%[ ]%',DummyTable.FormatedName)+1,1)        
       AND DummyTable.FormatedName LIKE '%[A-Z]%[ ][A-Z]%'; 

--14
SELECT *
FROM (
        select LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(emp.Name,'.',' '),' ',' %'),'% ',''),'%','') )) FormatedName                            
        from dbo.tblEmployees emp
    )DummyTable 
    
WHERE lEFT(DummyTable.FormatedName,1)= SUBSTRING(DummyTable.FormatedName,PATINDEX('%[ ][A-Z]%',DummyTable.FormatedName)+1,1) AND     
   lEFT(DummyTable.FormatedName,1)= SUBSTRING(DummyTable.FormatedName,CHARINDEX(' ',DummyTable.FormatedName,CHARINDEX(' ',DummyTable.FormatedName)+1)+1,1)AND
   lEFT(DummyTable.FormatedName,1)= SUBSTRING(DummyTable.FormatedName,CHARINDEX(' ',DummyTable.FormatedName,CHARINDEX(' ',DummyTable.FormatedName,CHARINDEX(' ',DummyTable.FormatedName)+1)+1)+1,1)
   AND
   DummyTable.FormatedName LIKE '%[A-Z]%[ ][A-Z]%'

--15
SELECT DummyTable.S      
      FROM (
               select LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(emp.Name,'.',' '),' ',' %'),'% ',''),'%','') )) S
               from dbo.tblEmployees emp
           )DummyTable             
      WHERE ( LEN(SUBSTRING(DummyTable.S,1,PATINDEX('%[ ]%',DummyTable.S)))>4 AND
              LEFT(DummyTable.S,1)= LEFT(REVERSE(SUBSTRING(DummyTable.S,1,PATINDEX('%[ ]%',DummyTable.S)-1)),1) )                 
               OR              
             (LEN(DummyTable.S)-LEN(REPLACE(DummyTable.S,' ',''))+1 = 2 AND LEFT(SUBSTRING(DummyTable.S, (CHARINDEX(' ',DummyTable.S)+1) ,LEN(DummyTable.S)-CHARINDEX(' ',DummyTable.S)),1) =   LEFT(REVERSE(SUBSTRING(DummyTable.S, (CHARINDEX(' ',DummyTable.S)+1) ,LEN(DummyTable.S)-CHARINDEX(' ',DummyTable.S))),1)   )             
             OR             
              ( LEN(DummyTable.S)-LEN(REPLACE(DummyTable.S,' ',''))+1 = 3 AND LEFT(SUBSTRING(DummyTable.S, (CHARINDEX(' ',DummyTable.S,CHARINDEX(' ',DummyTable.S)+1)+1) ,LEN(DummyTable.S)-CHARINDEX(' ',DummyTable.S,CHARINDEX(' ',DummyTable.S)+1)),1)=LEFT(REVERSE(SUBSTRING(DummyTable.S, (CHARINDEX(' ',DummyTable.S,CHARINDEX(' ',DummyTable.S)+1)+1) ,LEN(DummyTable.S)-CHARINDEX(' ',DummyTable.S,CHARINDEX(' ',DummyTable.S)+1))),1)   )   

--16
--.1
SELECT PresentBasic
FROM dbo.tblEmployees
WHERE ROUND(PresentBasic,-2)=PresentBasic AND PresentBasic <>0;              
--.2
select Name,PresentBasic 
from dbo.tblEmployees
where FLOOR(PresentBasic/100)=(PresentBasic/100) AND PresentBasic<>0;
--.3
select Name,PresentBasic 
from dbo.tblEmployees 
where (PresentBasic%100)=0 AND PresentBasic<>0;
--.4
select Name,PresentBasic 
from dbo.tblEmployees 
where CEILING(PresentBasic/100)=(PresentBasic/100) AND PresentBasic<>0;

--17
SELECT emp.DepartmentCode,COUNT(emp.PresentBasic),
     COUNT(CASE
        WHEN ROUND(emp.PresentBasic,-2)=emp.PresentBasic AND emp.PresentBasic<>0 THEN emp.PresentBasic
     END)
FROM dbo.tblEmployees emp
GROUP BY emp.DepartmentCode
HAVING COUNT(emp.PresentBasic)=COUNT(CASE
        WHEN ROUND(emp.PresentBasic,-2)=emp.PresentBasic AND emp.PresentBasic<>0 THEN emp.PresentBasic
     END)
