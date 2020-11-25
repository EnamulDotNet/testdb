/****** Object:  Table [dbo].[Village]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Village](
	[VillageId] [int] NOT NULL,
	[GeoCode] [varchar](20) NOT NULL,
	[VillageName] [varchar](50) NOT NULL,
	[VillageNameBn] [nvarchar](50) NULL,
	[UnionOrWardId] [int] NOT NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Village] PRIMARY KEY CLUSTERED 
(
	[VillageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Village] ADD  CONSTRAINT [DF_Village_Seqn]  DEFAULT ((1)) FOR [Seqn]
ALTER TABLE [dbo].[Village] ADD  CONSTRAINT [DF_Village_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Village] ADD  CONSTRAINT [DF_Village_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[Village] ADD  CONSTRAINT [DF_Village_CDate]  DEFAULT (getdate()) FOR [CDate]