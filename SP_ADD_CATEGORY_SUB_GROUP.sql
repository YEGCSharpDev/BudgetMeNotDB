-- ================================================
-- SP_ADD_CATEGORY_SUB_GROUP
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Inserts an Category Sub Group>
-- =============================================
CREATE PROCEDURE dbo.SP_ADD_CATEGORY_SUB_GROUP 
	 @SUB_CATEGORY_ID INT = NULL
	,@CATEGORY_ID INT = NULL
	,@SUB_CATEGORY_NAME NVARCHAR(1024) = NULL
	,@CREATE_TS DATETIME = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO dbo.BMN_CATEGORY_SUB_GROUP (
		SUB_CATEGORY_ID
		,CATEGORY_ID
        ,SUB_CATEGORY_NAME
		,CREATE_TS
		,UPDATE_TS
		)
	VALUES (
	     @SUB_CATEGORY_ID
	    ,@CATEGORY_ID
		,@SUB_CATEGORY_NAME
		,@CREATE_TS
		,@UPDATE_TS
		)
END
GO	