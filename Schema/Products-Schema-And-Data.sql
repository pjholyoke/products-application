USE [master]
GO
/****** Object:  Database [Products]    Script Date: 9/1/2021 5:52:19 PM ******/
CREATE DATABASE [Products]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Products', FILENAME = N'D:\SQL SERVER EXPRESS\MSSQL15.SQLEXPRESS\MSSQL\DATA\Products.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Products_log', FILENAME = N'D:\SQL SERVER EXPRESS\MSSQL15.SQLEXPRESS\MSSQL\DATA\Products_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Products].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Products] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Products] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Products] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Products] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Products] SET ARITHABORT OFF 
GO
ALTER DATABASE [Products] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Products] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Products] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Products] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Products] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Products] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Products] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Products] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Products] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Products] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Products] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Products] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Products] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Products] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Products] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Products] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Products] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Products] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Products] SET  MULTI_USER 
GO
ALTER DATABASE [Products] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Products] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Products] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Products] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Products] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Products] SET QUERY_STORE = OFF
GO
USE [Products]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Products]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/1/2021 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [uniqueidentifier] NOT NULL,
	[TypeID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[Desc] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 9/1/2021 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[Desc] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'9add0544-7670-4000-b4af-00da01ea7795', N'00000000-0000-0000-0000-000000000003', N'EV1', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'05b8e965-00fa-472e-969e-07d29882f5bd', N'00000000-0000-0000-0000-000000000003', N'F-Series', N'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'186069d3-d5d8-4509-92a2-14082a5a6c27', N'00000000-0000-0000-0000-000000000003', N'300M', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'94054307-fd15-4fd5-a017-1506bda8a774', N'00000000-0000-0000-0000-000000000003', N'FJ Cruiser', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'326d0176-37bb-4be0-811d-1a34e938cf5f', N'00000000-0000-0000-0000-000000000003', N'RX-8', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'915dd897-c516-41bb-b20b-1b82d7e369ca', N'00000000-0000-0000-0000-000000000003', N'Lumina', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'4d0d1b65-a709-41e9-91ae-22390ff34c02', N'00000000-0000-0000-0000-000000000003', N'350Z', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'ba1dee08-b2a1-4596-b492-227cda232cca', N'00000000-0000-0000-0000-000000000003', N'Camry', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'e6d26f2c-bb92-42ef-8cba-23f406958206', N'00000000-0000-0000-0000-000000000001', N'Apple pie', N'An American classic.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'c3aa47ad-ca9d-4eac-8132-27f1830bb73b', N'00000000-0000-0000-0000-000000000003', N'Yukon', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'3bf698ca-905d-47cc-b984-2cf29f1c2454', N'00000000-0000-0000-0000-000000000003', N'Sierra', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'74ae1cda-139d-4360-b8f4-401bd1b76ad6', N'00000000-0000-0000-0000-000000000003', N'Samurai', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'6c3daebd-04e2-4beb-b57a-4f56116efa73', N'00000000-0000-0000-0000-000000000003', N'Sunbird', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'c5da4ae9-d7df-4e4b-8b51-513add2a64ae', N'00000000-0000-0000-0000-000000000001', N'Smörgåstårta', N'A Swedish dish similar to a cake with varying ingredients, usually includes meat and vegetables.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'5d46a208-8341-45b3-9089-53226c1cb27c', N'00000000-0000-0000-0000-000000000003', N'Fleetwood', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'0a22e1fe-bc13-4445-a2c0-594d2424de43', N'00000000-0000-0000-0000-000000000003', N'Tacoma', N'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'30a60513-1ffd-4bea-86a0-5adb0899d4cf', N'00000000-0000-0000-0000-000000000003', N'Forenza', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'e0da774b-b69e-4bc5-9f03-5b0dcc08b70a', N'00000000-0000-0000-0000-000000000003', N'D350 Club', N'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'28a9205e-8266-452b-a21e-614d02d78718', N'00000000-0000-0000-0000-000000000003', N'Altima', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'3b5fdd55-4a34-4432-bf52-6a9705e7dabf', N'00000000-0000-0000-0000-000000000003', N'Grand Prix', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'66b8f8f3-c092-4739-9def-6d7782c712b9', N'00000000-0000-0000-0000-000000000002', N'C++', N'')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'd4ce3df8-bbe1-4fe0-9478-6f56fa81716b', N'00000000-0000-0000-0000-000000000003', N'Neon', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'5a035521-113e-4838-a6cc-7b4bf32a3d26', N'00000000-0000-0000-0000-000000000002', N'Java', N'')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'f66a5ee0-f7fb-4b4f-bf66-7b5dd48c9c38', N'00000000-0000-0000-0000-000000000001', N'Borsch', N'Ukranian Stew made with beets.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'38f6e6c7-4106-41c8-a57e-938430ec1c07', N'00000000-0000-0000-0000-000000000003', N'Town Car', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'7fb498ab-bb09-4f7e-a376-b7293d1e00f0', N'00000000-0000-0000-0000-000000000003', N'Discovery', N'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'905aafe7-faa7-483a-925a-b7d1d067937b', N'00000000-0000-0000-0000-000000000003', N'Charger', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'63d7abeb-4c74-4175-bd42-b9c071a8334e', N'00000000-0000-0000-0000-000000000002', N'C#', N'')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'5023a3b9-fdb4-4456-a4a2-c954c36fdd1f', N'00000000-0000-0000-0000-000000000003', N'Beretta', N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'b386c09e-8762-494d-b659-d349778320b4', N'00000000-0000-0000-0000-000000000003', N'370Z', N'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'c21e1714-ec8a-4f3f-9859-d9196a2e68ca', N'00000000-0000-0000-0000-000000000003', N'Cayman', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'e46151cd-96a2-4b9f-a6d1-dabdba4a7733', N'00000000-0000-0000-0000-000000000003', N'SJ', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'23430a67-f1e5-4af7-a3f9-ecc41dcd4bd1', N'00000000-0000-0000-0000-000000000003', N'4Runner', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'447c3b9a-a1e2-48f7-85eb-ef1f41279ff1', N'00000000-0000-0000-0000-000000000003', N'Miata MX-5', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'90f4fc57-7618-4af5-8e7a-f1af82ef16a1', N'00000000-0000-0000-0000-000000000003', N'S-Series', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.')
INSERT [dbo].[Products] ([ID], [TypeID], [Name], [Desc]) VALUES (N'ba862922-2aaa-427d-9b87-f488229c1d57', N'00000000-0000-0000-0000-000000000003', N'Outlook', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.')
INSERT [dbo].[ProductTypes] ([ID], [Name], [Desc]) VALUES (N'00000000-0000-0000-0000-000000000001', N'Food', N'Different types of food.')
INSERT [dbo].[ProductTypes] ([ID], [Name], [Desc]) VALUES (N'00000000-0000-0000-0000-000000000002', N'Programming Languages', N'Different programming languages.')
INSERT [dbo].[ProductTypes] ([ID], [Name], [Desc]) VALUES (N'00000000-0000-0000-0000-000000000003', N'Cars', N'Different car models.')
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_TypeID] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ProductTypes] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_TypeID]
GO
USE [master]
GO
ALTER DATABASE [Products] SET  READ_WRITE 
GO
