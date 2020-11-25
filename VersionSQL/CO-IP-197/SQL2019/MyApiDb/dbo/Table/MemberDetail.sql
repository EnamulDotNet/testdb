/****** Object:  Table [dbo].[MemberDetail]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MemberDetail](
	[MemberId] [int] NOT NULL,
	[Mobile] [varchar](15) NOT NULL,
	[MobileHome] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Nid] [varchar](30) NOT NULL,
	[PresentAddress] [varchar](150) NULL,
	[PermanentAddress] [varchar](150) NULL,
	[FatherName] [varchar](50) NULL,
	[FatherNameBn] [nvarchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[MotherNameBn] [nvarchar](50) NULL,
	[SpouseName] [varchar](50) NULL,
	[SpouseNameBn] [nvarchar](50) NULL,
	[GuarantorName] [varchar](50) NOT NULL,
	[GuarantorNameBn] [nvarchar](50) NOT NULL,
	[GuarantorMobile] [varchar](15) NOT NULL,
	[GuarantorNid] [varchar](30) NOT NULL,
	[GuarantorAddress] [varchar](150) NOT NULL,
	[GuarantorAddressBn] [nvarchar](150) NOT NULL,
	[NomineeName] [varchar](50) NOT NULL,
	[NomineeNameBn] [nvarchar](50) NOT NULL,
	[NomineeMobile] [varchar](15) NOT NULL,
	[NomineeNid] [varchar](30) NOT NULL,
	[NomineeAddress] [varchar](150) NOT NULL,
	[NomineeAddressBn] [nvarchar](150) NOT NULL,
	[NomineeRelationshipId] [int] NOT NULL,
	[Seqn] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Revision] [int] NOT NULL,
	[CDate] [datetime2](3) NULL,
	[CUserId] [int] NULL,
	[CSessionId] [int] NULL,
	[EDate] [datetime2](3) NULL,
	[EUserId] [int] NULL,
	[ESessionId] [int] NULL,
 CONSTRAINT [PK_MemberDetail] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MemberDetail] ADD  CONSTRAINT [DF_MemberDetail_IsActive]  DEFAULT ((1)) FOR [IsActive]
ALTER TABLE [dbo].[MemberDetail] ADD  CONSTRAINT [DF_MemberDetail_Revision]  DEFAULT ((0)) FOR [Revision]
ALTER TABLE [dbo].[MemberDetail]  WITH CHECK ADD  CONSTRAINT [FK_MemberDetail_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
ALTER TABLE [dbo].[MemberDetail] CHECK CONSTRAINT [FK_MemberDetail_MemberId]