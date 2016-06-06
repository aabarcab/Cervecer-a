DELIMITER $$
CREATE TRIGGER proyecto2.tg_Before_Update_Pais
BEFORE update ON proyecto2.pais
FOR EACH ROW
BEGIN
	DECLARE vUser varchar(50);
   -- Find username of person performing the INSERT into table
   SELECT USER() INTO vUser;
  SET NEW.last_modified = now();
  Set NEW.last_mod_by = vUser;
END;
$$
DELIMITER ;


