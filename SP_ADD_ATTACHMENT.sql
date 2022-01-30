-- ================================================
-- SP_ADD_ATTACHMENT
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Inserts an Attachment>
-- =============================================
CREATE PROCEDURE dbo.SP_ADD_ATTACHMENT 
	 @ATTACHMENT_ID INT = NULL
	,@TXN_ID INT = NULL
	,@IMG VARBINARY(MAX) = NULL
	,@CREATE_TS DATETIME = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO dbo.BMN_ATTACHMENT (
		ATTACHMENT_ID
		,TXN_ID
		,IMG
		,CREATE_TS
		,UPDATE_TS
		)
	VALUES (
		 @ATTACHMENT_ID
		,@TXN_ID
		,@IMG
		,@CREATE_TS
		,@UPDATE_TS
		)
END
GO
