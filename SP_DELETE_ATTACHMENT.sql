-- ================================================
-- SP_DELETE_ATTACHMENT
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<YEGCSharpDev>
-- Create date: <29-01-2022>
-- Description:	<Deletes an Attachment>
-- =============================================
CREATE PROCEDURE dbo.SP_DELETE_ATTACHMENT 
	 @ATTACHMENT_ID INT = NULL
	 ,@SOFT_DELETED NVARCHAR(1) = NULL
AS
BEGIN
	SET NOCOUNT ON

	UPDATE dbo.BMN_ATTACHMENT SET 
	SOFT_DELETED = @SOFT_DELETED
	WHERE ATTACHMENT_ID = @ATTACHMENT_ID
	
END
GO
