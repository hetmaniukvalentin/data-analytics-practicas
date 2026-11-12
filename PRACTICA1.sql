SELECT TOP (1000) [ID_Estado]
      ,[Superficie]
      ,[Abreviacion]
      ,[ID_Pais]
  FROM [COMISION_94190].[dbo].[Superficie_Estado]
;

SELECT TOP (1000) [ID_Pais]
      ,[Pais]
  FROM [COMISION_94190].[dbo].[Pais_1]
;

SELECT TOP (1000) [ID_Pais]
      ,[Pais]
  FROM [COMISION_94190].[dbo].[Pais_2]
;

/*JOIN*/
SELECT * 
FROM DBO.SUPERFICIE_ESTADO AS SE JOIN DBO.PAIS_1 AS P 
ON SE.ID_Pais = P.ID_Pais
;

/*JOIN*/
SELECT P.Pais AS PAIS, SE.Abreviacion AS ABREVIACION, SE.Superficie AS SUPERFICIE_KM2
FROM DBO.SUPERFICIE_ESTADO AS SE JOIN DBO.PAIS_1 AS P 
ON SE.ID_Pais = P.ID_Pais
;

/*JOIN*/
SELECT * 
FROM DBO.SUPERFICIE_ESTADO AS SE JOIN DBO.Pais_2 AS P 
ON SE.ID_Pais = P.ID_Pais
;


/*LEFT JOIN*/
SELECT * 
FROM DBO.SUPERFICIE_ESTADO AS SE LEFT JOIN DBO.PAIS_1 AS P 
ON SE.ID_Pais = P.ID_Pais
;

/*RIGHT JOIN*/
SELECT * 
FROM DBO.SUPERFICIE_ESTADO AS SE RIGHT JOIN DBO.PAIS_1 AS P 
ON SE.ID_Pais = P.ID_Pais
;


--SELECT column_name(s) FROM table1
--UNION
--SELECT column_name(s) FROM table2;

SELECT ID_PAIS, PAIS FROM Pais_1
UNION 
SELECT ID_PAIS, PAIS FROM Pais_2;
