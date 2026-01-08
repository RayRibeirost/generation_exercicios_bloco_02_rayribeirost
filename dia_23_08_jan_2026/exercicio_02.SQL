CREATE DATABASE db_pizzaria_legal;
USE db_generation_game_online;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao varchar(255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(255) NOT NULL,
    tipo_massa VARCHAR(255),
    preco DECIMAL(6,2),
    em_estoque BOOLEAN DEFAULT 1,
    categoriaid BIGINT
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas clássicas e mais pedidas'),
('Especial', 'Pizzas com ingredientes diferenciados'),
('Doce', 'Pizzas com sabores doces'),
('Vegetariana', 'Pizzas sem carne');

INSERT INTO tb_pizzas 
(nome_pizza, tipo_massa, preco, em_estoque, categoriaid) VALUES
('Mussarela', 'Tradicional', 39.90, 1, 1),
('Calabresa', 'Tradicional', 42.90, 1, 1),
('Frango com Catupiry', 'Pan', 49.90, 1, 2),
('Quatro Queijos', 'Tradicional', 47.90, 1, 2),
('Chocolate', 'Tradicional', 44.90, 1, 3),
('Banana com Canela', 'Fina', 41.90, 1, 3),
('Marguerita', 'Tradicional', 45.90, 1, 4),
('Vegetariana Especial', 'Integral', 48.90, 0, 4);

SELECT * FROM tb_pizzas WHERE preco > 45.90;
SELECT * FROM tb_pizzas WHERE preco > 35 AND preco < 45;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%q%";

SELECT *, tb_categorias.nome_categoria FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id;
SELECT *, tb_categorias.nome_categoria FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_pizzas.categoriaid = 3;


