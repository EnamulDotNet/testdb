/****** Object:  Procedure [dbo].[S_TEST]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[S_TEST] 
--DECLARE  --UNCOMMENT FOR DEBUG
	@COMID VARCHAR(50)='',
	@USRID VARCHAR(500)='',
	@USRINFO VARCHAR(500)='',
	@OPTYPE INT=0,
	@SPNAME VARCHAR(200)='',
	@SECTION VARCHAR(200)='',
	@DETAILS VARCHAR(MAX)='',
	@P1 VARCHAR(200)='',
	@P2 VARCHAR(200)='',
	@P3 VARCHAR(200)='',
	@P4 VARCHAR(200)='',
	@P5 VARCHAR(200)='',
	@P6 VARCHAR(200)='',
	@P7 VARCHAR(200)='',
	@P8 VARCHAR(200)='',
	@P9 VARCHAR(200)='',
	@P10 VARCHAR(200)='',
	@P11 VARCHAR(200)='',
	@P12 VARCHAR(200)='',
	@P13 VARCHAR(200)='',
	@P14 VARCHAR(200)='',
	@P15 VARCHAR(200)='',
	@P16 VARCHAR(200)='',
	@P17 VARCHAR(200)='',
	@P18 VARCHAR(200)='',
	@P19 VARCHAR(200)='',
	@P20 VARCHAR(200)=''
AS --COMMENT FOR DEBUG
BEGIN
SET STATISTICS TIME OFF
SET STATISTICS IO OFF
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN --3 Details table named  #dt1, #dt2, #dt3
DECLARE @dtcount TINYINT=0
DROP TABLE IF EXISTS  #dt1
DROP TABLE IF EXISTS  #dt2
DROP TABLE IF EXISTS  #dt3
if isnull(@DETAILS,'') <> ''
SELECT @dtcount=count([key]) FROM OPENJSON(@DETAILS)
IF @dtcount>=1
SELECT c1=isnull(c1,''),c2=isnull(c2,''),c3=isnull(c3,''),c4=isnull(c4,''),c5=isnull(c5,''),
	   c6=isnull(c6,''),c7=isnull(c7,''),c8=isnull(c8,''),c9=isnull(c9,''),c10=isnull(c10,''),
	   c11=isnull(c11,''),c12=isnull(c12,''),c13=isnull(c13,''),c14=isnull(c14,''),c15=isnull(c15,''),
	   c16=isnull(c16,''),c17=isnull(c17,''),c18=isnull(c18,''),c19=isnull(c19,''),c20=isnull(c20,'')
INTO #dt1
FROM OPENJSON (@DETAILS , '$.dt1')  
WITH  (c1 varchar(200),c2 varchar(200),c3 varchar(200),c4 varchar(200),c5 varchar(200), 
       c6 varchar(200),c7 varchar(200),c8 varchar(200),c9 varchar(200),c10 varchar(200), 
       c11 varchar(200),c12 varchar(200),c13 varchar(200),c14 varchar(200),c15 varchar(200), 
       c16 varchar(200),c17 varchar(200),c18 varchar(200),c19 varchar(200),c20 varchar(200)) 
IF @dtcount>=2
SELECT c1=isnull(c1,''),c2=isnull(c2,''),c3=isnull(c3,''),c4=isnull(c4,''),c5=isnull(c5,''),
	   c6=isnull(c6,''),c7=isnull(c7,''),c8=isnull(c8,''),c9=isnull(c9,''),c10=isnull(c10,''),
	   c11=isnull(c11,''),c12=isnull(c12,''),c13=isnull(c13,''),c14=isnull(c14,''),c15=isnull(c15,''),
	   c16=isnull(c16,''),c17=isnull(c17,''),c18=isnull(c18,''),c19=isnull(c19,''),c20=isnull(c20,'')
INTO #dt2
FROM OPENJSON (@DETAILS , '$.dt2')  
WITH  (c1 varchar(200),c2 varchar(200),c3 varchar(200),c4 varchar(200),c5 varchar(200), 
       c6 varchar(200),c7 varchar(200),c8 varchar(200),c9 varchar(200),c10 varchar(200), 
       c11 varchar(200),c12 varchar(200),c13 varchar(200),c14 varchar(200),c15 varchar(200), 
       c16 varchar(200),c17 varchar(200),c18 varchar(200),c19 varchar(200),c20 varchar(200)) 
IF @dtcount>=3
SELECT c1=isnull(c1,''),c2=isnull(c2,''),c3=isnull(c3,''),c4=isnull(c4,''),c5=isnull(c5,''),
	   c6=isnull(c6,''),c7=isnull(c7,''),c8=isnull(c8,''),c9=isnull(c9,''),c10=isnull(c10,''),
	   c11=isnull(c11,''),c12=isnull(c12,''),c13=isnull(c13,''),c14=isnull(c14,''),c15=isnull(c15,''),
	   c16=isnull(c16,''),c17=isnull(c17,''),c18=isnull(c18,''),c19=isnull(c19,''),c20=isnull(c20,'')
INTO #dt3
FROM OPENJSON (@DETAILS , '$.dt3')  
WITH  (c1 varchar(200),c2 varchar(200),c3 varchar(200),c4 varchar(200),c5 varchar(200), 
       c6 varchar(200),c7 varchar(200),c8 varchar(200),c9 varchar(200),c10 varchar(200), 
       c11 varchar(200),c12 varchar(200),c13 varchar(200),c14 varchar(200),c15 varchar(200), 
       c16 varchar(200),c17 varchar(200),c18 varchar(200),c19 varchar(200),c20 varchar(200)) 
END
---------------------------------------------------
IF @SECTION='A' GOTO A

---------------------------------------------------
A:
BEGIN
	SELECT * from #dt1
	SELECT * from #dt2

END
--==================================End Section==================================
--==================================END PROCEDURE===============================
END