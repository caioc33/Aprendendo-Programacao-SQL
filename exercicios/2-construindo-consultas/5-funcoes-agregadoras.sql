-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
BillingCountry as País,
SUM(Total) as Soma_das_Compras,
COUNT(Total) as Qnt_de_Compras_Realizadas,
MIN(Total) as Menor_Compra,
MAX(Total) as Maior_Valor,
ROUND (AVG(Total),2) as Ticket_Médio
FROM
invoices
WHERE
BillingCountry = 'Brazil';
