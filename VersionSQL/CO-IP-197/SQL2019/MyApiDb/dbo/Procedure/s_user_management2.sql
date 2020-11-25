/****** Object:  Procedure [dbo].[s_user_management2]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[s_user_management2] 
	@section varchar(50)='',
	@input varchar(max)='',
	@usrId varchar(50)='',
	@usrcomid int ='',
	@usrBrnId int ='',
	@sessionId int ='',
	@dateTime datetime =''


AS
BEGIN
SET STATISTICS TIME OFF
SET STATISTICS IO OFF
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN --start master-----------------------------------------

  IF @section='A' GOTO A
  IF @section='B' GOTO B
  IF @section='C' GOTO C
  SELECT res=-1,  msg=@section+' not found in '+OBJECT_NAME(@@PROCID)
  return

end
---------------------------------------------------
A:
BEGIN
	SELECT 1
return
END
--==================================End Section==================================
B:
BEGIN
SELECT [id]
      ,[lvl]
     
	  ,shortName
      ,[lnk]
      ,[seqn]
      ,[header]
      ,[title]
      ,[icon]
	  ,ishomepage
	   ,a.name
  FROM Um_Menu a
  where isactive=1
  order by lvl,seqn
	return
return
	--SELECT [id]
 --     ,[softid]
 --     ,[name]
 --     ,[header]
 --     ,[path]
 --     ,[title]
 --     ,[lvl]
 --     ,[seqn]
 -- FROM [TESTDB].[dbo].[menuinfo]
 -- for json path

return
END
--==================================End Section==================================
C:
BEGIN
--select compress((
-------------------------
SELECT [id]
      ,[lvl]
      ,[name]
      ,[lnk]
      ,[seqn]
      ,[header]
      ,[title]
      ,[icon]
	  ,ishomepage
  FROM [TESTDB].[dbo].[menuinfo]
  where isactive=1
  order by lvl,seqn
---------------------------
  for json path
  --))

return
END
--==================================End Section==================================
-----------------------------------------------------------------------------------
--++++++++++++++++++++++++++=======================================================
-----------------------------------------------------------------------------------
end
  --end procedure---------------------------------------------------------