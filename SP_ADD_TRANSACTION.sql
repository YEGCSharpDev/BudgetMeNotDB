-- ================================================
-- SP_ADD_TRANSACTION
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		YEGCSharpDev
-- Create date: 29-01-2022
-- Description:	Inserts a Transaction
-- =============================================
CREATE PROCEDURE dbo.SP_ADD_TRANSACTION 
	 @TXN_ID INT = NULL
	,@CATEGORY_ID INT = NULL
	,@SUB_CATEGORY_ID INT = NULL
	,@AMOUNT DECIMAL (10,2) = NULL
	,@DIRECTION NVARCHAR(3) = NULL
	,@COMMENTFIELD NVARCHAR(MAX) = NULL
    ,@ATTACHMENT_ID INT = NULL
	,@ACCOUNT_ID INT = NULL
	,@CREATE_TS DATETIME = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

INSERT INTO [dbo].[BMN_TRANSACTION]
           ([TXN_ID]
           ,[CATEGORY_ID]
           ,[SUB_CATEGORY_ID]
           ,[AMOUNT]
           ,[DIRECTION]
           ,[COMMENT]
           ,[ATTACHMENT_ID]
           ,[ACCOUNT_ID]
           ,[CREATE_TS]
           ,[UPDATE_TS])
     VALUES
           (@TXN_ID
           ,@CATEGORY_ID
           ,@SUB_CATEGORY_ID
           ,@AMOUNT
           ,@DIRECTION
           ,@COMMENTFIELD
           ,@ATTACHMENT_ID
           ,@ACCOUNT_ID
           ,@CREATE_TS
           ,@UPDATE_TS
		   )
END
GO
