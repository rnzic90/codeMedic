USE [master]
GO

/****** Object:  Database [LekarskaOrdinacijaDb]    Script Date: 5/7/2019 12:37:48 AM ******/
CREATE DATABASE [LekarskaOrdinacijaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LekarskaOrdinacijaDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LekarskaOrdinacijaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LekarskaOrdinacijaDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LekarskaOrdinacijaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [LekarskaOrdinacijaDb] SET COMPATIBILITY_LEVEL = 140
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

ALTER DATABASE [LekarskaOrdinacijaDb] SET  READ_WRITE 
GO

