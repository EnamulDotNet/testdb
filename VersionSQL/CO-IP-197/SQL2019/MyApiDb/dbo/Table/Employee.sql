/****** Object:  Table [dbo].[Employee]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] NOT NULL,
	[EmployeeCode] [varchar](10) NOT NULL,
	[EmployeeName] [varchar](50) NOT NULL,
	[EmployeeNameBn] [nvarchar](50) NULL,
	[EmployeeMobile] [varchar](20) NULL,
	[EmployeeEmail] [varchar](50) NULL,
	[EnployeePhoto] [varbinary](max) NULL,
	[BranchId] [int] NULL,
	[VillageId] [int] NULL,
	[EmployeePermanentAddress] [varchar](150) NULL,
	[EmployeePermanentAddressBn] [nvarchar](150) NULL,
	[EmployeePresentAddress] [varchar](150) NULL,
	[EmployeePresentAddressBn] [nvarchar](150) NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([BranchId])
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_BranchId]
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_VillageId] FOREIGN KEY([VillageId])
REFERENCES [dbo].[Village] ([VillageId])
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_VillageId]