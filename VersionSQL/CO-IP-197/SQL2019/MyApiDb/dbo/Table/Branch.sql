/****** Object:  Table [dbo].[Branch]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Branch](
	[BranchId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[BranchName] [varchar](150) NOT NULL,
	[BranchNameBn] [nvarchar](150) NULL,
	[BranchAddress] [varchar](150) NULL,
	[BranchAddressBn] [nvarchar](150) NULL,
	[VillageId] [int] NOT NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF_Branch_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF_Branch_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_CompanyId]
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_VillageId] FOREIGN KEY([VillageId])
REFERENCES [dbo].[Village] ([VillageId])
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_VillageId]