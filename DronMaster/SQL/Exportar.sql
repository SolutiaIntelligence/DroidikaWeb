/*
Navicat SQL Server Data Transfer

Source Server         : CarCrash
Source Server Version : 110000
Source Host           : 192.168.21.222:1433
Source Database       : Droidika
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2015-10-15 12:22:44
*/


-- ----------------------------
-- Table structure for dCatCameras
-- ----------------------------
DROP TABLE [dCatCameras]
GO
CREATE TABLE [dCatCameras] (
[idCamera] int NOT NULL IDENTITY(1,1) ,
[brand] varchar(15) NULL ,
[model] varchar(40) NULL ,
[img] varchar(100) NULL ,
[costMx] decimal(10,2) NULL ,
[costUsd] decimal(10,2) NULL 
)


GO
DBCC CHECKIDENT(N'[dCatCameras]', RESEED, 5)
GO

-- ----------------------------
-- Records of dCatCameras
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [dCatCameras] ON
GO
INSERT INTO [dCatCameras] ([idCamera], [brand], [model], [img], [costMx], [costUsd]) VALUES (N'1', N'GoPro', N'HERO+', null, N'3399.83', N'199.99'), (N'2', N'GoPro', N'HERO+ LCD', null, N'5099.83', N'299.99'), (N'3', N'GoPro', N'HERO4 Session', null, N'5099.83', N'299.99'), (N'4', N'GoPro', N'HERO4 Silver', null, N'6799.83', N'399.99'), (N'5', N'GoPro', N'HERO4 Black', null, N'8499.83', N'499.99')
GO
GO
SET IDENTITY_INSERT [dCatCameras] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for dCatDrones
-- ----------------------------
DROP TABLE [dCatDrones]
GO
CREATE TABLE [dCatDrones] (
[idCatDrones] int NOT NULL IDENTITY(1,1) ,
[brand] varchar(15) NULL ,
[model] varchar(40) NULL ,
[img] varchar(100) NULL ,
[costMx] decimal(10,2) NULL ,
[costUsd] decimal(10,2) NULL ,
[flightTime] int NULL 
)


GO
DBCC CHECKIDENT(N'[dCatDrones]', RESEED, 17)
GO

-- ----------------------------
-- Records of dCatDrones
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [dCatDrones] ON
GO
INSERT INTO [dCatDrones] ([idCatDrones], [brand], [model], [img], [costMx], [costUsd], [flightTime]) VALUES (N'1', N'DJI', N'Inspire 1', N'Inspire 1.jpg', N'56100.00', N'3300.00', N'18'), (N'2', N'DJI', N'Phantom 3 Professional', N'Phantom 3 Professional.jpg', N'26900.00', N'1582.35', N'23'), (N'3', N'DJI', N'Phantom 3 Advanced', N'Phantom 3 Advanced.png', N'21600.00', N'1270.59', N'23'), (N'4', N'DJI', N'Phantom 3 Standard', N'Phantom 3 Standard.jpg', N'16900.00', N'994.12', N'25'), (N'5', N'DJI', N'Phantom 2 Vision+', N'Phantom 2 Vision+.jpg', N'34680.00', N'2040.00', N'18'), (N'6', N'DJI', N'Phantom 2 Vision', N'Phantom 2-Vision.jpg', N'17699.00', N'1041.12', N'18'), (N'7', N'DJI', N'Phantom 2', N'Phantom 2.jpg', N'10800.00', N'635.29', N'18'), (N'8', N'DJI', N'Spreading Wings S1000+', N'Spreading-Wings-S1000+.jpg', N'120400.00', N'7082.35', N'15'), (N'9', N'DJI', N'Spreading Wings S900', N'Spreading-Wings-S900.jpg', N'99600.00', N'5858.82', N'18'), (N'10', N'DJI', N'Spreading Wings S800 EVO', N'Spreading-Wings-S800-EVO.jpg', N'68800.00', N'4047.06', N'20'), (N'11', N'3D Robotics', N'Solo', N'Solo.jpg', N'23000.00', N'1352.94', N'20'), (N'12', N'3D Robotics', N'X8+', N'X8+.jpg', N'22950.00', N'1350.00', N'15'), (N'13', N'3D Robotics', N'	Y6', N'Y6.jpg', N'10455.00', N'615.00', N'15'), (N'14', N'3D Robotics', N'	IRIS+', N'IRIS+.jpg', N'10200.00', N'600.00', N'18'), (N'15', N'3D Robotics', N'	Aero-M', N'Aero-M.jpg', N'25500.00', N'1500.00', N'50'), (N'16', N'Aibotix', N'	Aibotix X6', N'Aibotix-X6.jpg', N'2320000.00', N'136470.59', N'10'), (N'17', N'MIKE', N'MIKE X2', null, null, N'345.00', N'12')
GO
GO
SET IDENTITY_INSERT [dCatDrones] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for dDrones
-- ----------------------------
DROP TABLE [dDrones]
GO
CREATE TABLE [dDrones] (
[idDrone] int NOT NULL IDENTITY(1,1) ,
[alias] varchar(16) NULL ,
[brand] varchar(15) NULL ,
[model] varchar(40) NULL ,
[img] varchar(100) NULL ,
[costMx] decimal(10,2) NULL ,
[costUsd] decimal(10,2) NULL ,
[flightTime] int NULL ,
[manufactureYear] varchar(4) NULL ,
[cameraBrand] varchar(10) NULL ,
[cameraModel] varchar(30) NULL ,
[droneSerial] varchar(100) NULL ,
[cameraSerial] varchar(100) NULL ,
[email] varchar(40) NULL 
)


GO

-- ----------------------------
-- Records of dDrones
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [dDrones] ON
GO
SET IDENTITY_INSERT [dDrones] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for dFlightLogs
-- ----------------------------
DROP TABLE [dFlightLogs]
GO
CREATE TABLE [dFlightLogs] (
[idVuelo] int NOT NULL IDENTITY(1,1) ,
[pilotEmail] varchar(30) NULL ,
[droneAlias] varchar(30) NULL ,
[positionX] varchar(70) NULL ,
[positionY] varchar(70) NULL ,
[droneFlightTime] int NULL ,
[startDate] date NULL ,
[finishDate] date NULL ,
[totalFlighTime] decimal(3,2) NULL 
)


GO

-- ----------------------------
-- Records of dFlightLogs
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [dFlightLogs] ON
GO
SET IDENTITY_INSERT [dFlightLogs] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for dPilots
-- ----------------------------
DROP TABLE [dPilots]
GO
CREATE TABLE [dPilots] (
[idPilots] int NOT NULL IDENTITY(1,1) ,
[email] varchar(50) NULL ,
[fstName] varchar(30) NULL ,
[lstName] varchar(30) NULL ,
[password] varchar(12) NULL ,
[certificate] char(1) NULL ,
[certificateDate] date NULL ,
[sinisters] int NULL ,
[flightTime] int NULL 
)


GO
DBCC CHECKIDENT(N'[dPilots]', RESEED, 11)
GO

-- ----------------------------
-- Records of dPilots
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [dPilots] ON
GO
INSERT INTO [dPilots] ([idPilots], [email], [fstName], [lstName], [password], [certificate], [certificateDate], [sinisters], [flightTime]) VALUES (N'9', N'mflores@solutiaintelligence.com', N'Miguel Angel', N'Flores Godínez', N'mflores', N'0', null, N'0', N'0'), (N'10', N'anava@solutiaintelligence.com', N'Adriana Beatriz', N'Nava Bañuelos', N'anava', N'0', null, N'0', N'0'), (N'11', N'eflores@solutiaintelligence.com', N'Elizabeth', N'Flores Amézquita', N'eflores', N'0', null, N'0', N'0')
GO
GO
SET IDENTITY_INSERT [dPilots] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for dPolicies
-- ----------------------------
DROP TABLE [dPolicies]
GO
CREATE TABLE [dPolicies] (
[idPolicy] int NOT NULL IDENTITY(1,1) ,
[droneAlias] varchar(16) NULL ,
[manufactureYear] varchar(4) NULL ,
[pilotEmail] varchar(20) NULL ,
[droneValue] decimal(10,2) NULL ,
[droneNetPremium] decimal(10,2) NULL ,
[civilRes] decimal(10,2) NULL ,
[civilNetPremium] decimal(10,2) NULL ,
[custDroneNetPremium] decimal(10,2) NULL ,
[custCivilNetPremium] decimal(10,2) NULL ,
[durationDays] int NULL ,
[policyPriceUsd] decimal(10,2) NULL ,
[policyPurchaseDate] date NULL ,
[policyExpirationDate] date NULL 
)


GO

-- ----------------------------
-- Records of dPolicies
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [dPolicies] ON
GO
SET IDENTITY_INSERT [dPolicies] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Indexes structure for table dCatCameras
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dCatCameras
-- ----------------------------
ALTER TABLE [dCatCameras] ADD PRIMARY KEY ([idCamera])
GO

-- ----------------------------
-- Indexes structure for table dCatDrones
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dCatDrones
-- ----------------------------
ALTER TABLE [dCatDrones] ADD PRIMARY KEY ([idCatDrones])
GO

-- ----------------------------
-- Indexes structure for table dDrones
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dDrones
-- ----------------------------
ALTER TABLE [dDrones] ADD PRIMARY KEY ([idDrone])
GO

-- ----------------------------
-- Indexes structure for table dFlightLogs
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dFlightLogs
-- ----------------------------
ALTER TABLE [dFlightLogs] ADD PRIMARY KEY ([idVuelo])
GO

-- ----------------------------
-- Indexes structure for table dPilots
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dPilots
-- ----------------------------
ALTER TABLE [dPilots] ADD PRIMARY KEY ([idPilots])
GO

-- ----------------------------
-- Indexes structure for table dPolicies
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dPolicies
-- ----------------------------
ALTER TABLE [dPolicies] ADD PRIMARY KEY ([idPolicy])
GO
