/****** Object:  Table [dbo].[Member]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Member](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[MemberCode] [varchar](20) NOT NULL,
	[MemberFormNo] [varchar](20) NULL,
	[MemberName] [varchar](50) NOT NULL,
	[MemberNameBn] [nvarchar](50) NULL,
	[GuardianName] [varchar](50) NULL,
	[GuardianNameBn] [nvarchar](50) NULL,
	[SamityId] [int] NOT NULL,
	[BranchId] [int] NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_SamityId] FOREIGN KEY([SamityId])
REFERENCES [dbo].[Samity] ([SamityId])
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_SamityId]