--Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, 
--o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.
SELECT p.nome, d.descricao, f.nome, dd.descricao
	FROM projeto p 
	JOIN departamento d ON p.cod_depto = d.codigo
	JOIN funcionario f ON f.codigo = p.cod_responsavel
	JOIN departamento dd ON f.cod_depto = dd.codigo;