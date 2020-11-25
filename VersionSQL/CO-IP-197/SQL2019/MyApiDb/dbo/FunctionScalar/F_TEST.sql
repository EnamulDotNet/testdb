/****** Object:  Function [dbo].[F_TEST]    Committed by VersionSQL https://www.versionsql.com ******/

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION F_TEST 
(
	@j nvarchar(max)
)
RETURNS varchar(250)
AS
BEGIN

	RETURN 'ok'

END