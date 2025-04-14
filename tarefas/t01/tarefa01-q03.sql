--Faça uma consulta que selecione o nome e a data de nascimento dos funcionários com idade superior a 21 anos que não são gerentes.
SELECT nome, dt_nasc FROM funcionario WHERE DATE_PART('year', AGE(dt_nasc)) >= 21 AND codigo NOT IN (
	SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL
);
