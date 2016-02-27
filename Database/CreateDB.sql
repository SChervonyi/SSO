USE [master]
GO

--exec sp_who2
--kill 52

IF EXISTS (SELECT name FROM master.dbo.sysdatabases where name = N'SingleSignOn') 
BEGIN
	DROP DATABASE [SingleSignOn]
END
GO

/****** Object:  Database [SingleSignOn]    Script Date: 27.02.2016 14:10:15 ******/
CREATE DATABASE [SingleSignOn] 
GO
ALTER DATABASE SingleSignOn MODIFY FILE
( NAME = N'SingleSignOn' , SIZE = 3048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
GO
ALTER DATABASE SingleSignOn MODIFY FILE 
( NAME = N'SingleSignOn_log' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO