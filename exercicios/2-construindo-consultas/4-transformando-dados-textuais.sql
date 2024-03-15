-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
CustomerId AS Id,
FirstName AS Nome,
LastName AS Sobrenome,
Address AS Endereço
FROM
customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
CustomerId AS Id,
FirstName AS Nome,
UPPER (LastName) AS Sobrenome,
Address AS Endereço
FROM
customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
CustomerId AS Id,
LOWER (FirstName) AS Nome,
UPPER (LastName) AS Sobrenome,
Address AS Endereço
FROM
customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
CustomerId AS Id,
LOWER (FirstName) AS Nome,
UPPER (LastName) AS Sobrenome,
FirstName || ' ' || LastName
as Nome_Completo, 
Address AS Endereço
FROM
customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
CustomerId AS Id,
LOWER (FirstName) AS Nome,
UPPER (LastName) AS Sobrenome,
FirstName || ' ' || LastName
as Nome_Completo, 
REPLACE (Address, 'Av.', 'Avenida') 
AS Endereço
FROM
customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT DISTINCT
CustomerId AS Id,
LOWER (FirstName) AS Nome,
UPPER (LastName) AS Sobrenome,
FirstName || ' ' || LastName
as Nome_Completo, 
REPLACE (Address, 'Av.', 'Avenida') 
AS Endereço
FROM
customers
WHERE
Country LIKE 'Bra%';