FUNCTION authenticate_user(
    p_username IN VARCHAR2, 
    p_password IN VARCHAR2
) 
RETURN BOOLEAN AS
    v_active SB_USER.ACTIVE%TYPE;
BEGIN
    SELECT ACTIVE
    INTO v_active
    FROM SB_USER
    WHERE LOWER(USER_NAME) = LOWER(p_username)
    AND LOWER(PASSWORD) = LOWER(p_password);

    IF v_active = 'Y' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
END authenticate_user;