USE CMS
GO

CREATE TABLE [dbo].[Customer](
	[custId] [int] NOT NULL,
	[custName] [varchar](30) NULL,
	[custUserName] [varchar](30) NULL,
	[custPassword] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[state] [varchar](30) NULL,
	[email] [varchar](30) NULL,
	[mobileNo] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[custId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE cms;
GO

INSERT INTO dbo.Customer (custId, custName, custUserName, custPassword, city, state, email, mobileNo)
VALUES 
(1, 'John Doe', 'jdoe', 'pass123', 'New York', 'NY', 'jdoe@example.com', '1234567890'),
(2, 'Jane Smith', 'jsmith', 'abc@456', 'Los Angeles', 'CA', 'jsmith@example.com', '9876543210'),
(3, 'Raj Kumar', 'rajk', 'raj@2025', 'Mumbai', 'MH', 'rajk@example.com', '9988776655'),
(4, 'Emily Johnson', 'emj', 'emily!pwd', 'Chicago', 'IL', 'emilyj@example.com', '1122334455'),
(5, 'Carlos Silva', 'carlos', 'silva2025', 'São Paulo', 'SP', 'carlos@example.com', '5566778899');
GO

select * from dbo.Customer;

