INSERT INTO funcionario(codigo, nome, sexo, dt_nasc, salario) VALUES
	(0, 'João', 'M', '1999-01-08', 2500.00),
	(1, 'José', 'M', '2003-09-23', 3500.00),
	(2, 'Maria', 'F', '2006-08-14', 4500.00),
	(3, 'Natan', 'M', '2004-07-01', 1500.00),
	(4, 'Ana', 'F', '2007-04-01', 500.00),
	(5, 'Marcos', 'M', '2002-04-01', 7500.00),
	(6, 'Alexandre', 'M', '2000-04-01', 200.00);
	(7, 'Luiz', 'M', '2002-04-01', 5200.00);
	(8, 'Joseph Douglas', 'M', '2002-06-01', 5600.00);
	(9, 'Alan Delon', 'M', '2008-06-01', 6300.00);

INSERT INTO departamento(codigo, descricao, cod_gerente) VALUES 
	(0, 'Departamento Forense', 4),
	(1, 'Departamento de Recursos Humanos', 3),
	(2, 'Departamento de T.I', 2),
	(3, 'Departamento de Inovações', 1),
	(4, 'Departamento de Alimentação', 0);

UPDATE funcionario SET cod_depto = 4 WHERE codigo = 0;
UPDATE funcionario SET cod_depto = 3 WHERE codigo = 1;
UPDATE funcionario SET cod_depto = 2 WHERE codigo = 2;
UPDATE funcionario SET cod_depto = 1 WHERE codigo = 3;
UPDATE funcionario SET cod_depto = 0 WHERE codigo = 4;
UPDATE funcionario SET cod_depto = 2 WHERE codigo = 6;
UPDATE funcionario SET cod_depto = 2 WHERE codigo = 7;

INSERT INTO projeto(codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
	(0, 'Busca de elementos', 'Busca de elemntos forenses', 0, 4, '1999-01-02', '2005-12-04'),
	(1, 'Colação de grau', 'Reunião da equipe 02', 1, 3, '2005-07-08', '2006-04-01'),
	(2, 'Projeto de melhoria técnica', 'Melhora dos computadores do bloco D', 2, 2, '2004-04-05', '2004-04-06'),
	(3, 'Novo projetor', 'Criação de um novo projetor ultrassônico', 3, 1, '2007-08-08', '2008-09-09'),
	(4, 'Melhoria no cardápio', 'Melhoria do cardápio do restaurante universitário da ufrn', 4, 0, '2009-01-01', '2005-04-07');


INSERT INTO atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
	(0, 'Planejamento', 'Planejamento de buscas', 4, '1998-01-03', '2005-04-08'),
	(1, 'Listagem', 'Listagem de elementos', 3, '2003-04-02', '2003-04-06'),
	(2, 'Limpeza', 'Limpeza dos estabelecimentos', 2, '2003-09-07', '2003-09-12'),
	(3, 'Compra de novos equipamentos', 'Compra de novos equipamentos para a empresa', 1, '2003-07-08', '2012-09-08'),
	(4, 'Terceirização da alimentação', 'Busca de uma nova empresa para a alimentação', 0, '2012-04-03', '2015-04-03');


INSERT INTO atividade_projeto(cod_projeto, cod_atividade) VALUES
	(0, 0),
	(0, 1),
	(1, 0),
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 0),
	(2, 3),
	(3, 0),
	(3, 3),
	(4, 0),
	(4, 1),
	(4, 4);
