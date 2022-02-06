-- ================================================
-- SP_UPDATE_ATTACHMENT
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<UPDATES an Attachment>
-- =============================================
CREATE PROCEDURE dbo.SP_UPDATE_ATTACHMENT 
	 @ATTACHMENT_ID INT 
	,@TXN_ID INT 
	,@IMG VARBINARY(MAX) 
	,@UPDATE_TS DATETIME 
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_ATTACHMENT SET 
	TXN_ID = @TXN_ID,
	IMG = @IMG,
	UPDATE_TS = @UPDATE_TS
	WHERE ATTACHMENT_ID = @ATTACHMENT_ID
	
END
GO
