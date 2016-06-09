CREATE TRIGGER `tg_Before_Insert_Cerveza` BEFORE INSERT ON `cerveza`
 FOR EACH ROW BEGIN
	DECLARE vUser varchar(50);
   -- Find username of person performing the INSERT into table
   SELECT USER() INTO vUser;
  SET NEW.create_By = vUser;
  Set NEW.creation_date = now();
END