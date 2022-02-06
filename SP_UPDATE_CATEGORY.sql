-- ================================================
-- SP_UPDATE_CATEGORY
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Updates an Category>
-- =============================================
CREATE PROCEDURE dbo.SP_UPDATE_CATEGORY 
	 @CATEGORY_ID INT 
	,@CATEGORY_NAME NVARCHAR(1024) 
	,@UPDATE_TS DATETIME 
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_CATEGORY 
		 SET CATEGORY_NAME =@CATEGORY_NAME
		,UPDATE_TS = @UPDATE_TS
		WHERE CATEGORY_ID = @CATEGORY_ID
		
END
GO
