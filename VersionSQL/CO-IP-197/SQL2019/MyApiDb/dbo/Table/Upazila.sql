/****** Object:  Table [dbo].[Upazila]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Upazila](
	[UpazilaId] [int] NOT NULL,
	[GeoCode] [char](2) NOT NULL,
	[UpazilaName] [varchar](50) NOT NULL,
	[UpazilaNameBn] [nvarchar](50) NULL,
	[DistrictId] [int] NOT NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NOT NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Upazila] PRIMARY KEY CLUSTERED 
(
	[UpazilaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Upazila] ADD  CONSTRAINT [DF_Upazila_Seqn]  DEFAULT ((1)) FOR [Seqn]
ALTER TABLE [dbo].[Upazila] ADD  CONSTRAINT [DF_Upazila_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Upazila] ADD  CONSTRAINT [DF_Upazila_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[Upazila] ADD  CONSTRAINT [DF_Upazila_CDate]  DEFAULT (getdate()) FOR [CDate]