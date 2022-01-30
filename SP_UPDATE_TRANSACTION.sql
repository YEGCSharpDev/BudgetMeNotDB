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
	 @TXN_ID INT = NULL
	,@CATEGORY_ID INT = NULL
	,@SUB_CATEGORY_ID INT = NULL
	,@AMOUNT DECIMAL (10,2) = NULL
	,@DIRECTION NVARCHAR(3) = NULL
	,@COMMENTFIELD NVARCHAR(MAX) = NULL
    ,@ATTACHMENT_ID INT = NULL
	,@ACCOUNT_ID INT = NULL
	,@UPDATE_TS DATETIME = NULL
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
