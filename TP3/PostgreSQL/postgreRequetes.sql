select *
from enfant
where enfant.prenom = 'Conrad';


SELECT CATEGORIE.NOM,CATEGORIE.TYPEACTIVITE
FROM ACTIVITE,CATEGORIE
WHERE ACTIVITE.ID_CATEGORIE=1
AND ACTIVITE.ID_CATEGORIE=CATEGORIE.ID_CATEGORIE;