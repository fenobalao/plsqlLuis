DECLARE 
  RET NUMBER;
BEGIN
  RET := FUCN_TIPOPROD_2(1, 'ADBC', 'N');
DBMS_OUTPUT.PUT_LINE('RET:' || RET);
END;