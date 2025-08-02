use sqlpractice 
Go


select * from INFORMATION_SCHEMA.TABLES
GO


sp_help Emp
GO


select * from Emp 
GO


select Empno 'Employ No', nam 'Employ Name', basic 'Salary'
	from Emp 
GO

-- Display All records whose Basic > 50000 

select * from Emp 
WHERE basic > 50000
GO



select * from Emp 
where Dept='Dotnet'
GO

select * from Emp 
where nam='Swetha'
GO

-- Between...AND

select * from EMP 
WHERE Basic Between 50000 and 90000
GO

select * from EMP 
WHERE Basic NOT Between 50000 and 90000
GO

-- IN Clause

select * from Emp 
where dept in('Dotnet','Java','Sql')
GO

select * from Emp 
where dept NOT IN('Dotnet','Java','Sql')
GO

select * from Emp 
where nam IN('Manu','Satish','Swapna','Smitha','Rushi')
GO

-- LIKE for sting Matching

select * from Emp where nam LIKE 'S%' 
GO

--  name ends with 'A' 

select * from Emp where nam LIKE '%A'
GO


-- Distinct 

select Dept from Emp
GO

select distinct Dept from Emp 
GO

-- Order By 

select * from Emp order by nam 
GO

select * from Emp order by Basic DESC
GO

select * from Emp order by Dept, Nam 
GO

select * from Emp order by Dept, Nam DESC
GO

