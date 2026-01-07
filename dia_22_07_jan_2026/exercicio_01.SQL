CREATE DATABASE db_recursoshumanos;
USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_colaborador VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    data_admissao DATE,
    salario DECIMAL(8,2)
);

INSERT INTO tb_colaboradores(nome_colaborador, cargo, data_admissao, salario) VALUES ("Dustin Henderson", "Cientista", "1998-03-13", 2200.00);
INSERT INTO tb_colaboradores(nome_colaborador, cargo, data_admissao, salario) VALUES ("Lucas Sinclair", "Game Designer", "2000-03-13", 2500.00);
INSERT INTO tb_colaboradores(nome_colaborador, cargo, data_admissao, salario) VALUES ("Mike Wheeler", "Escritor", "1996-03-13", 1900.00);
INSERT INTO tb_colaboradores(nome_colaborador, cargo, data_admissao, salario) VALUES ("Max Mayfield", "Testador de Produtos", "1998-05-02", 2900.00);
INSERT INTO tb_colaboradores(nome_colaborador, cargo, data_admissao, salario) VALUES ("Will Byers", "Conselheiro", "1998-10-12", 1800.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3500.00 WHERE id = 5;

SELECT * FROM tb_colaboradores;
