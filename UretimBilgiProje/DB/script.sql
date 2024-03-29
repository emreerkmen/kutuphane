USE [master]
GO
/****** Object:  Database [kutuphaneDB]    Script Date: 05/20/2017 18:46:53 ******/
CREATE DATABASE [kutuphaneDB] ON  PRIMARY 
( NAME = N'kutuphaneDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kutuphaneDB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kutuphaneDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kutuphaneDB_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kutuphaneDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kutuphaneDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kutuphaneDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [kutuphaneDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [kutuphaneDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [kutuphaneDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [kutuphaneDB] SET ARITHABORT OFF
GO
ALTER DATABASE [kutuphaneDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [kutuphaneDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [kutuphaneDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [kutuphaneDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [kutuphaneDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [kutuphaneDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [kutuphaneDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [kutuphaneDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [kutuphaneDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [kutuphaneDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [kutuphaneDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [kutuphaneDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [kutuphaneDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [kutuphaneDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [kutuphaneDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [kutuphaneDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [kutuphaneDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [kutuphaneDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [kutuphaneDB] SET  READ_WRITE
GO
ALTER DATABASE [kutuphaneDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [kutuphaneDB] SET  MULTI_USER
GO
ALTER DATABASE [kutuphaneDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [kutuphaneDB] SET DB_CHAINING OFF
GO
USE [kutuphaneDB]
GO
/****** Object:  Table [dbo].[KITAP]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KITAP](
	[KITAP_ISBN] [nvarchar](13) NOT NULL,
	[KITAP_Adi] [varchar](50) NOT NULL,
	[KITAP_TurID] [int] NOT NULL,
	[KITAP_YayinciID] [int] NOT NULL,
	[KITAP_Sayfa] [int] NOT NULL,
	[KITAP_DilID] [int] NOT NULL,
	[KITAP_TopSayi] [int] NOT NULL,
	[KITAP_UygunSayi] [int] NOT NULL,
	[KITAP_YazarID] [int] NOT NULL,
 CONSTRAINT [PK_KITAP] PRIMARY KEY CLUSTERED 
(
	[KITAP_ISBN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'0000', N'Suç ve Ceza', 1, 3, 744, 1, 14, 14, 1)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'0101', N'İşte Böyle Dedi Zerdüşt', 6, 2, 456, 1, 4, 4, 9)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'1010', N'İnsancıklar', 7, 3, 265, 1, 4, 4, 1)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'1111', N'Karatay Mutfağı', 4, 2, 320, 1, 3, 3, 10)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'1112', N'The Inserted', 2, 3, 178, 2, 2, 2, 8)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'2020', N'Yer Altından Notlar', 6, 1, 316, 1, 7, 7, 1)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'2222', N'Yüzüklerin Efendisi - I - Yüzük Kardeşliği', 3, 1, 496, 1, 10, 10, 5)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'3030', N'Ecinniler', 1, 3, 406, 1, 4, 4, 1)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'3333', N'Yüzüklerin Efendisi - II - İki Kule', 3, 1, 416, 1, 8, 8, 5)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'4040', N'Ecinniler', 1, 2, 237, 1, 2, 2, 1)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'4444', N'Yüzüklerin Efendisi - III - Kralın Dönüşü', 3, 1, 408, 1, 8, 8, 5)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'5050', N'1984', 1, 5, 416, 1, 6, 6, 3)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'5555', N'The Sayings of Leo Tolstoy', 6, 4, 238, 2, 2, 2, 2)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'6060', N'Hayvan Çiftliği', 7, 4, 384, 1, 5, 5, 3)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'6666', N'The Works Of Leo Tolstoy', 6, 4, 129, 2, 1, 1, 2)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'7070', N'Tutunamayanlar', 7, 2, 891, 1, 11, 11, 4)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'7777', N'Computer Networks', 2, 1, 786, 2, 5, 5, 8)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'8080', N'Zübük', 5, 2, 583, 1, 3, 3, 6)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'8888', N'Modern Operating Systems', 2, 1, 641, 2, 3, 3, 8)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'9090', N'Software Engineering', 2, 1, 899, 2, 4, 4, 7)
INSERT [dbo].[KITAP] ([KITAP_ISBN], [KITAP_Adi], [KITAP_TurID], [KITAP_YayinciID], [KITAP_Sayfa], [KITAP_DilID], [KITAP_TopSayi], [KITAP_UygunSayi], [KITAP_YazarID]) VALUES (N'9999', N'Distributed Systems: Principles and Paradigms', 2, 1, 546, 2, 3, 3, 8)
/****** Object:  StoredProcedure [dbo].[SP_KitapEkle]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KitapEkle]
@isbn nvarchar(13),
@adi varchar(50),
@turID int,
@yayinciID int,
@sayfa int,
@dilID int,
@kacTaneVar int,
@uygunSayi int,
@yazarID int
AS
BEGIN
	insert into KITAP values (@isbn, @adi, @turID, @yayinciID, @sayfa, 
	@dilID, @kacTaneVar,@uygunSayi, @yazarID)
END
GO
/****** Object:  Table [dbo].[UYE]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UYE](
	[UYE_TC] [varchar](11) NOT NULL,
	[UYE_Sifre] [nvarchar](50) NOT NULL,
	[UYE_Adi] [nvarchar](50) NOT NULL,
	[UYE_Soyadi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UYE] PRIMARY KEY CLUSTERED 
(
	[UYE_TC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UYE] ([UYE_TC], [UYE_Sifre], [UYE_Adi], [UYE_Soyadi]) VALUES (N'77777777777', N'123456', N'Resul', N'Balay')
INSERT [dbo].[UYE] ([UYE_TC], [UYE_Sifre], [UYE_Adi], [UYE_Soyadi]) VALUES (N'88888888888', N'123456', N'Ankaralı', N'Yasemin')
INSERT [dbo].[UYE] ([UYE_TC], [UYE_Sifre], [UYE_Adi], [UYE_Soyadi]) VALUES (N'99999999999', N'123456', N'Ankaralı', N'Turgut')
/****** Object:  Table [dbo].[TUR]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TUR](
	[TUR_ID] [int] IDENTITY(1,1) NOT NULL,
	[TUR_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TUR] PRIMARY KEY CLUSTERED 
(
	[TUR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TUR] ON
INSERT [dbo].[TUR] ([TUR_ID], [TUR_Adi]) VALUES (1, N'Klasik')
INSERT [dbo].[TUR] ([TUR_ID], [TUR_Adi]) VALUES (2, N'Akademik')
INSERT [dbo].[TUR] ([TUR_ID], [TUR_Adi]) VALUES (3, N'Fantastik')
INSERT [dbo].[TUR] ([TUR_ID], [TUR_Adi]) VALUES (4, N'Hobi')
INSERT [dbo].[TUR] ([TUR_ID], [TUR_Adi]) VALUES (5, N'Eğlence')
INSERT [dbo].[TUR] ([TUR_ID], [TUR_Adi]) VALUES (6, N'Felsefe')
INSERT [dbo].[TUR] ([TUR_ID], [TUR_Adi]) VALUES (7, N'Edebiyat')
SET IDENTITY_INSERT [dbo].[TUR] OFF
/****** Object:  Table [dbo].[VOLUME]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOLUME](
	[VOLUME_ID] [int] IDENTITY(1,1) NOT NULL,
	[VOLUME_KitapISBN] [nvarchar](13) NOT NULL,
	[VOLUME_KutuphaneID] [int] NOT NULL,
	[VOLUME_UygunMu] [bit] NOT NULL,
 CONSTRAINT [PK_VOLUME] PRIMARY KEY CLUSTERED 
(
	[VOLUME_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[VOLUME] ON
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (1, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (2, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (3, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (4, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (5, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (6, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (7, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (8, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (9, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (10, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (11, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (12, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (13, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (14, N'0000', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (15, N'0101', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (16, N'0101', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (17, N'0101', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (18, N'0101', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (19, N'1010', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (20, N'1010', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (21, N'1010', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (22, N'1010', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (23, N'1111', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (24, N'1111', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (25, N'1111', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (26, N'2020', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (27, N'2020', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (28, N'2020', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (29, N'2020', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (30, N'2020', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (31, N'2020', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (32, N'2020', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (33, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (34, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (35, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (36, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (37, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (38, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (39, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (40, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (41, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (42, N'2222', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (43, N'3030', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (44, N'3030', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (45, N'3030', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (46, N'3030', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (47, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (48, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (49, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (50, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (51, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (52, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (53, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (54, N'3333', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (55, N'4040', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (56, N'4040', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (57, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (58, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (59, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (60, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (61, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (62, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (63, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (64, N'4444', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (65, N'5050', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (66, N'5050', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (67, N'5050', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (68, N'5050', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (69, N'5050', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (70, N'5050', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (71, N'5555', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (72, N'5555', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (73, N'6060', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (74, N'6060', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (75, N'6060', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (76, N'6060', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (77, N'6060', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (78, N'6666', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (79, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (80, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (81, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (82, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (83, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (84, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (85, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (86, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (87, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (88, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (89, N'7070', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (90, N'7777', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (91, N'7777', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (92, N'7777', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (93, N'7777', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (94, N'7777', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (95, N'8080', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (96, N'8080', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (97, N'8080', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (98, N'8888', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (99, N'8888', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (100, N'8888', 351, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (101, N'9090', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (102, N'9090', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (103, N'9090', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (104, N'9090', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (105, N'9999', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (106, N'9999', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (107, N'9999', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (108, N'1112', 351, 1)
INSERT [dbo].[VOLUME] ([VOLUME_ID], [VOLUME_KitapISBN], [VOLUME_KutuphaneID], [VOLUME_UygunMu]) VALUES (109, N'1112', 351, 1)
SET IDENTITY_INSERT [dbo].[VOLUME] OFF
/****** Object:  Table [dbo].[KUTUPHANE]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KUTUPHANE](
	[KUTUPHANE_ID] [int] NOT NULL,
	[KUTUPHANE_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KUTUPHANE] PRIMARY KEY CLUSTERED 
(
	[KUTUPHANE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KUTUPHANE] ([KUTUPHANE_ID], [KUTUPHANE_Adi]) VALUES (351, N'Merkez')
INSERT [dbo].[KUTUPHANE] ([KUTUPHANE_ID], [KUTUPHANE_Adi]) VALUES (352, N'Bilgisayar Müh.')
INSERT [dbo].[KUTUPHANE] ([KUTUPHANE_ID], [KUTUPHANE_Adi]) VALUES (353, N'Tıp Fakültesi')
/****** Object:  Table [dbo].[DIL]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIL](
	[DIL_ID] [int] IDENTITY(1,1) NOT NULL,
	[DIL_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DIL] PRIMARY KEY CLUSTERED 
(
	[DIL_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DIL] ON
INSERT [dbo].[DIL] ([DIL_ID], [DIL_Adi]) VALUES (1, N'Türkçe')
INSERT [dbo].[DIL] ([DIL_ID], [DIL_Adi]) VALUES (2, N'İngilizce')
INSERT [dbo].[DIL] ([DIL_ID], [DIL_Adi]) VALUES (3, N'Almanca')
INSERT [dbo].[DIL] ([DIL_ID], [DIL_Adi]) VALUES (4, N'Rusça')
INSERT [dbo].[DIL] ([DIL_ID], [DIL_Adi]) VALUES (5, N'Fransızca')
SET IDENTITY_INSERT [dbo].[DIL] OFF
/****** Object:  Table [dbo].[YAZAR]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YAZAR](
	[YAZAR_ID] [int] IDENTITY(1,1) NOT NULL,
	[YAZAR_AdiSoyadi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_YAZAR] PRIMARY KEY CLUSTERED 
(
	[YAZAR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[YAZAR] ON
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (1, N'Fyodor Mihailoviç Dostoyevski')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (2, N'Lev Nikolayeviç Tolstoy')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (3, N'George Orwell')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (4, N'Oğuz Atay')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (5, N'J.R.R Tolkien')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (6, N'Aziz Nesin')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (7, N'Ian Sommerville')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (8, N'Andrew S. Tanenbaum')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (9, N'Friedrich Wilhelm Nietzsche')
INSERT [dbo].[YAZAR] ([YAZAR_ID], [YAZAR_AdiSoyadi]) VALUES (10, N'Canan Karatay')
SET IDENTITY_INSERT [dbo].[YAZAR] OFF
/****** Object:  Table [dbo].[YAYINCI]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YAYINCI](
	[YAYINCI_ID] [int] IDENTITY(1,1) NOT NULL,
	[YAYINCI_Adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_YAYINCI] PRIMARY KEY CLUSTERED 
(
	[YAYINCI_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[YAYINCI] ON
INSERT [dbo].[YAYINCI] ([YAYINCI_ID], [YAYINCI_Adi]) VALUES (1, N'İletişim Yayınları')
INSERT [dbo].[YAYINCI] ([YAYINCI_ID], [YAYINCI_Adi]) VALUES (2, N'Can Yayınları')
INSERT [dbo].[YAYINCI] ([YAYINCI_ID], [YAYINCI_Adi]) VALUES (3, N'İş Bankası Kültür Yayınları')
INSERT [dbo].[YAYINCI] ([YAYINCI_ID], [YAYINCI_Adi]) VALUES (4, N'İthaki Yayınları')
INSERT [dbo].[YAYINCI] ([YAYINCI_ID], [YAYINCI_Adi]) VALUES (5, N'Yapı Kredi Yayınları')
SET IDENTITY_INSERT [dbo].[YAYINCI] OFF
/****** Object:  StoredProcedure [dbo].[SP_YazaraGoreAra]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_YazaraGoreAra](
@yazarAdi varchar(50)
)
AS
BEGIN
	select KITAP.*, DIL.DIL_Adi, TUR.TUR_Adi, YAYINCI.YAYINCI_Adi, YAZAR.YAZAR_Adi, YAZAR.YAZAR_Soyadi
	from KITAP, DIL, TUR, YAYINCI, YAZAR
	where @yazarAdi = YAZAR.YAZAR_Adi AND KITAP.KITAP_DilID = DIL.DIL_ID 
	AND KITAP.KITAP_TurID = TUR.TUR_ID AND KITAP.KITAP_YayinciID = YAYINCI.YAYINCI_ID
	AND KITAP.KITAP_YazarID = YAZAR.YAZAR_ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TureGoreAra]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TureGoreAra](
@turAdi nvarchar(50)
)
AS
BEGIN
	select KITAP.*, DIL.DIL_Adi, TUR.TUR_Adi, YAYINCI.YAYINCI_Adi, YAZAR.YAZAR_Adi, YAZAR.YAZAR_Soyadi 
	from KITAP, DIL, TUR, YAYINCI, YAZAR
	where @turAdi = TUR.TUR_Adi AND KITAP.KITAP_DilID = DIL.DIL_ID 
	AND KITAP.KITAP_TurID = TUR.TUR_ID AND KITAP.KITAP_YayinciID = YAYINCI.YAYINCI_ID
	AND KITAP.KITAP_YazarID = YAZAR.YAZAR_ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_KitapAdiylaAra]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KitapAdiylaAra](
@kitapAdi varchar(50)
)
AS
BEGIN
	select KITAP.*, DIL.DIL_Adi, TUR.TUR_Adi, YAYINCI.YAYINCI_Adi, YAZAR.YAZAR_Adi, YAZAR.YAZAR_Soyadi
	from KITAP, DIL, TUR, YAYINCI, YAZAR
	where @kitapAdi = KITAP.KITAP_Adi AND KITAP.KITAP_DilID = DIL.DIL_ID 
	AND KITAP.KITAP_TurID = TUR.TUR_ID AND KITAP.KITAP_YayinciID = YAYINCI.YAYINCI_ID
	AND KITAP.KITAP_YazarID = YAZAR.YAZAR_ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ISBNileAra]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ISBNileAra](
@isbn nvarchar(13)
)
AS
BEGIN
	select KITAP.*, DIL.DIL_Adi, TUR.TUR_Adi, YAYINCI.YAYINCI_Adi, YAZAR.YAZAR_Adi, YAZAR.YAZAR_Soyadi
	from KITAP, DIL, TUR, YAYINCI, YAZAR
	where @isbn= KITAP.KITAP_ISBN AND KITAP.KITAP_DilID = DIL.DIL_ID 
	AND KITAP.KITAP_TurID = TUR.TUR_ID AND KITAP.KITAP_YayinciID = YAYINCI.YAYINCI_ID
	AND KITAP.KITAP_YazarID = YAZAR.YAZAR_ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DilGetir]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DilGetir] 
AS
BEGIN
	select * from DIL
END
GO
/****** Object:  Table [dbo].[ODUNC]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ODUNC](
	[ODUNC_AlmaTarihi] [date] NOT NULL,
	[ODUNC_VolumeID] [int] NOT NULL,
	[ODUNC_UyeTC] [varchar](11) NOT NULL,
	[ODUNC_VerenGorevliTC] [varchar](11) NOT NULL,
	[ODUNC_TeslimAlanGorevliTC] [varchar](11) NOT NULL,
	[ODUNC_TeslimTarihi] [date] NOT NULL,
 CONSTRAINT [PK_ODUNC] PRIMARY KEY CLUSTERED 
(
	[ODUNC_AlmaTarihi] ASC,
	[ODUNC_VolumeID] ASC,
	[ODUNC_UyeTC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GOREVLI]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GOREVLI](
	[GOREVLI_TC] [varchar](11) NOT NULL,
	[GOREVLI_Sifre] [nvarchar](50) NOT NULL,
	[GOREVLI_Adi] [nvarchar](50) NOT NULL,
	[GOREVLI_Soyadi] [nvarchar](50) NOT NULL,
	[GOREVLI_KutuphaneID] [int] NOT NULL,
 CONSTRAINT [PK_GOREVLI] PRIMARY KEY CLUSTERED 
(
	[GOREVLI_TC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GOREVLI] ([GOREVLI_TC], [GOREVLI_Sifre], [GOREVLI_Adi], [GOREVLI_Soyadi], [GOREVLI_KutuphaneID]) VALUES (N'1', N'1', N'con', N'kim', 351)
INSERT [dbo].[GOREVLI] ([GOREVLI_TC], [GOREVLI_Sifre], [GOREVLI_Adi], [GOREVLI_Soyadi], [GOREVLI_KutuphaneID]) VALUES (N'11111111111', N'123456', N'Mahmut', N'Tuncer', 351)
INSERT [dbo].[GOREVLI] ([GOREVLI_TC], [GOREVLI_Sifre], [GOREVLI_Adi], [GOREVLI_Soyadi], [GOREVLI_KutuphaneID]) VALUES (N'22222222222', N'123456', N'Kahtalı', N'Mıçı', 352)
INSERT [dbo].[GOREVLI] ([GOREVLI_TC], [GOREVLI_Sifre], [GOREVLI_Adi], [GOREVLI_Soyadi], [GOREVLI_KutuphaneID]) VALUES (N'33333333333', N'123456', N'Dilber', N'Ay', 353)
INSERT [dbo].[GOREVLI] ([GOREVLI_TC], [GOREVLI_Sifre], [GOREVLI_Adi], [GOREVLI_Soyadi], [GOREVLI_KutuphaneID]) VALUES (N'44444444444', N'123456', N'Mustafa', N'Keser', 351)
INSERT [dbo].[GOREVLI] ([GOREVLI_TC], [GOREVLI_Sifre], [GOREVLI_Adi], [GOREVLI_Soyadi], [GOREVLI_KutuphaneID]) VALUES (N'55555555555', N'123456', N'İbrahim', N'Tatlıses', 352)
INSERT [dbo].[GOREVLI] ([GOREVLI_TC], [GOREVLI_Sifre], [GOREVLI_Adi], [GOREVLI_Soyadi], [GOREVLI_KutuphaneID]) VALUES (N'66666666666', N'123456', N'Latif', N'Doğan', 353)
/****** Object:  StoredProcedure [dbo].[SP_YazarGetir]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_YazarGetir] 
AS
BEGIN
	select * from YAZAR
END
GO
/****** Object:  StoredProcedure [dbo].[SP_YayinciGetir]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_YayinciGetir] 
AS
BEGIN
	select * from YAYINCI
END
GO
/****** Object:  StoredProcedure [dbo].[SP_uyeLogin]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_uyeLogin](
@uyeTC varchar(11),
@uyeSifre nvarchar(50)
)
AS
BEGIN
	select UYE.UYE_TC from UYE
	where UYE.UYE_TC = @uyeTC AND UYE.UYE_Sifre = @uyeSifre
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TurGetir]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TurGetir]
AS
BEGIN
	select TUR.TUR_Adi from TUR
END
GO
/****** Object:  StoredProcedure [dbo].[SP_gorevliLogin]    Script Date: 05/20/2017 18:46:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_gorevliLogin](
@gorevliTC varchar(11),
@gorevliSifre nvarchar(50)
)
AS
BEGIN
	select GOREVLI.GOREVLI_TC from GOREVLI
	where GOREVLI.GOREVLI_TC = @gorevliTC AND GOREVLI.GOREVLI_Sifre = @gorevliSifre
END
GO
/****** Object:  ForeignKey [FK_KITAP_DIL]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[KITAP]  WITH CHECK ADD  CONSTRAINT [FK_KITAP_DIL] FOREIGN KEY([KITAP_DilID])
REFERENCES [dbo].[DIL] ([DIL_ID])
GO
ALTER TABLE [dbo].[KITAP] CHECK CONSTRAINT [FK_KITAP_DIL]
GO
/****** Object:  ForeignKey [FK_KITAP_TUR]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[KITAP]  WITH CHECK ADD  CONSTRAINT [FK_KITAP_TUR] FOREIGN KEY([KITAP_TurID])
REFERENCES [dbo].[TUR] ([TUR_ID])
GO
ALTER TABLE [dbo].[KITAP] CHECK CONSTRAINT [FK_KITAP_TUR]
GO
/****** Object:  ForeignKey [FK_KITAP_YAYINCI]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[KITAP]  WITH CHECK ADD  CONSTRAINT [FK_KITAP_YAYINCI] FOREIGN KEY([KITAP_YayinciID])
REFERENCES [dbo].[YAYINCI] ([YAYINCI_ID])
GO
ALTER TABLE [dbo].[KITAP] CHECK CONSTRAINT [FK_KITAP_YAYINCI]
GO
/****** Object:  ForeignKey [FK_KITAP_YAZAR]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[KITAP]  WITH CHECK ADD  CONSTRAINT [FK_KITAP_YAZAR] FOREIGN KEY([KITAP_YazarID])
REFERENCES [dbo].[YAZAR] ([YAZAR_ID])
GO
ALTER TABLE [dbo].[KITAP] CHECK CONSTRAINT [FK_KITAP_YAZAR]
GO
/****** Object:  ForeignKey [FK_VOLUME_KITAP]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[VOLUME]  WITH CHECK ADD  CONSTRAINT [FK_VOLUME_KITAP] FOREIGN KEY([VOLUME_KitapISBN])
REFERENCES [dbo].[KITAP] ([KITAP_ISBN])
GO
ALTER TABLE [dbo].[VOLUME] CHECK CONSTRAINT [FK_VOLUME_KITAP]
GO
/****** Object:  ForeignKey [FK_VOLUME_KUTUPHANE]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[VOLUME]  WITH CHECK ADD  CONSTRAINT [FK_VOLUME_KUTUPHANE] FOREIGN KEY([VOLUME_KutuphaneID])
REFERENCES [dbo].[KUTUPHANE] ([KUTUPHANE_ID])
GO
ALTER TABLE [dbo].[VOLUME] CHECK CONSTRAINT [FK_VOLUME_KUTUPHANE]
GO
/****** Object:  ForeignKey [FK_ODUNC_GOREVLI]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[ODUNC]  WITH CHECK ADD  CONSTRAINT [FK_ODUNC_GOREVLI] FOREIGN KEY([ODUNC_TeslimAlanGorevliTC])
REFERENCES [dbo].[GOREVLI] ([GOREVLI_TC])
GO
ALTER TABLE [dbo].[ODUNC] CHECK CONSTRAINT [FK_ODUNC_GOREVLI]
GO
/****** Object:  ForeignKey [FK_ODUNC_GOREVLI1]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[ODUNC]  WITH CHECK ADD  CONSTRAINT [FK_ODUNC_GOREVLI1] FOREIGN KEY([ODUNC_VerenGorevliTC])
REFERENCES [dbo].[GOREVLI] ([GOREVLI_TC])
GO
ALTER TABLE [dbo].[ODUNC] CHECK CONSTRAINT [FK_ODUNC_GOREVLI1]
GO
/****** Object:  ForeignKey [FK_ODUNC_UYE]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[ODUNC]  WITH CHECK ADD  CONSTRAINT [FK_ODUNC_UYE] FOREIGN KEY([ODUNC_UyeTC])
REFERENCES [dbo].[UYE] ([UYE_TC])
GO
ALTER TABLE [dbo].[ODUNC] CHECK CONSTRAINT [FK_ODUNC_UYE]
GO
/****** Object:  ForeignKey [FK_ODUNC_VOLUME]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[ODUNC]  WITH CHECK ADD  CONSTRAINT [FK_ODUNC_VOLUME] FOREIGN KEY([ODUNC_VolumeID])
REFERENCES [dbo].[VOLUME] ([VOLUME_ID])
GO
ALTER TABLE [dbo].[ODUNC] CHECK CONSTRAINT [FK_ODUNC_VOLUME]
GO
/****** Object:  ForeignKey [FK_GOREVLI_KUTUPHANE]    Script Date: 05/20/2017 18:46:54 ******/
ALTER TABLE [dbo].[GOREVLI]  WITH CHECK ADD  CONSTRAINT [FK_GOREVLI_KUTUPHANE] FOREIGN KEY([GOREVLI_KutuphaneID])
REFERENCES [dbo].[KUTUPHANE] ([KUTUPHANE_ID])
GO
ALTER TABLE [dbo].[GOREVLI] CHECK CONSTRAINT [FK_GOREVLI_KUTUPHANE]
GO
