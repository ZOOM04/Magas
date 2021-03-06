USE [master]
GO
/****** Object:  Database [MagasBook]    Script Date: 08.04.2021 16:12:33 ******/
CREATE DATABASE [MagasBook]
USE [MagasBookBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MagasBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MagasBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MagasBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MagasBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MagasBook] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MagasBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MagasBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MagasBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MagasBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MagasBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MagasBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [MagasBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MagasBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MagasBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MagasBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MagasBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MagasBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MagasBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MagasBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MagasBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MagasBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MagasBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MagasBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MagasBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MagasBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MagasBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MagasBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MagasBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MagasBook] SET RECOVERY FULL 
GO
ALTER DATABASE [MagasBook] SET  MULTI_USER 
GO
ALTER DATABASE [MagasBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MagasBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MagasBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MagasBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MagasBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MagasBook] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MagasBook', N'ON'
GO
ALTER DATABASE [MagasBook] SET QUERY_STORE = OFF
GO
USE [MagasBook]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 08.04.2021 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 08.04.2021 16:12:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[AuthorID] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([ID], [FullName]) VALUES (1, N'Пауло Коэльо')
INSERT [dbo].[Author] ([ID], [FullName]) VALUES (2, N'Стивен Кинг')
INSERT [dbo].[Author] ([ID], [FullName]) VALUES (3, N'А.С.Пушкин')
INSERT [dbo].[Author] ([ID], [FullName]) VALUES (4, N'Л.Н.Толстой')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (1, N'Дневник мага', 1, N'Философия', N'Resources/DiaryWitches.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (2, N'Книга воина света', 1, N'Философия', N'Resources/WarriorOfLight.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (3, N'Кладбище домашних животных', 2, N'Ужасы', N'Resources/Cemetery.jpeg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (4, N'Оно', 2, N'Ужасы', N'Resources/It.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (5, N'Алхимик', 1, N'Философия', N'Resources/Alchemist.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (6, N'Заир', 1, N'Философия', N'Resources/Zair.jpeg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (7, N'Алеф', 1, N'Философия', N'Resources/Aleph.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (8, N'Ведьма из портобело', 1, N'Философия', N'Resources/Witch.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (9, N'Тёмная башня', 2, N'Фантастика', N'Resources/Dark.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (10, N'Сияние', 2, N'Ужасы', N'Resources/Radiance.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (11, N'Чужак', 2, N'Ужасы', N'Resources/Stranger.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (12, N'Медный всадник', 3, N'Поэма', N'Resources/Rider.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (13, N'Капитанская дочка', 3, N'Роман', N'Resources/Daughter.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (14, N'Дубровский', 3, N'Роман', N'Resources/Dubrovsky.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (15, N'Анна Каренина', 4, N'Роман', N'Resources/Anna.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (16, N'Война и мир', 4, N'Роман', N'Resources/War.jpg')
INSERT [dbo].[Book] ([ID], [Title], [AuthorID], [Description], [Photo]) VALUES (17, N'Исповедь', 4, N'Книга', N'Resources/Confession.jpeg')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([ID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
USE [master]
GO
ALTER DATABASE [MagasBook] SET  READ_WRITE 
GO
