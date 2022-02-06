-- ================================================
-- SP_UPDATE_ACCOUNT_TYPE
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Updates an Account Type>
-- =============================================
CREATE PROCEDURE dbo.SP_UPDATE_ACCOUNT_TYPE
	 @ACCOUNT_TYPE_ID INT 
	,@ACCOUNT_TYPE_TXT NVARCHAR(1024) 
	,@CREATE_TS DATETIME 
	,@UPDATE_TS DATETIME 
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [dbo].[BMN_ACCOUNT_TYPE] 
	SET
		ACCOUNT_TYPE_TEXT = @ACCOUNT_TYPE_TXT
		,UPDATE_TS = @UPDATE_TS
		WHERE 
		 ACCOUNT_TYPE_ID = @ACCOUNT_TYPE_ID;
		
END
GO
