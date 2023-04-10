show user;

ALTER SESSION SET CURRENT_SCHEMA = APEX_190200;

SELECT user_id,
       first_name,
       last_name,
       default_schema
FROM   wwv_flow_fnd_user
WHERE  user_name = 'ADMIN'
ORDER BY last_update_date DESC;

UPDATE wwv_flow_fnd_user
SET    web_password = 'ADMIN'
WHERE  user_name = 'ADMIN'
AND    user_id = 1405603052070472;

COMMIT;

create user SuBank identified by SuBank;

grant dba to SuBank;