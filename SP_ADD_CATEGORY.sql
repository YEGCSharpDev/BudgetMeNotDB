-- ================================================
-- SP_ADD_CATEGORY
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Inserts an Category>
-- =============================================
CREATE PROCEDURE dbo.SP_ADD_CATEGORY 
	 @CATEGORY_ID INT 
	,@CATEGORY_NAME NVARCHAR(1024) 
	,@CREATE_TS DATETIME 
	,@UPDATE_TS DATETIME 
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO dbo.BMN_CATEGORY (
		 CATEGORY_ID
		,CATEGORY_NAME
		,CREATE_TS
		,UPDATE_TS
		)
	VALUES (
		 @CATEGORY_ID
		,@CATEGORY_NAME
		,@CREATE_TS
		,@UPDATE_TS
		)
END
GO
