--select
SELECT nome_pais FROM pais;

--where
SELECT numero FROM endereco_cliente WHERE numero > 30;

--group by
SELECT COUNT(cep), logradouro
FROM endereco_cliente
GROUP BY logradouro;

--order by
SELECT nome_pais FROM pais
ORDER BY nome_pais DESC;

--inner join
SELECT c.id_cidade 
FROM cidade c
INNER JOIN bairro b
ON c.id_cidade = b.id_cidade;

--natural join
SELECT * 
FROM pais 
NATURAL JOIN estado;

--left join
SELECT c.id_cidade 
FROM cidade c
INNER JOIN bairro b
ON c.id_cidade = b.id_cidade;