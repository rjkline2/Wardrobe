USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 3/18/2018 5:48:15 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 3/18/2018 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccID] [int] IDENTITY(1,1) NOT NULL,
	[AccName] [nvarchar](100) NOT NULL,
	[AccPic] [nvarchar](200) NULL,
	[AccColor] [nvarchar](50) NOT NULL,
	[SeasID] [int] NOT NULL,
	[OccID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 3/18/2018 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](100) NOT NULL,
	[BottomPic] [nvarchar](200) NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[SeasID] [int] NOT NULL,
	[OccID] [int] NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasion]    Script Date: 3/18/2018 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasion](
	[OccID] [int] IDENTITY(1,1) NOT NULL,
	[OccName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Occasion] PRIMARY KEY CLUSTERED 
(
	[OccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 3/18/2018 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutID] [int] IDENTITY(1,1) NOT NULL,
	[OutName] [nvarchar](200) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccID] [int] NOT NULL,
	[SeasID] [int] NOT NULL,
	[OccID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 3/18/2018 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 3/18/2018 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](100) NOT NULL,
	[ShoePic] [nvarchar](200) NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[SeasID] [int] NOT NULL,
	[OccID] [int] NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 3/18/2018 5:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](100) NOT NULL,
	[TopPic] [nvarchar](200) NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[SeasID] [int] NOT NULL,
	[OccID] [int] NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccID], [AccName], [AccPic], [AccColor], [SeasID], [OccID]) VALUES (1, N'Watch', N'/Content/images/watch.jpg', N'Silver face, brown band', 1, 1)
INSERT [dbo].[Accessories] ([AccID], [AccName], [AccPic], [AccColor], [SeasID], [OccID]) VALUES (2, N'Bracelet', N'/Content/images/bracelet.jpg', N'various, wide cuff, many parts, anchor', 4, 5)
INSERT [dbo].[Accessories] ([AccID], [AccName], [AccPic], [AccColor], [SeasID], [OccID]) VALUES (3, N'Ring', N'/Content/images/ring.jpg', N'silver band, black stone', 2, 2)
INSERT [dbo].[Accessories] ([AccID], [AccName], [AccPic], [AccColor], [SeasID], [OccID]) VALUES (4, N'Cufflinks', N'/Content/images/cufflinks.jpg', N'Stormtrooper face, Star Wars themed', 1, 1)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPic], [BottomColor], [SeasID], [OccID]) VALUES (1, N'Jeans', N'/Content/images/jeans.jpg', N'Blue', 3, 5)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPic], [BottomColor], [SeasID], [OccID]) VALUES (2, N'Dockers', N'/Content/images/dockers.jpg', N'Tan', 3, 3)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPic], [BottomColor], [SeasID], [OccID]) VALUES (3, N'Suit Pants', N'/Content/images/suitpants.jpg', N'Grey', 2, 2)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPic], [BottomColor], [SeasID], [OccID]) VALUES (4, N'Shorts', N'/Content/images/shorts.jpg', N'Brownish', 4, 5)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Occasion] ON 

INSERT [dbo].[Occasion] ([OccID], [OccName]) VALUES (1, N'Formal')
INSERT [dbo].[Occasion] ([OccID], [OccName]) VALUES (2, N'Business Formal')
INSERT [dbo].[Occasion] ([OccID], [OccName]) VALUES (3, N'Business Casual')
INSERT [dbo].[Occasion] ([OccID], [OccName]) VALUES (4, N'Sports')
INSERT [dbo].[Occasion] ([OccID], [OccName]) VALUES (5, N'Casual')
INSERT [dbo].[Occasion] ([OccID], [OccName]) VALUES (6, N'Club')
SET IDENTITY_INSERT [dbo].[Occasion] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([OutID], [OutName], [TopID], [BottomID], [ShoeID], [AccID], [SeasID], [OccID]) VALUES (1, N'Casual J-Wear', 2, 4, 1, 2, 4, 5)
INSERT [dbo].[Outfit] ([OutID], [OutName], [TopID], [BottomID], [ShoeID], [AccID], [SeasID], [OccID]) VALUES (2, N'Formal J-Wear', 4, 3, 2, 4, 2, 1)
INSERT [dbo].[Outfit] ([OutID], [OutName], [TopID], [BottomID], [ShoeID], [AccID], [SeasID], [OccID]) VALUES (3, N'Biz Casual J-Wear', 1, 2, 4, 1, 3, 3)
INSERT [dbo].[Outfit] ([OutID], [OutName], [TopID], [BottomID], [ShoeID], [AccID], [SeasID], [OccID]) VALUES (4, N'J-CasualWear', 3, 1, 1, 1, 3, 5)
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasID], [SeasonName]) VALUES (1, N'Fall')
INSERT [dbo].[Seasons] ([SeasID], [SeasonName]) VALUES (2, N'Winter')
INSERT [dbo].[Seasons] ([SeasID], [SeasonName]) VALUES (3, N'Spring')
INSERT [dbo].[Seasons] ([SeasID], [SeasonName]) VALUES (4, N'Summer')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePic], [ShoeColor], [SeasID], [OccID]) VALUES (1, N'Tennis Shoe', N'/Content/images/tennisshoe.jpg', N'White', 1, 4)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePic], [ShoeColor], [SeasID], [OccID]) VALUES (2, N'Dressy Shoes', N'/Content/images/dressyshoe.jpg', N'Glossy Black', 1, 1)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePic], [ShoeColor], [SeasID], [OccID]) VALUES (3, N'Sandals', N'/Content/images/sandals.jpg', N'Brown', 4, 5)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePic], [ShoeColor], [SeasID], [OccID]) VALUES (4, N'Work Shoes', N'/Content/images/workshoes.jpg', N'Black', 2, 3)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPic], [TopColor], [SeasID], [OccID]) VALUES (1, N'Polo Shirt', N'/Content/images/poloshirt.jpg', N'Red', 4, 3)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPic], [TopColor], [SeasID], [OccID]) VALUES (2, N'T-Shirt', N'/Content/images/tshirt.jpg', N'White', 4, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPic], [TopColor], [SeasID], [OccID]) VALUES (3, N'Button Down Shirt', N'/Content/images/buttondown.jpg', N'White', 1, 2)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPic], [TopColor], [SeasID], [OccID]) VALUES (4, N'Button Down Shirt French Cuffs', N'/Content/images/frenchcuff.jpg', N'White', 2, 1)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPic], [TopColor], [SeasID], [OccID]) VALUES (5, N'Sweater', N'/Content/images/sweater.jpg', N'Green', 2, 5)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasion] FOREIGN KEY([OccID])
REFERENCES [dbo].[Occasion] ([OccID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasion]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Seasons] FOREIGN KEY([SeasID])
REFERENCES [dbo].[Seasons] ([SeasID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Seasons]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasion] FOREIGN KEY([OccID])
REFERENCES [dbo].[Occasion] ([OccID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasion]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasID])
REFERENCES [dbo].[Seasons] ([SeasID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessories] FOREIGN KEY([AccID])
REFERENCES [dbo].[Accessories] ([AccID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessories]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottoms]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Occasion] FOREIGN KEY([OccID])
REFERENCES [dbo].[Occasion] ([OccID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Occasion]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Seasons] FOREIGN KEY([SeasID])
REFERENCES [dbo].[Seasons] ([SeasID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Seasons]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoes]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Tops]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Occasion] FOREIGN KEY([OccID])
REFERENCES [dbo].[Occasion] ([OccID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Occasion]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Seasons] FOREIGN KEY([SeasID])
REFERENCES [dbo].[Seasons] ([SeasID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Seasons]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasion] FOREIGN KEY([OccID])
REFERENCES [dbo].[Occasion] ([OccID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasion]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasID])
REFERENCES [dbo].[Seasons] ([SeasID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
