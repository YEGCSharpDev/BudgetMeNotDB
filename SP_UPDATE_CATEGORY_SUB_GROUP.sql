-- ================================================
-- SP_UPDATE_CATEGORY_SUB_GROUP
-- ================================================
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Updates a Category Sub Group>
-- =============================================
CREATE PROCEDURE dbo.SP_UPDATE_CATEGORY_SUB_GROUP 
     @SUB_CATEGORY_ID INT = NULL
	,@CATEGORY_ID INT = NULL
	,@SUB_CATEGORY_NAME NVARCHAR(1024) = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_CATEGORY_SUB_GROUP
	SET CATEGORY_ID = @CATEGORY_ID
		,SUB_CATEGORY_NAME = @SUB_CATEGORY_NAME
		,UPDATE_TS = @UPDATE_TS
	WHERE SUB_CATEGORY_ID = @SUB_CATEGORY_ID
END
GO