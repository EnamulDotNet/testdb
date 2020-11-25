/****** Object:  Table [dbo].[District]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[District](
	[DistrictId] [int] NOT NULL,
	[GeoCode] [char](2) NOT NULL,
	[DistrictName] [varchar](50) NOT NULL,
	[DistrictNameBn] [nvarchar](50) NULL,
	[DivisionId] [int] NOT NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF_District_Seqn]  DEFAULT ((1)) FOR [Seqn]
ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF_District_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF_District_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF_District_CDate]  DEFAULT (getdate()) FOR [CDate]