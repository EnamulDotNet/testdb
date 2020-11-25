/****** Object:  Table [dbo].[Um_RoleMenu]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Um_RoleMenu](
	[RoleId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
 CONSTRAINT [PK_Um_RoleMenu] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Um_RoleMenu] ADD  CONSTRAINT [DF_Um_RoleMenu_IsActive]  DEFAULT ((1)) FOR [IsActive]