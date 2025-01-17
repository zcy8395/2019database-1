create database [2019database]
USE [2019database]
GO
/****** Object:  Table [dbo].[Perm]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perm](
	[pmt_id] [int] NOT NULL,
	[per_context] [char](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[pmt_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admission]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admission](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_type] [char](10) NULL,
	[u_mailbox] [char](20) NULL,
	[adm] [char](10) NULL,
	[pawd] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Major]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[mjr_id] [int] IDENTITY(1,1) NOT NULL,
	[mjr_name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mjr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[rep_id] [int] NOT NULL,
	[tch_id] [int] NOT NULL,
	[comments] [text] NOT NULL,
	[score] [int] NOT NULL,
 CONSTRAINT [PK_Score_table] PRIMARY KEY CLUSTERED 
(
	[rep_id] ASC,
	[tch_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportType]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportType](
	[rept_id] [int] IDENTITY(1,1) NOT NULL,
	[report_type] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Report_type_table] PRIMARY KEY CLUSTERED 
(
	[rept_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProblemType]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemType](
	[plt_id] [int] IDENTITY(1,1) NOT NULL,
	[pl_type] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plt_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Perm]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Perm](
	[u_id] [int] NOT NULL,
	[pmt_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[tch_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NOT NULL,
	[tch_name] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tch_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stu_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NULL,
	[SN] [nvarchar](10) NOT NULL,
	[mjr_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_in]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_in](
	[log_id] [int] NOT NULL,
	[u_id] [int] NULL,
	[in_time] [datetime] NULL,
	[out_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatRecord]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatRecord](
	[mes_id] [int] NOT NULL,
	[u_id_send] [int] NOT NULL,
	[u_id_receive] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[content] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mes_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Problem]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem](
	[pl_id] [int] IDENTITY(1,1) NOT NULL,
	[tch_id] [int] NOT NULL,
	[plt_id] [int] NOT NULL,
	[pl_name] [nvarchar](20) NOT NULL,
	[pl_degree] [nvarchar](10) NOT NULL,
	[pl_need] [text] NOT NULL,
	[pl_eva_mode] [text] NOT NULL,
	[max_person] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pl_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[m_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NULL,
	[m_text] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProblemProfession]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemProfession](
	[pl_id] [int] NOT NULL,
	[mjr_id] [int] NOT NULL,
 CONSTRAINT [PK_ProblemProfession] PRIMARY KEY CLUSTERED 
(
	[pl_id] ASC,
	[mjr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[rep_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NOT NULL,
	[pl_id] [int] NOT NULL,
	[rept_id] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[content_report] [text] NOT NULL,
 CONSTRAINT [PK_Report_table] PRIMARY KEY CLUSTERED 
(
	[rep_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selection]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selection](
	[sec_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NULL,
	[priority] [int] NOT NULL,
	[pl_id] [int] NULL,
	[m_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sec_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selectedtopic]    Script Date: 11/11/2019 23:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selectedtopic](
	[stu_id] [int] NOT NULL,
	[pl_id] [int] NOT NULL,
 CONSTRAINT [ST_key] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC,
	[pl_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__ChatRecor__u_id___2180FB33]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[ChatRecord]  WITH CHECK ADD FOREIGN KEY([u_id_send])
REFERENCES [dbo].[Admission] ([u_id])
GO
/****** Object:  ForeignKey [FK__ChatRecor__u_id___22751F6C]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[ChatRecord]  WITH CHECK ADD FOREIGN KEY([u_id_receive])
REFERENCES [dbo].[Admission] ([u_id])
GO
/****** Object:  ForeignKey [u_id]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Log_in]  WITH CHECK ADD  CONSTRAINT [u_id] FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Log_in] CHECK CONSTRAINT [u_id]
GO
/****** Object:  ForeignKey [FK__Material__stu_id__02084FDA]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Material]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
/****** Object:  ForeignKey [FK__Problem__plt_id__3D5E1FD2]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD FOREIGN KEY([plt_id])
REFERENCES [dbo].[ProblemType] ([plt_id])
GO
/****** Object:  ForeignKey [FK__Problem__tch_id__3C69FB99]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD FOREIGN KEY([tch_id])
REFERENCES [dbo].[Teacher] ([tch_id])
GO
/****** Object:  ForeignKey [FK__ProblemPr__mjr_i__412EB0B6]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[ProblemProfession]  WITH CHECK ADD FOREIGN KEY([mjr_id])
REFERENCES [dbo].[Major] ([mjr_id])
GO
/****** Object:  ForeignKey [FK__ProblemPr__pl_id__403A8C7D]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[ProblemProfession]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
/****** Object:  ForeignKey [FK__Report__pl_id__17F790F9]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
/****** Object:  ForeignKey [FK__Report__rept_id__18EBB532]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([rept_id])
REFERENCES [dbo].[ReportType] ([rept_id])
GO
/****** Object:  ForeignKey [FK__Report__stu_id__17036CC0]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
/****** Object:  ForeignKey [FK_Report_table_Report_type_table]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_table_Report_type_table] FOREIGN KEY([rept_id])
REFERENCES [dbo].[ReportType] ([rept_id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_table_Report_type_table]
GO
/****** Object:  ForeignKey [FK__Selectedt__pl_id__0C85DE4D]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Selectedtopic]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
/****** Object:  ForeignKey [FK__Selectedt__stu_i__0B91BA14]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Selectedtopic]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
/****** Object:  ForeignKey [FK__Selection__m_id__08B54D69]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD FOREIGN KEY([m_id])
REFERENCES [dbo].[Material] ([m_id])
GO
/****** Object:  ForeignKey [FK__Selection__pl_id__07C12930]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
/****** Object:  ForeignKey [FK__Selection__stu_i__06CD04F7]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
/****** Object:  ForeignKey [FK__Student__mjr_id__7D439ABD]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([mjr_id])
REFERENCES [dbo].[Major] ([mjr_id])
GO
/****** Object:  ForeignKey [FK__Student__u_id__7C4F7684]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
/****** Object:  ForeignKey [FK__Teacher__u_id__37A5467C]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
/****** Object:  ForeignKey [FK__User_Perm__pmt_i__21B6055D]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[User_Perm]  WITH CHECK ADD FOREIGN KEY([pmt_id])
REFERENCES [dbo].[Perm] ([pmt_id])
GO
/****** Object:  ForeignKey [FK__User_Perm__u_id__20C1E124]    Script Date: 11/11/2019 23:35:07 ******/
ALTER TABLE [dbo].[User_Perm]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
