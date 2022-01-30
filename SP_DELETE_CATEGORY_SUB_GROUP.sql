-- ================================================
-- SP_DELETE_CATEGORY_SUB_GROUP
-- ================================================
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Soft Delets a Category Sub Group>
-- =============================================
CREATE PROCEDURE dbo.SP_DELETE_CATEGORY_SUB_GROUP 
     @SUB_CATEGORY_ID INT = NULL
     ,@SOFT_DELETED NVARCHAR(1) = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_CATEGORY_SUB_GROUP
	SET SOFT_DELETED = @SOFT_DELETED
		,UPDATE_TS = @UPDATE_TS
	WHERE SUB_CATEGORY_ID = @SUB_CATEGORY_ID
END
GO