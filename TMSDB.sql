USE [master]
GO
/****** Object:  Database [TMSDB]    Script Date: 11/16/2019 12:39:27 PM ******/
CREATE DATABASE [TMSDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TMSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TMSDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TMSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TMSDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TMSDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TMSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TMSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TMSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TMSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TMSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TMSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TMSDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TMSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TMSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TMSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TMSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TMSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TMSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TMSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TMSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TMSDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TMSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TMSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TMSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TMSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TMSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TMSDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TMSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TMSDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TMSDB] SET  MULTI_USER 
GO
ALTER DATABASE [TMSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TMSDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TMSDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TMSDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TMSDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TMSDB', N'ON'
GO
ALTER DATABASE [TMSDB] SET QUERY_STORE = OFF
GO
USE [TMSDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/16/2019 12:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/16/2019 12:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coordinator]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coordinator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Coordinator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Duration] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Performance]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Performance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Accuracy] [float] NOT NULL,
	[BatchId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
	[ProgressId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
	[TraineeId] [int] NOT NULL,
 CONSTRAINT [PK_Performance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Progress]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Progress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BatchId] [int] NOT NULL,
	[Completed] [float] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[InstructorId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
	[TraineeId] [int] NOT NULL,
 CONSTRAINT [PK_Progress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BasicSalary] [float] NOT NULL,
	[Bonus] [float] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[InstructorId] [int] NOT NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssignDate] [datetime2](7) NOT NULL,
	[BatchId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[InstructorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Number] [int] NOT NULL,
	[SubmissionDate] [datetime2](7) NOT NULL,
	[TraineeId] [int] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainee]    Script Date: 11/16/2019 12:39:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[BatchId] [int] NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[CourseId] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trainee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190504101723_imran01', N'2.0.3-rtm-10026')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'100213f7-6c34-4202-ac3f-3549807c8c19', N'b19d7cd6-b7c9-4a92-bc1f-d1ad08632ac3', N'Trainee', N'TRAINEE')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'5db0800e-f9d2-42aa-8fb6-4ae52ff9bae4', N'f85ae388-3c60-435e-babc-3debe4e0f582', N'Instructor', N'INSTRUCTOR')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'c213e39d-ac8b-43de-84a9-f96998bd9497', N'5573dc18-2d9d-4bbd-996c-253c138976ee', N'Coordinator', N'COORDINATOR')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37366e71-b9b4-484f-bf27-6171096f96fe', N'100213f7-6c34-4202-ac3f-3549807c8c19')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a82dcc1-1f7a-447a-9ad4-d1d36a23e1cd', N'5db0800e-f9d2-42aa-8fb6-4ae52ff9bae4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'94caad08-3e7c-4c72-bf25-dd550dc84ec5', N'5db0800e-f9d2-42aa-8fb6-4ae52ff9bae4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c5187d35-47da-469c-8aa3-5277f5eb0706', N'5db0800e-f9d2-42aa-8fb6-4ae52ff9bae4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2c6b53af-8041-474c-92a8-a961d57cb73e', N'c213e39d-ac8b-43de-84a9-f96998bd9497')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4682bf23-9908-45cd-a6b7-ad7732bf18ec', N'c213e39d-ac8b-43de-84a9-f96998bd9497')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'2c6b53af-8041-474c-92a8-a961d57cb73e', 0, N'08ab9d57-6a9c-4761-b266-95ff174fc5ba', N'sheikh@gmail.com', 0, 1, NULL, N'SHEIKH@GMAIL.COM', N'SHEIKH@GMAIL.COM', N'AQAAAAEAACcQAAAAEE3c3gUIpaTeJK70R8NZJIU8/UIdVN2TUNTA2+DpEQEoYH0OMkOe0l1wz0Zd8I4rog==', NULL, 0, N'08bd5fc0-1bac-4eb1-a257-24a8fcd2fc86', 0, N'sheikh@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'37366e71-b9b4-484f-bf27-6171096f96fe', 0, N'eeeba851-50b1-4812-b277-2eefe54f1341', N'aulad@gmail.com', 0, 1, NULL, N'AULAD@GMAIL.COM', N'AULAD@GMAIL.COM', N'AQAAAAEAACcQAAAAEPzby2iR4VrLq3zgWi3EEflLY3vViA+k65P2GRRI2DTLqRTM3tQC9mrgifSEHX90tg==', NULL, 0, N'73e866bf-cbf6-42b2-bf44-45c15cd823fb', 0, N'aulad@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'4682bf23-9908-45cd-a6b7-ad7732bf18ec', 0, N'92e98a8c-0580-4fb8-8a42-b6655b75a257', N'imran@gmail.com', 0, 1, NULL, N'IMRAN@GMAIL.COM', N'IMRAN@GMAIL.COM', N'AQAAAAEAACcQAAAAELH0w9p7p07rizAh5GsnfYjPZ6GQ4vWXDVWLct4ogh19XDZbtHHinlMwDi7XLvmJ9A==', NULL, 0, N'ae973b7c-3afb-4cf7-a434-7d3a3fc5d703', 0, N'imran@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'6a82dcc1-1f7a-447a-9ad4-d1d36a23e1cd', 0, N'23729d0d-9699-481d-a221-3a71e753c1dd', N'sajid@gmail.com', 0, 1, NULL, N'SAJID@GMAIL.COM', N'SAJID@GMAIL.COM', N'AQAAAAEAACcQAAAAEHJzxO1qtae5GrLUJpZRhpSBQ7cdaCl3NIL5qvcm0fvOFsIEjKs5nBvgvTST8MtC0g==', NULL, 0, N'e769c1fe-78d4-4ffd-8044-4c0cb6a2c6f4', 0, N'sajid@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'94caad08-3e7c-4c72-bf25-dd550dc84ec5', 0, N'092d49cb-3de7-4fcb-a52c-96636b156cdf', N'alamgir@gmail.com', 0, 1, NULL, N'ALAMGIR@GMAIL.COM', N'ALAMGIR@GMAIL.COM', N'AQAAAAEAACcQAAAAEIN9Gng/rNoY3pVz03g/PvGwBHheyUClK/GJzWqLWKdkWZF3Krwif7QqRd1+6t57fA==', NULL, 0, N'cf6580b8-4002-46ae-9d82-9757542cdd62', 0, N'alamgir@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'c5187d35-47da-469c-8aa3-5277f5eb0706', 0, N'bc572d55-8262-4663-8a71-20c4fab79c36', N'mahabub@gmail.com', 0, 1, NULL, N'MAHABUB@GMAIL.COM', N'MAHABUB@GMAIL.COM', N'AQAAAAEAACcQAAAAEEGiW1bcz/NZ2s12pAWeqavc6ED/Tp7xe3u1U8rVqCV3JFIM/x+82Dayb9ZZqIWA4g==', NULL, 0, N'f9e4e4e3-0553-4f32-beaa-2aa9b2c0f596', 0, N'mahabub@gmail.com')
SET IDENTITY_INSERT [dbo].[Batch] ON 

INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (1, 1, 2, 1)
INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (2, 2, 1, 1)
INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (3, 3, 3, 1)
INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (4, 4, 2, 1)
INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (5, 5, 1, 1)
INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (6, 2, 1, 2)
SET IDENTITY_INSERT [dbo].[Batch] OFF
SET IDENTITY_INSERT [dbo].[Coordinator] ON 

INSERT [dbo].[Coordinator] ([Id], [Address], [Contact], [Email], [Name]) VALUES (1, N'Savar, Dhaka', N'01611111111', N'imran@gmail.com', N'Md. Imran Habib')
INSERT [dbo].[Coordinator] ([Id], [Address], [Contact], [Email], [Name]) VALUES (2, N'Dhaka', N'01711111111', N'sheikh@gmail.com', N'Sheikh Ahmed')
SET IDENTITY_INSERT [dbo].[Coordinator] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (1, N'3 Months', N'Web Application Development (PHP)')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (2, N'4 Months', N'Web Application Development (Asp.Net)')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (3, N'4 Months', N'CCNA')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (4, N'3 Months', N'Practical SEO')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (5, N'3 Months', N'Web Design with (Angular 7)')
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([Id], [Address], [Contact], [Email], [Name]) VALUES (1, N'Dhaka', N'01611111111', N'mahabub@gmail.com', N'Mahabubur Rahman')
INSERT [dbo].[Instructor] ([Id], [Address], [Contact], [Email], [Name]) VALUES (2, N'Uttara', N'01611111111', N'sajid@gmail.com', N'Sajid Shahariar')
INSERT [dbo].[Instructor] ([Id], [Address], [Contact], [Email], [Name]) VALUES (3, N'Uttara', N'01711111111', N'alamgir@gmail.com', N'Alamgir Bhuyan')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
SET IDENTITY_INSERT [dbo].[Performance] ON 

INSERT [dbo].[Performance] ([Id], [Accuracy], [BatchId], [CourseId], [InstructorId], [ProgressId], [TaskId], [TraineeId]) VALUES (1, 100, 1, 1, 2, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Performance] OFF
SET IDENTITY_INSERT [dbo].[Progress] ON 

INSERT [dbo].[Progress] ([Id], [BatchId], [Completed], [CourseId], [Date], [InstructorId], [TaskId], [TraineeId]) VALUES (1, 1, 90, 1, CAST(N'2019-11-17T00:00:00.0000000' AS DateTime2), 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Progress] OFF
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (1, CAST(N'2019-11-16T00:00:00.0000000' AS DateTime2), 2, 1, N'You have to create a simple log in form to connect with database', 2, N'Simple LogIn', 1, CAST(N'2019-11-17T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
SET IDENTITY_INSERT [dbo].[Trainee] ON 

INSERT [dbo].[Trainee] ([Id], [Address], [BatchId], [Contact], [CourseId], [Email], [Name]) VALUES (1, N'Dhaka', 1, N'01811111111', 1, N'aulad@gmail.com', N'Aulad Hossen')
SET IDENTITY_INSERT [dbo].[Trainee] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Batch_CourseId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Batch_CourseId] ON [dbo].[Batch]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Batch_InstructorId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Batch_InstructorId] ON [dbo].[Batch]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_BatchId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_BatchId] ON [dbo].[Performance]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_CourseId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_CourseId] ON [dbo].[Performance]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_InstructorId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_InstructorId] ON [dbo].[Performance]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_ProgressId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Performance_ProgressId] ON [dbo].[Performance]
(
	[ProgressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_TaskId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Performance_TaskId] ON [dbo].[Performance]
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_TraineeId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_TraineeId] ON [dbo].[Performance]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_BatchId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_BatchId] ON [dbo].[Progress]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_CourseId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_CourseId] ON [dbo].[Progress]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_InstructorId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_InstructorId] ON [dbo].[Progress]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_TaskId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Progress_TaskId] ON [dbo].[Progress]
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_TraineeId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_TraineeId] ON [dbo].[Progress]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Salary_InstructorId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Salary_InstructorId] ON [dbo].[Salary]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_BatchId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_BatchId] ON [dbo].[Tasks]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_CourseId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_CourseId] ON [dbo].[Tasks]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_InstructorId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_InstructorId] ON [dbo].[Tasks]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_TraineeId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_TraineeId] ON [dbo].[Tasks]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trainee_BatchId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Trainee_BatchId] ON [dbo].[Trainee]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trainee_CourseId]    Script Date: 11/16/2019 12:39:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Trainee_CourseId] ON [dbo].[Trainee]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_Course_CourseId]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Batch_BatchId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Course_CourseId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Progress_ProgressId] FOREIGN KEY([ProgressId])
REFERENCES [dbo].[Progress] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Progress_ProgressId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Tasks_TaskId] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Tasks_TaskId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Trainee_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainee] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Trainee_TraineeId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Batch_BatchId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Course_CourseId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Tasks_TaskId] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Tasks_TaskId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Trainee_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainee] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Trainee_TraineeId]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Batch_BatchId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Course_CourseId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Trainee_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainee] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Trainee_TraineeId]
GO
ALTER TABLE [dbo].[Trainee]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Trainee] CHECK CONSTRAINT [FK_Trainee_Batch_BatchId]
GO
ALTER TABLE [dbo].[Trainee]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Trainee] CHECK CONSTRAINT [FK_Trainee_Course_CourseId]
GO
USE [master]
GO
ALTER DATABASE [TMSDB] SET  READ_WRITE 
GO
