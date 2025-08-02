select * from Emp;
Go

-- First Question
SELECT
    nam AS input_string,
    'e' AS search_char,
    CASE 
	  WHEN CHARINDEX('e', LOWER(nam)) = 0 THEN 0
      ELSE LEN(TRIM(nam)) - CHARINDEX('e', REVERSE(LOWER(TRIM(nam)))) + 1
    END AS last_occurrence_position
	from Emp;
GO

-- Second Question
SELECT
    LEFT('Venkata Narayana', CHARINDEX(' ', 'Venkata Narayana') - 1) AS FirstName,
    RIGHT('Venkata Narayana', LEN('Venkata Narayana') - CHARINDEX(' ', 'Venkata Narayana')) AS LastName;
Go

-- Third Question
SELECT nam as Name,LEN(nam) - LEN(REPLACE(LOWER(nam), 'i', '')) AS e_count from Emp;
Go

-- Fourth Question
SELECT EOMONTH(DATEADD(MONTH, 1, GETDATE())) AS LastDayOfNextMonth;
Go

-- Fifth Question
SELECT MONTH(DATEADD(MONTH, -1, GETDATE())) AS FirstDayofLastMonth;
Go

