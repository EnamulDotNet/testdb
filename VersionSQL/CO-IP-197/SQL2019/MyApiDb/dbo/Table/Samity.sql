/****** Object:  Table [dbo].[Samity]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Samity](
	[SamityId] [int] IDENTITY(1,1) NOT NULL,
	[GeoCode] [varchar](20) NOT NULL,
	[SamityName] [varchar](50) NOT NULL,
	[SamityNameBn] [nvarchar](50) NULL,
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
 CONSTRAINT [PK_Samity] PRIMARY KEY CLUSTERED 
(
	[SamityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Samity] ADD  CONSTRAINT [DF_Samity_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Samity] ADD  CONSTRAINT [DF_Samity_Revision]  DEFAULT ((0)) FOR [Revision]