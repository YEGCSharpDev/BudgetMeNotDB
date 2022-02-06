-- ================================================
-- SP_ADD_ACCOUNT_TYPE
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Inserts an Account Type>
-- =============================================
CREATE PROCEDURE dbo.SP_ADD_ACCOUNT_TYPE
	 @ACCOUNT_TYPE_ID INT 
	,@ACCOUNT_TYPE_TXT NVARCHAR(1024) 
	,@CREATE_TS DATETIME 
	,@UPDATE_TS DATETIME 
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[BMN_ACCOUNT_TYPE] (
		ACCOUNT_TYPE_ID
		,ACCOUNT_TYPE_TEXT
		,CREATE_TS
		,UPDATE_TS
		)
	VALUES (
		 @ACCOUNT_TYPE_ID
		,@ACCOUNT_TYPE_TXT
		,@CREATE_TS
		,@UPDATE_TS
		)
END
GO
