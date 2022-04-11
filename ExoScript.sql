SELECT * FROM `Heros` ORDER BY Nom ASC


SELECT * FROM `Heros` WHERE PV = `40`
SELECT * FROM `Heros` ORDER BY PV LIKE `40`

SELECT COUNT(PV) FROM Heros WHERE PV = 40


SELECT Nom, PV FROM Heros ORDER BY PV


SELECT Nom, PV FROM Heros ORDER BY PV DESC LIMIT 1


SELECT SUM(PV) FROM Heros

 
SELECT Heros.Nom, CompetenceHeros.Nom FROM Heros JOIN CompetenceHeros ON CompetenceHeros.CompetenceID = Heros.ID

 
SELECT Competence.`Type`, Competence.Effet, CompetenceHeros.Nom FROM Competence JOIN CompetenceHeros ON CompetenceHeros.CompetenceID = Competence.ID


SELECT CompetenceHeros.Nom, Heros.Nom FROM CompetenceHeros JOIN Heros ON CompetenceHeros.HerosID = Heros.ID WHERE CompetenceHeros.Nom IN (
   SELECT CompetenceHeros.Nom FROM CompetenceHeros
   GROUP BY CompetenceHeros.Nom
   HAVING COUNT(CompetenceHeros.Nom)>1
)


SELECT DISTINCT CompetenceHeros.Nom FROM CompetenceHeros JOIN Heros ON CompetenceHeros.HerosID = Heros.ID WHERE CompetenceHeros.Nom IN (
   SELECT CompetenceHeros.Nom FROM CompetenceHeros
   GROUP BY CompetenceHeros.Nom
   HAVING COUNT(CompetenceHeros.Nom)>1
)


SELECT Nom FROM Heros WHERE ArmeEnMain = 1 

 
SELECT Heros.Nom, CompetenceHeros.Nom FROM Heros JOIN CompetenceHeros ON CompetenceHeros.HerosID = Heros.ArmeEnMain