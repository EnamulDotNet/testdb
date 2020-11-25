/****** Object:  Procedure [dbo].[s_user_management1]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[s_user_management1] 
	@input varchar(max)='',
	@spname varchar(50)='',
	@section varchar(50)='',
	@usrcomid varchar(50)='',
	@usrid varchar(50)='',
	@sessionid varchar(50)=''
AS
BEGIN
SET STATISTICS TIME OFF
SET STATISTICS IO OFF
SET XACT_ABORT ON
SET NOCOUNT ON
BEGIN --start master-----------------------------------------

	--return
DECLARE 
	@optype varchar(50)='',
	@trnid varchar(50)='',
	@p1 varchar(500)='',
	@p2 varchar(500)='',
	@p3 varchar(500)='',
	@p4 varchar(500)='',
	@p5 varchar(500)='',
	@p6 varchar(500)='',
	@p7 varchar(500)='',
	@p8 varchar(500)='',
	@p9 varchar(500)='',
	@p10 varchar(500)='',
	@p11 varchar(500)='',
	@p12 varchar(500)='',
	@p13 varchar(500)='',
	@p14 varchar(500)='',
	@p15 varchar(500)='',
	@p16 varchar(500)='',
	@p17 varchar(500)='',
	@p18 varchar(500)='',
	@p19 varchar(500)='',
	@p20 varchar(500)='',
	@dt1 varchar(max)='',
	@dt2 varchar(max)=''
	--select @input return;
declare @inputJson varchar(max)=@input;--(select cast(decompress(nullif(@input,'')) as varchar(max)));	
--select @inputJson return;
if(isnull(@inputJson,'')='') set @inputJson='{}'
select [key]=a.[key], [value]=a.[value] into #tjsonroot from openjson(@inputJson) a
select  @optype=optype, @trnid=trnid,
		@p1=p1, @p2=p2, @p3=p3, @p4=p4, @p5=p5, @p6=p6, @p7=p7, @p8=p8, @p9=p9, @p10=p10,
		@p11=p11, @p12=p12, @p13=p13, @p14=p14, @p15=p15, @p16=p16, @p17=p17, @p18=p18, @p19=p19, @p20=20,
		@dt1=dt1, @dt2=dt2
from
(select [key], [value] from #tjsonroot) as source
pivot
(
 min([value])
 for [key] in (optype, trnid,
		p1, p2, p3, p4, p5, p6, p7, p8, p9, p10,
		p11, p12, p13, p14, p15, p16, p17, p18, p19, p20,
		dt1, dt2)
) as pvt
drop table #tjsonroot
end 
---end master----------------------------------------------
drop table  if exists #dt1
drop table  if exists #dt2
  CREATE TABLE #dt1 (sl int identity(1,1) primary key,c1 varchar(200),c2 varchar(200),c3 varchar(200)
  ,c4 varchar(200),c5 varchar(200),c6 varchar(200),c7 varchar(200),c8 varchar(200),c9 varchar(200),c10 varchar(200)
  ,c11 varchar(200),c12 varchar(200),c13 varchar(200),c14 varchar(200),c15 varchar(200),c16 varchar(200),c17 varchar(200)
  ,c18 varchar(200),c19 varchar(200),c20 varchar(200))
if(isnull(@dt1,'') <> '')
begin ---start dt1-----------------------------------------------
  select j1.[key] s, j2.[key] k, j2.[value]v,ROW_NUMBER() over (order by j1.[key]) sl 
  into #tcol1 from OPENJSON(@dt1) j1 CROSS APPLY OPENJSON (j1.[value]) j2
  declare @colcnt1 int=(select count(s) from #tcol1 where s=0)
  declare @cnt1 tinyint=20
  declare @qry1 nvarchar(2000)=''
  declare @colname1 varchar(100)=''
  declare @jsoncolname1 varchar(2000)=''
  declare @jsonwith1 varchar(2000)=''
  while (@cnt1>@colcnt1)
  begin
  set @qry1= iif(@cnt1=20,'ALTER TABLE #dt1 drop column ',@qry1) +'c'+cast(@cnt1 as varchar(2))+iif(@cnt1-1>@colcnt1,',',';')
  set @cnt1=@cnt1-1
  end
  exec (@qry1)
  set @cnt1=1
  set @qry1=''
  while (@cnt1<=@colcnt1)
  begin
  set @colname1=(select k from #tcol1 where s=0 and sl=@cnt1)
  set @jsoncolname1=@jsoncolname1+@colname1+'=isnull('+@colname1+','''''+')'+iif(@cnt1<@colcnt1,',','')
  set @jsonwith1=@jsonwith1+@colname1+' varchar(200)'+iif(@cnt1<@colcnt1,',','')
  set @cnt1=@cnt1+1
  end
  drop table #tcol1
  exec (@qry1)
  declare @qryjson1 varchar(max)='insert into #dt1 SELECT '+@jsoncolname1+'FROM OPENJSON('''+@dt1+''')'+'WITH('+@jsonwith1+')'
  exec (@qryjson1)
  --select * from #dt1
  --drop table #dt1
  end
  ----end dt1-------------------------------------
  CREATE TABLE #dt2 (sl int identity(1,1) primary key,c1 varchar(200),c2 varchar(200),c3 varchar(200)
  ,c4 varchar(200),c5 varchar(200),c6 varchar(200),c7 varchar(200),c8 varchar(200),c9 varchar(200),c10 varchar(200)
  ,c11 varchar(200),c12 varchar(200),c13 varchar(200),c14 varchar(200),c15 varchar(200),c16 varchar(200),c17 varchar(200)
  ,c18 varchar(200),c19 varchar(200),c20 varchar(200))
if(isnull(@dt2,'')<>'')
begin ---start dt1-----------------------------------------------
  select j1.[key] s, j2.[key] k, j2.[value]v,ROW_NUMBER() over (order by j1.[key]) sl 
  into #tcol2 from OPENJSON(@dt2) j1 CROSS APPLY OPENJSON (j1.[value]) j2
  declare @colcnt2 int=(select count(s) from #tcol2 where s=0)
  declare @cnt2 tinyint=20
  declare @qry2 nvarchar(2000)=''
  declare @colname2 varchar(100)=''
  declare @jsoncolname2 varchar(2000)=''
  declare @jsonwith2 varchar(2000)=''
  while (@cnt2>@colcnt2)
  begin
  set @qry2= iif(@cnt2=20,'ALTER TABLE #dt2 drop column ',@qry2) +'c'+cast(@cnt2 as varchar(2))+iif(@cnt2-1>@colcnt2,',',';')
  set @cnt2=@cnt2-1
  end
  exec (@qry2)
  set @cnt2=1
  set @qry2=''
  while (@cnt2<=@colcnt2)
  begin
  set @colname2=(select k from #tcol2 where s=0 and sl=@cnt2)
  set @jsoncolname2=@jsoncolname2+@colname2+'=isnull('+@colname2+','''''+')'+iif(@cnt2<@colcnt2,',','')
  set @jsonwith2=@jsonwith2+@colname2+' varchar(200)'+iif(@cnt2<@colcnt2,',','')
  set @cnt2=@cnt2+1
  end
  drop table #tcol2
  exec (@qry2)
  declare @qryjson2 varchar(max)='insert into #dt2 SELECT '+@jsoncolname2+'FROM OPENJSON('''+@dt2+''')'+'WITH('+@jsonwith2+')'
  exec (@qryjson2)
  --select * from #dt2
  --drop table #dt2
  end
  ----end dt1-------------------------------------
  IF @section='A' GOTO A
  IF @section='B' GOTO B
  IF @section='C' GOTO C
  SELECT res=-1,  msg=@section+' not found in '+OBJECT_NAME(@@PROCID)
  return


---------------------------------------------------
A:
BEGIN
	SELECT @trnid a
	for json path
return
END
--==================================End Section==================================
B:
BEGIN
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