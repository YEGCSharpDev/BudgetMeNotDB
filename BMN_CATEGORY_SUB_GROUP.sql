CREATE TABLE BMN_CATEGORY_SUB_GROUP (
	SUB_CATEGORY_ID INT NOT NULL
	,CATEGORY_ID INT NOT NULL
	,SUB_CATEGORY_NAME NVARCHAR(1024)
	,CREATE_TS DATETIME
	,UPDATE_TS DATETIME
	,CONSTRAINT PK_SUB_CATEGORY PRIMARY KEY (SUB_CATEGORY_ID)
	)

	ALTER TABLE BMN_CATEGORY_SUB_GROUP ADD CONSTRAINT DEFAULT_CREATE_TS DEFAULT SYSDATETIME() for CREATE_TS;

	ALTER TABLE BMN_CATEGORY_SUB_GROUP ADD CONSTRAINT DEFAULT_UPDATE_TS DEFAULT SYSDATETIME() for UPDATE_TS;
