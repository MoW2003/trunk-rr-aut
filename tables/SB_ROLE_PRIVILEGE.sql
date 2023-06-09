CREATE TABLE SB_ROLE_PRIVILEGE (
    ROLE_PRIVILEGE_ID   NUMBER          GENERATED BY DEFAULT ON NULL AS IDENTITY    NOT NULL,
    ROLE_ID             NUMBER                                                      NOT NULL,
    PRIVILEGE_ID        NUMBER                                                      NOT NULL,
    CREATED_DATE        DATE                DEFAULT SYSDATE                         NOT NULL,
    CREATED_BY          VARCHAR2(64)                                                NOT NULL,
    MODIFIED_DATE       DATE                DEFAULT SYSDATE                                 ,
    MODIFIED_BY         VARCHAR2(64)                                                        ,
    PRIMARY KEY (ROLE_PRIVILEGE_ID)
);

ALTER TABLE SB_ROLE_PRIVILEGE ADD (
    CONSTRAINT ROLE_ID_FK2 FOREIGN KEY (ROLE_ID) REFERENCES SB_ROLE(ROLE_ID),
    CONSTRAINT PRIVILEGE_ID_FK FOREIGN KEY (PRIVILEGE_ID) REFERENCES SB_PRIVILEGE(PRIVILEGE_ID),
    CONSTRAINT SB_ROLE_PRIVILEGE_UK UNIQUE (ROLE_ID, PRIVILEGE_ID)
);