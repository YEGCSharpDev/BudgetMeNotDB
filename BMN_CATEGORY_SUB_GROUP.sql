CREATE TABLE BMN_CATEGORY_SUB_GROUP (
	SUB_CATEGORY_ID INT NOT NULL
	,CATEGORY_ID INT NOT NULL
	,SUB_CATEGORY_NAME NVARCHAR(1024)
	,SOFT_DELETED NVARCHAR (1) NULL
	,CREATE_TS DATETIME
	,UPDATE_TS DATETIME
	,CONSTRAINT PK_SUB_CATEGORY PRIMARY KEY (SUB_CATEGORY_ID)
	)

	ALTER TABLE BMN_CATEGORY_SUB_GROUP ADD CONSTRAINT CATEGORY_SUB_GROUP_CREATE_TS DEFAULT SYSDATETIME() for CREATE_TS;

	ALTER TABLE BMN_CATEGORY_SUB_GROUP ADD CONSTRAINT CATEGORY_SUB_GROUP_UPDATE_TS DEFAULT SYSDATETIME() for UPDATE_TS;

	ALTER TABLE BMN_CATEGORY_SUB_GROUP ADD CONSTRAINT CATEGORY_SUB_GROUP_SOFT_DELETE DEFAULT 'N' for SOFT_DELETED;

