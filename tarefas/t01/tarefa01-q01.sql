-- Faça uma consulta que selecione o nome dos funcionários que recebem salários superiores aos salários pagos no departamento 2.
SELECT nome FROM funcionario where salario > (
	SELECT salario FROM funcionario WHERE cod_depto = 2 ORDER BY salario DESC LIMIT 1
);