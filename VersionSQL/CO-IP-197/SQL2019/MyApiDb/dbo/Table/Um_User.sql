/****** Object:  Table [dbo].[Um_User]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Um_User](
	[UserId] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[AdminPassword] [varchar](50) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[IsLoggedIn] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Seqn] [int] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_Um_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IX_Um_User] ON [dbo].[Um_User]
(
	[AdminPassword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Um_User_IsActive] ON [dbo].[Um_User]
(
	[IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
CREATE NONCLUSTERED INDEX [IX_Um_User_IsLoggedIn] ON [dbo].[Um_User]
(
	[IsLoggedIn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IX_Um_User_Password] ON [dbo].[Um_User]
(
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [UIX_Um_User_Username] ON [dbo].[Um_User]
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
ALTER TABLE [dbo].[Um_User] ADD  CONSTRAINT [DF_Um_User_AdminLogin]  DEFAULT ((0)) FOR [AdminPassword]
ALTER TABLE [dbo].[Um_User] ADD  CONSTRAINT [DF_Um_User_IsLoggedIn]  DEFAULT ((0)) FOR [IsLoggedIn]
ALTER TABLE [dbo].[Um_User] ADD  CONSTRAINT [DF_Um_User_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[Um_User] ADD  CONSTRAINT [DF_Um_User_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[Um_User]  WITH CHECK ADD  CONSTRAINT [FK_Um_User_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
ALTER TABLE [dbo].[Um_User] CHECK CONSTRAINT [FK_Um_User_EmployeeId]