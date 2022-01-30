-- ================================================
-- SP_ADD_ACCOUNT
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Inserts an Account>
-- =============================================
CREATE PROCEDURE dbo.SP_ADD_ACCOUNT 
	 @ACCOUNT_ID INT = NULL
	,@ACCOUNT_TYPE_ID INT = NULL
	,@CREATE_TS DATETIME = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO dbo.BMN_ACCOUNT (
		ACCOUNT_ID
		,ACCOUNT_TYPE_ID
		,CREATE_TS
		,UPDATE_TS
		)
	VALUES (
		 @ACCOUNT_ID
		,@ACCOUNT_TYPE_ID
		,@CREATE_TS
		,@UPDATE_TS
		)
END
GO
