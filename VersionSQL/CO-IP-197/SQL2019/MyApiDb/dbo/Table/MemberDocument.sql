/****** Object:  Table [dbo].[MemberDocument]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MemberDocument](
	[MemberId] [int] NOT NULL,
	[MemberFormPhoto] [varbinary](max) NULL,
	[MemberPhoto] [varbinary](max) NULL,
	[MemberNidPhoto] [varbinary](max) NULL,
	[MemberTinPhoto] [varbinary](max) NULL,
	[MemberBankStatementPhoto] [varbinary](max) NULL,
	[MemberElectricityBillPhoto] [varbinary](max) NULL,
	[MemberMortgagePhoto] [varbinary](max) NULL,
	[GuarantorPhoto] [varbinary](max) NULL,
	[GuarantorNidPhoto] [varbinary](max) NULL,
	[NomineePhoto] [varbinary](max) NULL,
	[NomineeNidPhoto] [varbinary](max) NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_MemberDocument] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MemberDocument] ADD  CONSTRAINT [DF_MemberDocument_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[MemberDocument] ADD  CONSTRAINT [DF_MemberDocument_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[MemberDocument]  WITH CHECK ADD  CONSTRAINT [FK_MemberDocument_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
ALTER TABLE [dbo].[MemberDocument] CHECK CONSTRAINT [FK_MemberDocument_MemberId]