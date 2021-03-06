USE [master]
GO
CREATE DATABASE [LekarskaOrdinacijaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LekarskaOrdinacijaDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LekarskaOrdinacijaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LekarskaOrdinacijaDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LekarskaOrdinacijaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LekarskaOrdinacijaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET  MULTI_USER 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET QUERY_STORE = OFF
GO
USE [LekarskaOrdinacijaDb]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[slika] [nvarchar](100) NULL,
	[titula_zvanje] [nvarchar](50) NULL,
	[ime] [nvarchar](50) NULL,
	[prezime] [nvarchar](50) NULL,
	[ime_prezime]  AS (([ime]+' ')+[prezime]),
	[titula_zvanje_ime_prezime]  AS (((([titula_zvanje]+'')+[ime])+'')+[prezime]),
	[id_specijalizacije] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnik](
	[id_korisnika] [int] IDENTITY(1,1) NOT NULL,
	[slika] [nvarchar](100) NULL,
	[ime] [nvarchar](50) NULL,
	[prezime] [nvarchar](50) NULL,
	[id_vrste_korisnika] [int] NULL,
	[id_specijalizacije] [int] NULL,
	[jmbg] [int] NULL,
	[korisnicko_ime] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[lozinka] [nvarchar](50) NULL,
 CONSTRAINT [PK_Korisnik] PRIMARY KEY CLUSTERED 
(
	[id_korisnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specijalizacija](
	[id_specijalizacije] [int] IDENTITY(1,1) NOT NULL,
	[vrsta_specijalizacije] [nvarchar](50) NULL,
 CONSTRAINT [PK_Specijalizacija] PRIMARY KEY CLUSTERED 
(
	[id_specijalizacije] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usluga](
	[id_usluga] [int] IDENTITY(1,1) NOT NULL,
	[vrsta_usluge] [nvarchar](50) NULL,
	[cena] [int] NULL,
 CONSTRAINT [PK_Usluga] PRIMARY KEY CLUSTERED 
(
	[id_usluga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VrstaKorisnika](
	[id_vrste_korisnika] [int] IDENTITY(1,1) NOT NULL,
	[vrsta_korisnika] [nvarchar](50) NULL,
 CONSTRAINT [PK_VrstaKorisnika] PRIMARY KEY CLUSTERED 
(
	[id_vrste_korisnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazivanje](
	[id_zakazivanja] [int] IDENTITY(1,1) NOT NULL,
	[id_korisnika] [nvarchar](128) NULL,
	[id_usluga] [int] NULL,
	[vreme_pocetka] [datetime] NULL,
	[vreme_zavrsetka] [datetime] NULL,
	[beleska] [nvarchar](max) NULL,
	[lekar_id] [nvarchar](128) NULL,
 CONSTRAINT [PK_Zakazivanje] PRIMARY KEY CLUSTERED 
(
	[id_zakazivanja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'', N'')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'02731a0a-8e33-4241-87e9-5e26697fcafb', N'Pacijent')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8080037a-c61c-4ade-8dae-72c9b529f48f', N'Doktor')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a1f7d3b6-ee7b-47bc-89c5-36d5a9e55828', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'69fdec00-a57d-4632-8b4a-5e28dcab020f', N'a1f7d3b6-ee7b-47bc-89c5-36d5a9e55828')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b3211fa-13ca-4be0-a9cf-8d995555373f', N'02731a0a-8e33-4241-87e9-5e26697fcafb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'894a9c47-cf69-4a3d-bd86-6841dece5090', N'02731a0a-8e33-4241-87e9-5e26697fcafb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'89fb3530-a9cd-4c84-bfd4-3f5c7e9b0f49', N'02731a0a-8e33-4241-87e9-5e26697fcafb')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [slika], [titula_zvanje], [ime], [prezime], [id_specijalizacije]) VALUES (N'69fdec00-a57d-4632-8b4a-5e28dcab020f', N'rnzic90@gmail.com', 0, N'APcgh9SsYj/+jMMIvDLK7FiVaMix2O+7X43/IE4hH3lTZty0RMb0yzM4Vy/UkSx8gw==', N'd5d424af-514f-4513-946e-9c3f9ae0bab2', NULL, 0, 0, NULL, 0, 0, N'rnzic90@gmail.com', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [slika], [titula_zvanje], [ime], [prezime], [id_specijalizacije]) VALUES (N'6b3211fa-13ca-4be0-a9cf-8d995555373f', N'doc@doc.com', 0, N'AMx3uz0o1s8ac2vmQuNilwGrXju/ua6Pxc9YXklgbeptJix8DLcaslpLO/Io/Wee8Q==', N'09cc8c5e-006d-4c64-bbe3-920b1c88c31e', NULL, 0, 0, NULL, 1, 0, N'doc@doc.com', NULL, NULL, N'Aleksandar', N'Gak', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [slika], [titula_zvanje], [ime], [prezime], [id_specijalizacije]) VALUES (N'894a9c47-cf69-4a3d-bd86-6841dece5090', N'doca@doca.com', 0, N'ADj2d8GvFj5P2ooKk/f8ae1cb489aGVEl4Q3psvmZGydNdhbyYfvEtH3Volu4mM2Uw==', N'409b0212-1dda-4c7f-9378-34516d594f2a', NULL, 0, 0, NULL, 1, 0, N'doca@doca.com', NULL, NULL, N'Đorđe', N'Ivanović', 3)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [slika], [titula_zvanje], [ime], [prezime], [id_specijalizacije]) VALUES (N'89fb3530-a9cd-4c84-bfd4-3f5c7e9b0f49', N'doktor@doktor.com', 0, N'AG1Df2Q7UCYftqtNkxEOuQv9rud6oxz8RdBsro26mpUNVSe3+f1qpV4jYjbOW/D8Iw==', N'4a95d8e0-5938-4474-90ed-cba539f8dd12', NULL, 0, 0, NULL, 1, 0, N'doktor@doktor.com', NULL, NULL, N'Jelena', N'Lompar', 3)
SET IDENTITY_INSERT [dbo].[Korisnik] ON 

INSERT [dbo].[Korisnik] ([id_korisnika], [slika], [ime], [prezime], [id_vrste_korisnika], [id_specijalizacije], [jmbg], [korisnicko_ime], [email], [lozinka]) VALUES (1, N'jelena.jpeg', N'Jelena', N'Lompar', 2, 1, 123123123, N'jelena', N'opakilompar@gmail.com', N'jelena')
INSERT [dbo].[Korisnik] ([id_korisnika], [slika], [ime], [prezime], [id_vrste_korisnika], [id_specijalizacije], [jmbg], [korisnicko_ime], [email], [lozinka]) VALUES (2, N'djole.jpeg', N'Đorđe', N'Ivanović', 2, 2, 321321321, N'djole', N'djole@gmail.com', N'djole')
INSERT [dbo].[Korisnik] ([id_korisnika], [slika], [ime], [prezime], [id_vrste_korisnika], [id_specijalizacije], [jmbg], [korisnicko_ime], [email], [lozinka]) VALUES (3, N'aleksandar.jpeg', N'Aleksandar', N'Gak', 2, 3, 987987987, N'aca', N'aca@gmail.com', N'aca')
INSERT [dbo].[Korisnik] ([id_korisnika], [slika], [ime], [prezime], [id_vrste_korisnika], [id_specijalizacije], [jmbg], [korisnicko_ime], [email], [lozinka]) VALUES (4, N'pavle.png', N'Pavle', N'Dakić', 2, 4, 789789789, N'paja', N'pavle@gmail.com', N'paja')
INSERT [dbo].[Korisnik] ([id_korisnika], [slika], [ime], [prezime], [id_vrste_korisnika], [id_specijalizacije], [jmbg], [korisnicko_ime], [email], [lozinka]) VALUES (5, N'admin', NULL, NULL, 1, NULL, NULL, N'admin', NULL, N'admin')
INSERT [dbo].[Korisnik] ([id_korisnika], [slika], [ime], [prezime], [id_vrste_korisnika], [id_specijalizacije], [jmbg], [korisnicko_ime], [email], [lozinka]) VALUES (6, NULL, N'pera', N'peric', NULL, NULL, NULL, NULL, N'peaa', N'pera')
SET IDENTITY_INSERT [dbo].[Korisnik] OFF
SET IDENTITY_INSERT [dbo].[Specijalizacija] ON 

INSERT [dbo].[Specijalizacija] ([id_specijalizacije], [vrsta_specijalizacije]) VALUES (1, N'Internista')
INSERT [dbo].[Specijalizacija] ([id_specijalizacije], [vrsta_specijalizacije]) VALUES (2, N'Dermatolog')
INSERT [dbo].[Specijalizacija] ([id_specijalizacije], [vrsta_specijalizacije]) VALUES (3, N'Hirurg')
INSERT [dbo].[Specijalizacija] ([id_specijalizacije], [vrsta_specijalizacije]) VALUES (4, N'Oftalmolog')
SET IDENTITY_INSERT [dbo].[Specijalizacija] OFF
SET IDENTITY_INSERT [dbo].[Usluga] ON 

INSERT [dbo].[Usluga] ([id_usluga], [vrsta_usluge], [cena]) VALUES (1, N'Oftalmološki pregled', 1500)
INSERT [dbo].[Usluga] ([id_usluga], [vrsta_usluge], [cena]) VALUES (3, N'Internistički pregled', 800)
INSERT [dbo].[Usluga] ([id_usluga], [vrsta_usluge], [cena]) VALUES (4, N'Dermatološki pregled', 1750)
INSERT [dbo].[Usluga] ([id_usluga], [vrsta_usluge], [cena]) VALUES (5, N'Hirurški pregled', 2500)
SET IDENTITY_INSERT [dbo].[Usluga] OFF
SET IDENTITY_INSERT [dbo].[VrstaKorisnika] ON 

INSERT [dbo].[VrstaKorisnika] ([id_vrste_korisnika], [vrsta_korisnika]) VALUES (1, N'admin')
INSERT [dbo].[VrstaKorisnika] ([id_vrste_korisnika], [vrsta_korisnika]) VALUES (2, N'lekar')
INSERT [dbo].[VrstaKorisnika] ([id_vrste_korisnika], [vrsta_korisnika]) VALUES (3, N'korisnik')
SET IDENTITY_INSERT [dbo].[VrstaKorisnika] OFF
SET IDENTITY_INSERT [dbo].[Zakazivanje] ON 

INSERT [dbo].[Zakazivanje] ([id_zakazivanja], [id_korisnika], [id_usluga], [vreme_pocetka], [vreme_zavrsetka], [beleska], [lekar_id]) VALUES (2, N'69fdec00-a57d-4632-8b4a-5e28dcab020f', 1, CAST(N'2019-05-25T00:00:00.000' AS DateTime), CAST(N'2019-05-25T00:25:00.000' AS DateTime), N'nenenanena', NULL)
INSERT [dbo].[Zakazivanje] ([id_zakazivanja], [id_korisnika], [id_usluga], [vreme_pocetka], [vreme_zavrsetka], [beleska], [lekar_id]) VALUES (5, N'894a9c47-cf69-4a3d-bd86-6841dece5090', 5, CAST(N'2019-05-25T00:00:00.000' AS DateTime), CAST(N'2019-05-25T00:25:00.000' AS DateTime), N'cbx', NULL)
SET IDENTITY_INSERT [dbo].[Zakazivanje] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Specijalizacija] FOREIGN KEY([id_specijalizacije])
REFERENCES [dbo].[Specijalizacija] ([id_specijalizacije])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Specijalizacija]
GO
ALTER TABLE [dbo].[Zakazivanje]  WITH CHECK ADD  CONSTRAINT [FK_Zakazivanje_AspNetUsers] FOREIGN KEY([id_korisnika])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Zakazivanje] CHECK CONSTRAINT [FK_Zakazivanje_AspNetUsers]
GO
ALTER TABLE [dbo].[Zakazivanje]  WITH CHECK ADD  CONSTRAINT [FK_Zakazivanje_AspNetUsers1] FOREIGN KEY([lekar_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Zakazivanje] CHECK CONSTRAINT [FK_Zakazivanje_AspNetUsers1]
GO
ALTER TABLE [dbo].[Zakazivanje]  WITH CHECK ADD  CONSTRAINT [FK_Zakazivanje_Usluga] FOREIGN KEY([id_usluga])
REFERENCES [dbo].[Usluga] ([id_usluga])
GO
ALTER TABLE [dbo].[Zakazivanje] CHECK CONSTRAINT [FK_Zakazivanje_Usluga]
GO
USE [master]
GO
ALTER DATABASE [LekarskaOrdinacijaDb] SET  READ_WRITE 
GO
