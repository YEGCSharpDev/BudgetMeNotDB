-- ================================================
-- SP_DELETE_ACCOUNT_TYPE
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Soft Deletes an Account Type>
-- =============================================
CREATE PROCEDURE dbo.SP_DELETE_ACCOUNT_TYPE
	 @ACCOUNT_TYPE_ID INT = NULL
	,@SOFT_DELETED NVARCHAR(1) = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[BMN_ACCOUNT_TYPE] 
	SET
		SOFT_DELETED = @SOFT_DELETED
		,UPDATE_TS = @UPDATE_TS
		WHERE 
		 ACCOUNT_TYPE_ID = @ACCOUNT_TYPE_ID;
		
END
GO
