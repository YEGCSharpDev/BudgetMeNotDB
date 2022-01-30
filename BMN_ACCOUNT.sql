CREATE TABLE BMN_ACCOUNT (
	 ACCOUNT_ID INT NOT NULL
	,ACCOUNT_TYPE_ID INT NOT NULL
	,SOFT_DELETED NVARCHAR (1) NULL
	,CREATE_TS DATETIME
	,UPDATE_TS DATETIME
	,CONSTRAINT PK_ACCOUNT PRIMARY KEY (ACCOUNT_ID)
	);

	ALTER TABLE BMN_ACCOUNT ADD CONSTRAINT ACCOUNT_CREATE_TS DEFAULT SYSDATETIME() for CREATE_TS ;

	ALTER TABLE BMN_ACCOUNT ADD CONSTRAINT ACCOUNT_UPDATE_TS DEFAULT SYSDATETIME() for UPDATE_TS ;

	ALTER TABLE BMN_ACCOUNT ADD CONSTRAINT ACCOUNT_SOFT_DELETE DEFAULT 'N' for SOFT_DELETED;

