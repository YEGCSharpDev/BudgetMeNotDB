-- ================================================
-- SP_UPDATE_TRANSACTION
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		YEGCSharpDev
-- Create date: 29-01-2022
-- Description:	Updates a Transaction
-- =============================================
CREATE PROCEDURE dbo.SP_UPDATE_TRANSACTION 
	 @TXN_ID INT 
	,@CATEGORY_ID INT 
	,@SUB_CATEGORY_ID INT 
	,@AMOUNT DECIMAL (10,2) 
	,@DIRECTION NVARCHAR(3) 
	,@COMMENTFIELD NVARCHAR(MAX) 
    ,@ATTACHMENT_ID INT 
	,@ACCOUNT_ID INT 
	,@UPDATE_TS DATETIME 
AS
BEGIN
	SET NOCOUNT ON

UPDATE [dbo].[BMN_TRANSACTION]
SET [CATEGORY_ID] = @CATEGORY_ID
	,[SUB_CATEGORY_ID] = @SUB_CATEGORY_ID
    ,[AMOUNT] = @AMOUNT
    ,[DIRECTION] = @DIRECTION
    ,[COMMENT] = @COMMENTFIELD
    ,[ATTACHMENT_ID] = @ATTACHMENT_ID
    ,[ACCOUNT_ID] = @ACCOUNT_ID
    ,[UPDATE_TS] = @UPDATE_TS
	WHERE TXN_ID = @TXN_ID;
     END
GO
