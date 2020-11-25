/****** Object:  Table [dbo].[UnionOrWard]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[UnionOrWard](
	[UnionOrWardId] [int] NOT NULL,
	[GeoCode] [char](2) NOT NULL,
	[UnionOrWardName] [varchar](50) NOT NULL,
	[UnionOrWardNameBn] [nvarchar](50) NULL,
	[UpazilaId] [int] NOT NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NOT NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_UnionOrWard] PRIMARY KEY CLUSTERED 
(
	[UnionOrWardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[UnionOrWard] ADD  CONSTRAINT [DF_UnionOrWard_Seqn]  DEFAULT ((1)) FOR [Seqn]
ALTER TABLE [dbo].[UnionOrWard] ADD  CONSTRAINT [DF_UnionOrWard_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[UnionOrWard] ADD  CONSTRAINT [DF_UnionOrWard_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[UnionOrWard] ADD  CONSTRAINT [DF_UnionOrWard_CDate]  DEFAULT (getdate()) FOR [CDate]