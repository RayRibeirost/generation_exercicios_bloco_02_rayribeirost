CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    descricao varchar(255)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(255) NOT NULL,
    poder_defesa INT DEFAULT 0,
    pode_ataque INT DEFAULT 0,
    moedas INT DEFAULT 0,
    guilda VARCHAR(255),
    classeid BIGINT
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes FOREIGN KEY (classeid) REFERENCES tb_classes(id);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, alta defesa e força'),
('Mago', 'Usuário de magia elemental com alto poder ofensivo'),
('Arqueiro', 'Atacante à distância, ágil e preciso');

INSERT INTO tb_personagens 
(nome_personagem, poder_defesa, pode_ataque, moedas, guilda, classeid) VALUES
('Thorin', 180, 140, 1500, 'Martelo de Aço', 1),
('Brutus', 160, 130, 800, 'Martelo de Aço', 1),
('Ares', 170, 150, 1200, 'Lâmina Rubra', 1),
('Merlina', 90, 220, 2000, 'Ordem Arcana', 2),
('Zyron', 85, 210, 1750, 'Ordem Arcana', 2),
('Lunara', 100, 200, 950, 'Círculo Místico', 2),
('Elyon', 120, 170, 1100, 'Flecha Verde', 3),
('Kael', 110, 165, 600, 'Flecha Verde', 3);

SELECT * FROM tb_personagens WHERE pode_ataque > 200;
SELECT * FROM tb_personagens WHERE pode_ataque > 150 AND pode_ataque < 200;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%y%";

SELECT *, tb_classes.nome_classe FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id;
SELECT *, tb_classes.nome_classe FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id WHERE tb_personagens.classeid = 2;


