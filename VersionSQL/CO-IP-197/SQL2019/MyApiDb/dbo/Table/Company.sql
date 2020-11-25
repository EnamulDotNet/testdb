/****** Object:  Table [dbo].[Company]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] NOT NULL,
	[CompanyName] [varchar](150) NOT NULL,
	[CompanyNameBn] [nvarchar](150) NULL,
	[CompanyLogo] [varbinary](max) NULL,
	[CompanyOwnerName] [varchar](50) NULL,
	[CompanyOwnerNameBn] [nvarchar](50) NULL,
	[CompanyOwnerMobile] [varchar](50) NULL,
	[CompanyOwnerEmail] [varchar](50) NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_Revision]  DEFAULT ((0)) FOR [Revision]