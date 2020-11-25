/****** Object:  Table [dbo].[Division]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Division](
	[DivisionId] [int] NOT NULL,
	[GeoCode] [char](2) NOT NULL,
	[DivisionName] [varchar](50) NOT NULL,
	[DivisionNameBn] [nvarchar](50) NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Division] PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_Seqn]  DEFAULT ((1)) FOR [Seqn]
ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_CDate]  DEFAULT (getdate()) FOR [CDate]