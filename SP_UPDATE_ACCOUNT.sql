-- ================================================
-- SP_UPDATE_ACCOUNT
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Updates an Account>
-- =============================================
CREATE PROCEDURE dbo.SP_UPDATE_ACCOUNT 
	 @ACCOUNT_ID INT = NULL
	,@ACCOUNT_TYPE_ID INT = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_ACCOUNT 
	SET ACCOUNT_TYPE_ID = @ACCOUNT_TYPE_ID,
	UPDATE_TS = @UPDATE_TS
	WHERE ACCOUNT_ID = @ACCOUNT_ID;
END
GO
