

-- sub queries
  select max(basic) from Employ;

  select name from Employ where basic = (select max(basic) from Employ) 
  GO

  -- Second Highest sal

  select max(basic) from Employ where basic < 
  (select Max(basic) from Employ)

  -- Name of second Highest sal

  select Name from Employ where basic = (
    select max(basic) from Employ where basic < 
  (select Max(basic) from Employ))
  GO

  select * from Policy;

  select PolicyId, AppNumber, ModalPremium, AnnualPremium,
  ROW_NUMBER() OVER(Order By AnnualPremium desc) 'Rno'
  from Policy
  GO

  select PolicyId, AppNumber, ModalPremium, AnnualPremium,
  RANK() OVER(Order By AnnualPremium desc) 'Rno'
  from Policy
  GO

  select PolicyId, AppNumber, ModalPremium, AnnualPremium,
  DENSE_RANK() OVER(Order By AnnualPremium desc) 'Rno'
  from Policy
  GO

  select * from Policy
  GO

  select max(annualpremium) from Policy 
  GO

 
  select PolicyId from Policy WHERE AnnualPremium = 
  (select MAX(annualpremium) from  Policy)

  select max(annualpremium) from Policy WHERE AnnualPremium < 
  (select max(annualpremium) from Policy)



select * from Employ where Empno = ANY(select Empno from LeaveHistory)
GO
 

select * from Agent WHERE AgentId = ANY(select AgentId from AgentPolicy) 


select * from Policy WHERE PolicyId = ANY (select PolicyId from AgentPolicy) 
GO


select * from Employ WHERE Empno <> ALL(select Empno from LeaveHistory) 
GO

select * from Agent where AgentId <> ALL(select AgentId from AgentPolicy) 
GO

select * from Policy WHERE PolicyId <> ALL(select PolicyId from AgentPolicy) 
GO
