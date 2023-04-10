
CREATE OR REPLACE TRIGGER SB_TRANSACTION_TRG
BEFORE INSERT OR UPDATE ON SB_TRANSACTION
FOR EACH ROW
DECLARE
BEGIN
    IF INSERTING THEN
        :NEW.CREATED_DATE := SYSDATE;
        :NEW.CREATED_BY := nvl( v('APP_USER'), user);
    END IF;
    IF UPDATING THEN
        :NEW.MODIFIED_DATE := SYSDATE;
        :NEW.MODIFIED_BY := nvl( v('APP_USER'), user);
    END IF;
END;
/