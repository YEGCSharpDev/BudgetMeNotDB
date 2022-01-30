-- ================================================
-- SP_DELETE_TRANSACTION
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		YEGCSharpDev
-- Create date: 29-01-2022
-- Description:	Deletes a Transaction
-- =============================================
CREATE PROCEDURE dbo.SP_DELETE_TRANSACTION 
	 @TXN_ID INT = NULL
	,@SOFT_DELETED NVARCHAR (1) = NULL
	,@UPDATE_TS DATETIME = NULL
AS
BEGIN
	SET NOCOUNT ON

UPDATE [dbo].[BMN_TRANSACTION]
SET SOFT_DELETED = @SOFT_DELETED
	WHERE TXN_ID = @TXN_ID;
     END
GO
