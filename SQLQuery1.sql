
/****** Object:  Database [DB_MyRPG]    Script Date: 2020/6/8 8:37:04 ******/
CREATE DATABASE [DB_MyRPG]
 ON  PRIMARY 
( NAME = N'DB_MyRPG', FILENAME = N'D:\antinew\csharp\毕设\netmvc-AppMyRPG-master\DB_MyRPG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_MyRPG_log', FILENAME = N'D:\antinew\csharp\毕设\netmvc-AppMyRPG-master\DB_MyRPG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB_MyRPG] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_MyRPG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_MyRPG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_MyRPG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_MyRPG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_MyRPG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_MyRPG] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_MyRPG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_MyRPG] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [DB_MyRPG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_MyRPG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_MyRPG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_MyRPG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_MyRPG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_MyRPG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_MyRPG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_MyRPG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_MyRPG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_MyRPG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_MyRPG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_MyRPG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_MyRPG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_MyRPG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_MyRPG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_MyRPG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_MyRPG] SET  MULTI_USER 
GO
ALTER DATABASE [DB_MyRPG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_MyRPG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_MyRPG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_MyRPG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_MyRPG] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_MyRPG', N'ON'
GO
ALTER DATABASE [DB_MyRPG] SET QUERY_STORE = OFF
GO
USE [DB_MyRPG]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DB_MyRPG]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2020/6/8 8:37:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentText] [nvarchar](600) NOT NULL,
	[CommentTime] [datetime] NOT NULL,
	[GameID] [int] NULL,
	[UserID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendLink]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendLink](
	[FLID] [int] IDENTITY(1,1) NOT NULL,
	[FLName] [nvarchar](20) NOT NULL,
	[FLUrl] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[GameName] [nvarchar](100) NOT NULL,
	[GameTime] [datetime] NOT NULL,
	[GameDec] [nvarchar](max) NOT NULL,
	[GameFace] [nvarchar](300) NULL,
	[GameCmtCount] [int] NULL,
	[GameHot] [int] NULL,
	[UserID] [int] NULL,
	[TypeID] [int] NULL,
	[LinkID] [varchar](50) NULL,
	[GameImg1] [varchar](300) NULL,
	[GameImg2] [varchar](300) NULL,
	[GameImg3] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameType]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](10) NOT NULL,
	[TypeClass] [int] NOT NULL,
	[OIID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Link]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Link](
	[LinkID] [varchar](50) NOT NULL,
	[LinkURL] [varchar](500) NOT NULL,
	[LinkPWD] [varchar](4) NULL,
	[LinkDec] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LinkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[NoticeID] [int] IDENTITY(1,1) NOT NULL,
	[NoticeTitle] [nvarchar](20) NOT NULL,
	[NoticeContent] [nvarchar](max) NOT NULL,
	[NoticeTime] [datetime] NOT NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NoticeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutIn]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutIn](
	[OIID] [int] IDENTITY(1,1) NOT NULL,
	[OIName] [nvarchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](4) NOT NULL,
	[GroupDec] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2020/6/8 8:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserUID] [varchar](15) NOT NULL,
	[UserPWD] [varchar](32) NOT NULL,
	[UserNickname] [nvarchar](10) NULL,
	[UserFace] [varchar](100) NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[UserRegState] [int] NOT NULL,
	[UserRegTime] [datetime] NULL,
	[GroupID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([CommentID], [CommentText], [CommentTime], [GameID], [UserID]) VALUES (7, N'感谢站长分享...', CAST(N'2017-09-28T13:35:14.000' AS DateTime), 8, 7)
INSERT [dbo].[Comment] ([CommentID], [CommentText], [CommentTime], [GameID], [UserID]) VALUES (14, N'新游戏发布出来喽，欢迎大家下载！', CAST(N'2017-11-14T14:37:43.480' AS DateTime), 7, 1)
INSERT [dbo].[Comment] ([CommentID], [CommentText], [CommentTime], [GameID], [UserID]) VALUES (15, N'感谢大家的支持，今后会努力寻找好玩的游戏给大家的！', CAST(N'2017-11-14T14:38:24.333' AS DateTime), 8, 1)
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[FriendLink] ON 

INSERT [dbo].[FriendLink] ([FLID], [FLName], [FLUrl]) VALUES (1, N'友则博客', N'tomonori.cc')
INSERT [dbo].[FriendLink] ([FLID], [FLName], [FLUrl]) VALUES (3, N'浅缘', N'sikii.cc')
SET IDENTITY_INSERT [dbo].[FriendLink] OFF
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([GameID], [GameName], [GameTime], [GameDec], [GameFace], [GameCmtCount], [GameHot], [UserID], [TypeID], [LinkID], [GameImg1], [GameImg2], [GameImg3]) VALUES (4, N'勇者大战魔物娘汉化版', CAST(N'2017-09-15T15:01:29.013' AS DateTime), N'《勇者大战魔物娘》是一款18禁RPG游戏，在游戏中，三十年前，在地狱大陆发生的“莱米那虐杀”，使人类与魔物的关系彻底破裂。我们的主角鲁卡，抱着构建人魔共存的理想世界的梦想，与莫名其妙捡回来的女主爱丽丝一起，踏上了旅途。', N'/Images/face/Game/gameface_74249798243d431a8f0dfa6e73f87dd0.jpg', 0, 1, 1, 2, N'832b0bfd-a830-4714-b13b-b497b41cc64c', N'/Images/Games/screenshot67a633d8b3d242dcbe4903d2d11d25bf_1.jpg', N'/Images/Games/screenshotd8fe4959c26c4ee3ab4fb0a54472de20_2.jpg', N'/Images/Games/screenshotaeb956868dd54a81a8f9913d3f37736e_3.jpg')
INSERT [dbo].[Games] ([GameID], [GameName], [GameTime], [GameDec], [GameFace], [GameCmtCount], [GameHot], [UserID], [TypeID], [LinkID], [GameImg1], [GameImg2], [GameImg3]) VALUES (7, N'《最终幻想3》免安装中文绿色版[游侠LMAO汉化]', CAST(N'2017-09-18T17:01:25.133' AS DateTime), N'《最终幻想3》带着全新的3D视觉效果和剧情来到PC平台！
　　游戏特色：
　　- 升级的3D视觉效果和全新的故事情节；
　　- 浏览怪兽图集和其他游戏内容时更流畅；
　　- 重新制作Job Mastery Cards的视觉效果；
　　- PC版拥有更佳的画面；
　　- 包含Steam集换式卡牌和成就。

开始游戏或者解压缩游戏时候注意关闭杀毒软件，防止误杀免DVD文件

安装步骤
1. 用WINRAR软件解压缩游戏到硬盘上
2. 开始游戏﻿', N'/Images/face/Game/gameface_c83b150893574d39939e09722b179d26.jpg', 1, 6, 1, 5, N'927db368-a908-436d-86fa-673c105e6ad3', N'/Images/Games/screenshot8af5ba64a0be413aaeca22ee0cc9a094_1.jpg', N'/Images/Games/screenshot2e490537c6a542ac843dd8f393050ae1_2.jpg', N'/Images/Games/screenshot5c66f19779624975af0d09f3694bff6f_3.jpg')
INSERT [dbo].[Games] ([GameID], [GameName], [GameTime], [GameDec], [GameFace], [GameCmtCount], [GameHot], [UserID], [TypeID], [LinkID], [GameImg1], [GameImg2], [GameImg3]) VALUES (8, N'《最终幻想10|10-2HD重制版》中文智能安装版', CAST(N'2017-09-19T10:58:53.207' AS DateTime), N'本游戏是《最终幻想10》和《最终幻想10-2》的高清重制版。
　　打破了死的螺旋，但也失去了最爱的他。被尊为大召唤师的尤娜却始终没有放弃再次和他相逢的希望。一个偶然的发现，引导尤娜踏上新的旅途。驾驭飞空艇，任天涯海角自由翱翔，变幻职业装，不管山高路险任意攀爬。为的只是多知道一点他的消息……
　　观念的冲突带来新一轮战争的阴影，千年的怨恨引发又一次大陆的危机。海鸥团应时而生，俏尤娜再挑重任，以歌声消除战争，用爱情驱散危机，宁静的扎纳尔坎德，充满了爱人们重逢的喜悦。', N'/Images/face/Game/gameface_e322b276a6444fb4973b1b324d443ff2.jpg', 2, 24, 1, 5, N'44393369-afce-4cec-ae9b-4c25c4004f14', N'/Images/Games/screenshot92d6f59f757b47e7b5c18334b5df87e9_1.jpg', N'/Images/Games/screenshot35403aeed67749db82d14e6d4aaee6e8_2.jpg', N'/Images/Games/screenshote52749a8148c45398c383d46e876b2b4_3.jpg')
SET IDENTITY_INSERT [dbo].[Games] OFF
SET IDENTITY_INSERT [dbo].[GameType] ON 

INSERT [dbo].[GameType] ([TypeID], [TypeName], [TypeClass], [OIID]) VALUES (2, N'R-18', 0, 3)
INSERT [dbo].[GameType] ([TypeID], [TypeName], [TypeClass], [OIID]) VALUES (4, N'即时战斗', 0, 2)
INSERT [dbo].[GameType] ([TypeID], [TypeName], [TypeClass], [OIID]) VALUES (5, N'回合制', 0, 2)
INSERT [dbo].[GameType] ([TypeID], [TypeName], [TypeClass], [OIID]) VALUES (6, N'故事互动', 0, 2)
INSERT [dbo].[GameType] ([TypeID], [TypeName], [TypeClass], [OIID]) VALUES (7, N'猎奇', 0, 3)
SET IDENTITY_INSERT [dbo].[GameType] OFF
INSERT [dbo].[Link] ([LinkID], [LinkURL], [LinkPWD], [LinkDec]) VALUES (N'44393369-afce-4cec-ae9b-4c25c4004f14', N'http://pan.baidu.com/s/1slACIo1', NULL, NULL)
INSERT [dbo].[Link] ([LinkID], [LinkURL], [LinkPWD], [LinkDec]) VALUES (N'832b0bfd-a830-4714-b13b-b497b41cc64c', N'http://pan.baidu.com/s/as2da3', N'1234', NULL)
INSERT [dbo].[Link] ([LinkID], [LinkURL], [LinkPWD], [LinkDec]) VALUES (N'927db368-a908-436d-86fa-673c105e6ad3', N'http://pan.baidu.com/share/link?shareid=109130245&uk=4027420848', N'1234', NULL)
SET IDENTITY_INSERT [dbo].[OutIn] ON 

INSERT [dbo].[OutIn] ([OIID], [OIName]) VALUES (2, N'表')
INSERT [dbo].[OutIn] ([OIID], [OIName]) VALUES (3, N'里')
SET IDENTITY_INSERT [dbo].[OutIn] OFF
SET IDENTITY_INSERT [dbo].[UserGroup] ON 

INSERT [dbo].[UserGroup] ([GroupID], [GroupName], [GroupDec]) VALUES (1, N'诺亚方舟', N'权限最高的设置')
INSERT [dbo].[UserGroup] ([GroupID], [GroupName], [GroupDec]) VALUES (2, N'生灵', N'注册未邮箱验证的用户')
INSERT [dbo].[UserGroup] ([GroupID], [GroupName], [GroupDec]) VALUES (3, N'人类', N'注册已验证的用户')
INSERT [dbo].[UserGroup] ([GroupID], [GroupName], [GroupDec]) VALUES (6, N'神灵', N'暂定-管理员')
SET IDENTITY_INSERT [dbo].[UserGroup] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserID], [UserUID], [UserPWD], [UserNickname], [UserFace], [UserEmail], [UserRegState], [UserRegTime], [GroupID]) VALUES (1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'友则', N'/Images/face/User/IMG_0891.JPG', N'gutrse3321@live.com', 1, CAST(N'2017-09-10T13:34:42.000' AS DateTime), 1)
INSERT [dbo].[UserInfo] ([UserID], [UserUID], [UserPWD], [UserNickname], [UserFace], [UserEmail], [UserRegState], [UserRegTime], [GroupID]) VALUES (7, N'kirito', N'c3021a4167e3a20709bccac91bceb3fe', N'SIKI', N'/Images/face/User/user_8c386271e4304ecfa24d5da253141106.jpg', N'1123844404@QQ.COM', 0, CAST(N'2017-09-27T14:07:55.327' AS DateTime), 2)
INSERT [dbo].[UserInfo] ([UserID], [UserUID], [UserPWD], [UserNickname], [UserFace], [UserEmail], [UserRegState], [UserRegTime], [GroupID]) VALUES (8, N'gutrse3321', N'a1d77e1629ba85f624f6af31701079bd', N'gutrse3321', N'/Images/face/User/user_5de2ab03b409403cab90456e1065b6fa.jpg', N'464189307@qq.com', 1, CAST(N'2017-10-04T16:10:56.597' AS DateTime), 6)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_GameID_COMMENT] FOREIGN KEY([GameID])
REFERENCES [dbo].[Games] ([GameID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_GameID_COMMENT]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_UserID_COMMENT] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_UserID_COMMENT]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD FOREIGN KEY([LinkID])
REFERENCES [dbo].[Link] ([LinkID])
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[GameType] ([TypeID])
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[GameType]  WITH CHECK ADD FOREIGN KEY([OIID])
REFERENCES [dbo].[OutIn] ([OIID])
GO
ALTER TABLE [dbo].[Notice]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_GroupID_USERINFO] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroup] ([GroupID])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_GroupID_USERINFO]
GO
ALTER DATABASE [DB_MyRPG] SET  READ_WRITE 
GO
