-- Number Functions 

select Abs(-12)
GO
select POWER(2,3) 
GO
select SQRT(49) 
GO
select CEILING(12.00000001)
GO
select FLOOR(12.999999)
GO

-- String Function

/* charindex() : Used to display the first occurence of the given character  */
select CHARINDEX('l','hello') 
GO
select Nam, CHARINDEX('a',nam) from Emp 
GO
/* Reverse() : Used to display string in reverse order */
select Reverse('Rajesh') 
GO
select Nam,Reverse(Nam) from Emp 
GO
/* Len() : Display's length of string  */ 
select len('Charishma Gada')
GO
select nam, len(nam) from Emp
GO
/* Left() : Displays no.of left-side chars */
select left('Prasanna',4) 
GO
/* Right() : Displays no.of right-side chars */ 
select right('Prasanna',4)
GO
/* Upper() : Dispalys string in Upper Case */ 
select nam, upper(nam) from Emp
GO
/* Lower() : Displays string in Lower Case */ 
select nam, Lower(nam) from Emp 
GO
/* Substring() : Used to display part of the string */ 
select SUBSTRING('welcome to sql',5,8) 
GO
/* Replace() : used to replace old value/string with new value/string in all occurrences */ 
SELECT REPLACE('Dotnet Training','Dotnet','Java') 
GO

-- Aggregate Functions 

-- sum() : used to perform sum operation 
select sum(basic) from Emp 
GO
-- Avg() : Displays avg operation 
select avg(basic) from Emp 
GO
-- Max() : Display max value 
select max(basic) from Emp 
GO
-- Min() : Displays Min. Value
select min(basic) from Emp 
GO
-- count(*) : Displays total no.of records 
select count(*) from Emp 
GO
-- count(column_name) : displays count for that column not null values 
select count(basic) as 'Count of Basic' from Emp
Go

-- Date Functions

-- GetDate() : used to display today's date 

select GETDATE() 
GO

select convert(varchar,GETDATE(),1) 
Go

select convert(varchar,GETDATE(),2) 
Go

select convert(varchar,GETDATE(),101) 
Go

select convert(varchar,GETDATE(),103) 
Go

/* DatePart() : used to display the specific portion of the given date */

select datepart(dd,getdate())
select datepart(mm,getdate())
select datepart(yy,getdate())
select datepart(hh,getdate())
select datepart(mi,getdate())
select datepart(ss,getdate())
select datepart(ms,getdate())
select datepart(dw,getdate())
select datepart(qq,getdate())

-- DateName() : Displays date part in engligh words 

select datename(dw,getdate());


select convert(varchar,DATEPART(dd,getdate())) + '/' + 
convert(varchar,datepart(mm,getdate())) + '/' + 
convert(varchar,DATEPART(yy,getdate()))
GO

select DATENAME(mm, getdate())
GO

/* DateAdd() : Used to add no.of days or months or years to the particular date */

select DATEADD(dd,3,getdate())

select dateadd(mm,3,getdate())

select DATEADD(yy,3,getdate())

/* DateDiff() : used to Display difference between Two Dates */ 

select DATEDIFF(dd,'03/09/1980',getdate())
select DATEDIFF(yy,'03/09/1980',getdate())

