-- ================================================
-- SP_DELETE_ACCOUNT
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Delete an Account>
-- =============================================
CREATE PROCEDURE dbo.SP_DELETE_ACCOUNT 
	 @ACCOUNT_ID INT = NULL
	,@SOFT_DELETED NVARCHAR(1) = NULL
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_ACCOUNT 
	SET SOFT_DELETED = @SOFT_DELETED
	WHERE ACCOUNT_ID = @ACCOUNT_ID;
END
GO
