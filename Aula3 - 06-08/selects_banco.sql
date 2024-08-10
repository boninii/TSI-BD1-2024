-- Nome funcionario, cargo, salario e cidade
/*
SELECT f.nome, c.descricao, c.salario, ci.nome as cidade
FROM  funcionario f, cargo c, cidade ci
WHERE f.idcargo = c.idcargo
	AND f.idcidade = ci.idcidade
*/

/*
SELECT * FROM produto limit 5;
*/

-- Listar todas as contas a pagar com o nome e cidade do fornecedor
SELECT f.nome, ci.nome as cidade, cp.valor, cp.situacao
FROM contapagar cp, fornecedor f, cidade ci
WHERE f.idcidade = ci.idcidade
	AND f.idfornecedor = cp.idfornecedor;

