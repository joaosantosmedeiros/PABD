CREATE TABLE IF NOT EXISTS departamento(
	codigo INT PRIMARY KEY,
	descricao VARCHAR(255),
	cod_gerente INT
);

CREATE TABLE IF NOT EXISTS funcionario(
	codigo INT PRIMARY KEY,
	nome VARCHAR(255),
	sexo CHAR(1),
	dt_nasc DATE,
	salario FLOAT,
	cod_depto INT REFERENCES departamento(codigo)
);

ALTER TABLE departamento ADD FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo);

CREATE TABLE IF NOT EXISTS projeto(
	codigo INT PRIMARY KEY,
	nome VARCHAR(255),
	descricao VARCHAR(255),
	cod_depto INT REFERENCES departamento(codigo),
	cod_responsavel INT REFERENCES funcionario(codigo),
	data_inicio DATE,
	data_fim DATE
);

CREATE TABLE IF NOT EXISTS atividade(
	codigo INT PRIMARY KEY,
	nome VARCHAR(255),
	descricao VARCHAR(255),
	cod_responsavel INT REFERENCES funcionario(codigo),
	data_inicio DATE,
	data_fim DATE
);

CREATE TABLE IF NOT EXISTS atividade_projeto(
	cod_projeto INT REFERENCES projeto(codigo),
	cod_atividade INT REFERENCES atividade(codigo)
);
