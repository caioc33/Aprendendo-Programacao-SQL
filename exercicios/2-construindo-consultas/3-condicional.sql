-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country AS País,
State AS Estado_Sigla,
CASE
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  ELSE 'Outros'
END AS estado
FROM
customers
WHERE
Country LIKE 'Brazil';