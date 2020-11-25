/****** Object:  Table [dbo].[Um_Menu]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Um_Menu](
	[id] [int] NOT NULL,
	[lvl] [tinyint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[shortName] [varchar](50) NULL,
	[lnk] [varchar](200) NOT NULL,
	[seqn] [tinyint] NOT NULL,
	[header] [varchar](100) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[icon] [varchar](50) NOT NULL,
	[ishomepage] [bit] NOT NULL,
	[isdefault] [bit] NOT NULL,
	[isdisable] [bit] NOT NULL,
	[isactive] [bit] NOT NULL,
	[ver] [tinyint] NOT NULL,
	[idate] [smalldatetime] NOT NULL,
	[isessionid] [int] NOT NULL,
	[edate] [smalldatetime] NOT NULL,
	[esessionid] [int] NOT NULL,
	[rowid] [smallint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Um_Menu_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_level]  DEFAULT ((0)) FOR [lvl]
ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_seqn]  DEFAULT ((0)) FOR [seqn]
ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_header]  DEFAULT ('Header') FOR [header]
ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_title]  DEFAULT ('title') FOR [title]
ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_icon]  DEFAULT ('caret-right') FOR [icon]
ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_ishomepage]  DEFAULT ((0)) FOR [ishomepage]
ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_isdefault]  DEFAULT ((0)) FOR [isdefault]
ALTER TABLE [dbo].[Um_Menu] ADD  CONSTRAINT [DF_Um_Menu_isdisable]  DEFAULT ((0)) FOR [isdisable]