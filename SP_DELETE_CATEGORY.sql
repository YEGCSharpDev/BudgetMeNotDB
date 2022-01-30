-- ================================================
-- SP_DELETE_CATEGORY
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Soft Deletes a Category>
-- =============================================
CREATE PROCEDURE dbo.SP_DELETE_CATEGORY 
	 @CATEGORY_ID INT = NULL
	,@SOFT_DELETED NVARCHAR(1) = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_CATEGORY 
		 SET SOFT_DELETED = @SOFT_DELETED 
		,UPDATE_TS = @UPDATE_TS
		WHERE CATEGORY_ID = @CATEGORY_ID
		
END
GO