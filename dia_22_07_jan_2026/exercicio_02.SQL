CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    categoria VARCHAR(255),
    preco DECIMAL(8,2),
    em_estoque BOOLEAN NOT NULL
);

INSERT INTO tb_produtos(nome_produto, categoria, preco, em_estoque) 
VALUES("Jogo de talheres", "enxoval", 340.00, 1), 
	("Conjunto de panelas", "cozinha", 899.90, 1),
	("Jogo de cama casal", "enxoval", 259.99, 1),
	("Liquidificador", "eletrodomésticos", 199.50, 0),
	("Aspirador de pó", "eletrodomésticos", 649.00, 1),
	("Toalha de banho", "enxoval", 79.90, 1),
	("Faqueiro inox 24 peças", "cozinha", 299.00, 0),
	("Cafeteira elétrica", "eletrodomésticos", 349.90, 1);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 120.00 WHERE id = 6;

SELECT * FROM tb_produtos;