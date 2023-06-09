USE [master]
GO
/****** Object:  Database [KhoaHoc]    Script Date: 2/26/2023 6:32:17 PM ******/
CREATE DATABASE [KhoaHoc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KhoaHoc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KhoaHoc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KhoaHoc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KhoaHoc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KhoaHoc] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KhoaHoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KhoaHoc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KhoaHoc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KhoaHoc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KhoaHoc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KhoaHoc] SET ARITHABORT OFF 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KhoaHoc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KhoaHoc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KhoaHoc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KhoaHoc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KhoaHoc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KhoaHoc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KhoaHoc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KhoaHoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KhoaHoc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KhoaHoc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KhoaHoc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KhoaHoc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KhoaHoc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KhoaHoc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KhoaHoc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KhoaHoc] SET  MULTI_USER 
GO
ALTER DATABASE [KhoaHoc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KhoaHoc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KhoaHoc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KhoaHoc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KhoaHoc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KhoaHoc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KhoaHoc] SET QUERY_STORE = OFF
GO
USE [KhoaHoc]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_Password] [nvarchar](max) NOT NULL,
	[tps_Number] [nvarchar](20) NULL,
	[tps_Date] [date] NOT NULL,
	[tps_Photo] [nvarchar](max) NOT NULL,
	[tps_Active] [bit] NULL,
	[tps_activation_token] [nvarchar](max) NULL,
	[tps_reset_token] [nvarchar](max) NULL,
	[tps_Fullname] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[tps_Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authority]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authority](
	[tps_Id] [int] IDENTITY(1,1) NOT NULL,
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_RoleId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_authority] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[tps_Id] [char](10) NOT NULL,
	[tps_Name] [nvarchar](100) NOT NULL,
	[tps_Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter](
	[tps_id] [int] IDENTITY(1,1) NOT NULL,
	[tps_title] [nvarchar](max) NOT NULL,
	[tps_idCourse] [int] NOT NULL,
 CONSTRAINT [PK_chaptẻ] PRIMARY KEY CLUSTERED 
(
	[tps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[tps_Id] [int] IDENTITY(1,1) NOT NULL,
	[tps_title] [nvarchar](max) NOT NULL,
	[tps_LinkYTB] [nvarchar](max) NOT NULL,
	[tps_idChapter] [int] NOT NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[tps_Id] [int] IDENTITY(2849,1) NOT NULL,
	[tps_Name] [nvarchar](100) NOT NULL,
	[tps_Image] [nvarchar](max) NOT NULL,
	[tps_discount] [float] NOT NULL,
	[tps_Price] [float] NOT NULL,
	[tps_Information] [nvarchar](max) NOT NULL,
	[tps_Teacher] [nvarchar](100) NOT NULL,
	[tps_Date] [date] NOT NULL,
	[tps_Status] [bit] NOT NULL,
	[tps_CategoryId] [char](10) NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCode]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCode](
	[CourseId] [int] NOT NULL,
	[Code] [nvarchar](12) NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_CourseCode] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favoriteCrouse]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favoriteCrouse](
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_CrouseId] [int] NOT NULL,
	[tps_Date] [date] NOT NULL,
	[tps_Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_favoriteCrouse] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[neworder]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[neworder](
	[tps_id] [int] IDENTITY(1,1) NOT NULL,
	[tps_username] [nvarchar](50) NOT NULL,
	[tps_courseid] [int] NOT NULL,
	[tps_date] [date] NOT NULL,
	[tps_statusCode] [nvarchar](12) NOT NULL,
	[pay] [nvarchar](20) NULL,
 CONSTRAINT [PK_neworder] PRIMARY KEY CLUSTERED 
(
	[tps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[tps_id] [int] IDENTITY(1,1) NOT NULL,
	[tps_Username] [nvarchar](50) NOT NULL,
	[tps_Message] [nvarchar](max) NOT NULL,
	[tps_Read] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bankcode] [nvarchar](max) NULL,
	[createdate] [nvarchar](max) NULL,
	[currCode] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[amount] [int] NULL,
	[txnref] [nvarchar](max) NULL,
	[course_id] [int] NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[tps_Id] [nvarchar](20) NOT NULL,
	[tps_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[tps_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionEntity]    Script Date: 2/26/2023 6:32:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionEntity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transactionNo] [nvarchar](max) NULL,
	[transactionStatus] [nvarchar](max) NULL,
	[banktranNo] [nvarchar](max) NULL,
	[txnRef] [nvarchar](max) NULL,
	[amount] [nvarchar](max) NULL,
	[id_payment] [int] NOT NULL,
 CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'Hoanghuuphuc8@gmail.com', N'123', NULL, CAST(N'2023-02-13' AS Date), N'1.jpg', 1, NULL, N'f0956996-a26c-44f2-a9c4-119f86c98043:1677352685457', NULL)
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'huuphucthuctap@gmail.com', N'Phucga123', NULL, CAST(N'2023-02-13' AS Date), N'1.jpg', 1, N'68645946-a6a6-4e12-9383-26b4bf0e6af2:1676270026258', NULL, NULL)
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'phucga123', N'123', N'0346732847', CAST(N'2022-12-12' AS Date), N'0d0cf30f-c0f1-42b9-9942-ea55784fd178-z3486127811547_4f811a7db62e5ee0203fbcb75ceafee7.jpg', 1, NULL, NULL, NULL)
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'phucpc02265', N'Phucga123', N'0346732847', CAST(N'2022-12-07' AS Date), N'a1c3c2d2-6112-498d-bcdf-b92c4b4aaf6b-tri.png', 1, NULL, NULL, N'Lương Hoàng Hữu Phúc')
INSERT [dbo].[Account] ([tps_Username], [tps_Password], [tps_Number], [tps_Date], [tps_Photo], [tps_Active], [tps_activation_token], [tps_reset_token], [tps_Fullname]) VALUES (N'trintpc02045@fpt.edu.vn', N'Triyeunha', NULL, CAST(N'2023-02-11' AS Date), N'1.jpg', 1, NULL, N'485f9316-e7d5-4c89-a4da-eb0ea2e5a998:1677352691650', NULL)
GO
SET IDENTITY_INSERT [dbo].[authority] ON 

INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (2, N'phucpc02265', N'Admin')
INSERT [dbo].[authority] ([tps_Id], [tps_Username], [tps_RoleId]) VALUES (9, N'huuphucthuctap@gmail.com', N'User')
SET IDENTITY_INSERT [dbo].[authority] OFF
GO
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (N'3886      ', N'NodeJs', N'Css.png')
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (N'3980      ', N'Java', N'Css.png')
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (N'3981      ', N'Python', N'Css.png')
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (N'3982      ', N'C++', N'Css.png')
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (N'3983      ', N'C#', N'Css.png')
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (N'3984      ', N'PHP', N'Css.png')
INSERT [dbo].[category] ([tps_Id], [tps_Name], [tps_Image]) VALUES (N'3985      ', N'SQL', N'Css.png')
GO
SET IDENTITY_INSERT [dbo].[chapter] ON 

INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (5, N'Chương 1', 2850)
INSERT [dbo].[chapter] ([tps_id], [tps_title], [tps_idCourse]) VALUES (6, N'Chương 2', 2850)
SET IDENTITY_INSERT [dbo].[chapter] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (3, N'Giới Thiệu', N'iDHE5MfPdFc', 5)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (6, N'Chương 2', N'smQV6mHxYfc', 6)
INSERT [dbo].[Content] ([tps_Id], [tps_title], [tps_LinkYTB], [tps_idChapter]) VALUES (7, N'Chương 2b', N'LqEs_KqV_W8', 6)
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[course] ON 

INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [tps_Teacher], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2850, N'Lập Trình ReactJs', N'Reactjs.jpg', 200000, 40000, N'dạy java và opp', N'phúc hữu', CAST(N'2022-12-06' AS Date), 1, N'3980      ')
INSERT [dbo].[course] ([tps_Id], [tps_Name], [tps_Image], [tps_discount], [tps_Price], [tps_Information], [tps_Teacher], [tps_Date], [tps_Status], [tps_CategoryId]) VALUES (2851, N'Lập Trình Nodejs', N'Nodejs.png', 0, 0, N'pythin', N'phúc hữu', CAST(N'2022-12-12' AS Date), 1, N'3981      ')
SET IDENTITY_INSERT [dbo].[course] OFF
GO
INSERT [dbo].[CourseCode] ([CourseId], [Code], [quantity]) VALUES (2850, N'hoanghuuphuc', 1)
INSERT [dbo].[CourseCode] ([CourseId], [Code], [quantity]) VALUES (2850, N'hp', 0)
GO
SET IDENTITY_INSERT [dbo].[neworder] ON 

INSERT [dbo].[neworder] ([tps_id], [tps_username], [tps_courseid], [tps_date], [tps_statusCode], [pay]) VALUES (1050, N'phucpc02265', 2851, CAST(N'2023-02-24' AS Date), N'0', NULL)
SET IDENTITY_INSERT [dbo].[neworder] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [bankcode], [createdate], [currCode], [status], [amount], [txnref], [course_id], [username]) VALUES (88, NULL, N'20230225214440', N'VND', N'YES', 4000000, N'80732599', 2850, N'phucpc02265')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
INSERT [dbo].[Roles] ([tps_Id], [tps_Name]) VALUES (N'Admin', N'Quản Trị Viên')
INSERT [dbo].[Roles] ([tps_Id], [tps_Name]) VALUES (N'STAFF', N'Nhân Viên')
INSERT [dbo].[Roles] ([tps_Id], [tps_Name]) VALUES (N'User', N'Người Dùng')
GO
ALTER TABLE [dbo].[authority]  WITH CHECK ADD  CONSTRAINT [FK_authority_Account] FOREIGN KEY([tps_Username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[authority] CHECK CONSTRAINT [FK_authority_Account]
GO
ALTER TABLE [dbo].[authority]  WITH CHECK ADD  CONSTRAINT [FK_authority_Roles] FOREIGN KEY([tps_RoleId])
REFERENCES [dbo].[Roles] ([tps_Id])
GO
ALTER TABLE [dbo].[authority] CHECK CONSTRAINT [FK_authority_Roles]
GO
ALTER TABLE [dbo].[chapter]  WITH CHECK ADD  CONSTRAINT [FK_chapter_course] FOREIGN KEY([tps_idCourse])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[chapter] CHECK CONSTRAINT [FK_chapter_course]
GO
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_content_chapter] FOREIGN KEY([tps_idChapter])
REFERENCES [dbo].[chapter] ([tps_id])
GO
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_content_chapter]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_category] FOREIGN KEY([tps_CategoryId])
REFERENCES [dbo].[category] ([tps_Id])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_category]
GO
ALTER TABLE [dbo].[CourseCode]  WITH CHECK ADD  CONSTRAINT [FK_CourseCode_course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[CourseCode] CHECK CONSTRAINT [FK_CourseCode_course]
GO
ALTER TABLE [dbo].[favoriteCrouse]  WITH CHECK ADD  CONSTRAINT [FK_favoriteCrouse_course] FOREIGN KEY([tps_CrouseId])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[favoriteCrouse] CHECK CONSTRAINT [FK_favoriteCrouse_course]
GO
ALTER TABLE [dbo].[neworder]  WITH CHECK ADD  CONSTRAINT [FK_neworder_Account] FOREIGN KEY([tps_username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[neworder] CHECK CONSTRAINT [FK_neworder_Account]
GO
ALTER TABLE [dbo].[neworder]  WITH CHECK ADD  CONSTRAINT [FK_neworder_course] FOREIGN KEY([tps_courseid])
REFERENCES [dbo].[course] ([tps_Id])
GO
ALTER TABLE [dbo].[neworder] CHECK CONSTRAINT [FK_neworder_course]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Account] FOREIGN KEY([tps_Username])
REFERENCES [dbo].[Account] ([tps_Username])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Account]
GO
USE [master]
GO
ALTER DATABASE [KhoaHoc] SET  READ_WRITE 
GO
