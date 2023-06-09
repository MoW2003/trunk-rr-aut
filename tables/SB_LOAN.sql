CREATE TABLE SB_LOAN (
    LOAN_ID         NUMBER              GENERATED BY DEFAULT ON NULL AS IDENTITY    NOT NULL,
    USER_ID         NUMBER                                                          NOT NULL,
    LOAN_TYPE       VARCHAR2(64)                                                    NOT NULL,
    AMOUNT          NUMBER                                                          NOT NULL,
    INTEREST        NUMBER                                                          NOT NULL,
    START_DATE      DATE                                                            NOT NULL,
    END_DATE        DATE                                                            NOT NULL,
    CREATED_DATE    DATE                DEFAULT SYSDATE                             NOT NULL,
    CREATED_BY      VARCHAR2(64)                                                    NOT NULL,
    MODIFIED_DATE   DATE                DEFAULT SYSDATE                                     ,
    MODIFIED_BY     VARCHAR2(64)                                                            ,
    PRIMARY KEY (LOAN_ID)
);

ALTER TABLE SB_LOAN
    ADD CONSTRAINT USER_LOAN_FK FOREIGN KEY (USER_ID) REFERENCES SB_USER(USER_ID)
;