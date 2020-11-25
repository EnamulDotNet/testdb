/****** Object:  Table [dbo].[Um_Role]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Um_Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[RoleNameBn] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[Seqn] [int] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Um_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [UIX_Um_Role_RoleName] ON [dbo].[Um_Role]
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Um_Role] ADD  CONSTRAINT [DF_Um_Role_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Um_Role] ADD  CONSTRAINT [DF_Um_Role_Revision]  DEFAULT ((0)) FOR [Revision]