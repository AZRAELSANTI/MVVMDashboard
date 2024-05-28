USE [master]
GO

/****** Object:  Database [MVVMDB]    Script Date: 28.05.2024 20:10:20 ******/
CREATE DATABASE [MVVMDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVVMDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MVVMDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MVVMDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MVVMDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVVMDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MVVMDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MVVMDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MVVMDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MVVMDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MVVMDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [MVVMDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MVVMDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MVVMDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MVVMDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MVVMDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MVVMDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MVVMDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MVVMDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MVVMDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MVVMDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [MVVMDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MVVMDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MVVMDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MVVMDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MVVMDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MVVMDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MVVMDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MVVMDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [MVVMDB] SET  MULTI_USER 
GO

ALTER DATABASE [MVVMDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MVVMDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MVVMDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MVVMDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [MVVMDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MVVMDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [MVVMDB] SET QUERY_STORE = ON
GO

ALTER DATABASE [MVVMDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [MVVMDB] SET  READ_WRITE 
GO

