CREATE TABLE SB_PRIVILEGE (
    PRIVILEGE_ID            NUMBER      GENERATED BY DEFAULT ON NULL AS IDENTITY    NOT NULL,
    NAME                    VARCHAR2(64)                                            NOT NULL,
    APEX_PAGE               NUMBER                                                          ,
    APEX_COMPONENT_NAME     VARCHAR2(128)                                                   ,
    READ                    VARCHAR2(1)     DEFAULT 'N'                             NOT NULL,
    WRITE                   VARCHAR2(1)     DEFAULT 'N'                             NOT NULL,
    CREATED_DATE            DATE            DEFAULT SYSDATE                         NOT NULL,
    CREATED_BY              VARCHAR2(64)                                            NOT NULL,
    MODIFIED_DATE           DATE            DEFAULT SYSDATE                                 ,
    MODIFIED_BY             VARCHAR2(64)                                                    ,
    PRIMARY KEY (PRIVILEGE_ID)
);

ALTER TABLE SB_PRIVILEGE 
    ADD CONSTRAINT SB_PRIVILEGE_UK UNIQUE (NAME)
;