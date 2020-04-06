CREATE OR REPLACE TRIGGER question2
AFTER INSERT
   ON ORGANISATION
   FOR EACH ROW
declare
    pragma autonomous_transaction;
  cnt number;
  cat number;
 NBHEUREMAX number;
BEGIN
        SELECT ID_CATEGORIE INTO cat FROM ACTIVITE WHERE ACTIVITE.ID_ACTIVITE=:NEW.ID_ACTIVITE;
        SELECT VOLUMEHORAIREQUOTIDIEN INTO NBHEUREMAX FROM CATEGORIE WHERE ID_CATEGORIE=cat;
        SELECT COUNT(*) INTO cnt FROM ORGANISATION where ID_JOURNEE=:new.id_journee and ID_ACTIVITE in(SELECT ID_ACTIVITE FROM ACTIVITE WHERE ACTIVITE.ID_CATEGORIE=CAT);
    IF cnt+1>=NBHEUREMAX THEN DBMS_OUTPUT.PUT_LINE('LIMITE MAX ATTEINS');
END;

