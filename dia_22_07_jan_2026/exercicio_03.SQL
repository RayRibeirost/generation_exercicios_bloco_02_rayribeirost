CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(255) NOT NULL,
    curso VARCHAR(255) NOT NULL,
    nota DECIMAL(3,1),
    matricula_ativa BOOLEAN NOT NULL
);

ALTER TABLE tb_estudantes ADD inicio_curso DATE;
ALTER TABLE tb_estudantes ADD termino_curso DATE;

INSERT INTO tb_estudantes
(nome_aluno, curso, nota, inicio_curso, termino_curso, matricula_ativa)
VALUES
("Dustin Henderson", "C", 9.9, "1986-03-12", "1986-06-12", 1),
("Mike Wheeler", "Pascal", 8.7, "1985-02-10", "1985-05-10", 1),
("Lucas Sinclair", "C", 9.1, "1986-04-01", "1986-07-01", 1),
("Eleven", "Assembly", 9.8, "1986-01-15", "1986-04-15", 0),
("Will Byers", "Pascal", 8.9, "1985-08-20", "1985-11-20", 1),
("Max Mayfield", "C++", 9.3, "1987-03-05", "1987-06-05", 1),
("Steve Harrington", "C", 7.8, "1984-09-10", "1984-12-10", 0),
("Nancy Wheeler", "C++", 9.5, "1987-02-18", "1987-05-18", 1),
("Jonathan Byers", "Assembly", 8.4, "1985-06-01", "1985-09-01", 0),
("Robin Buckley", "Pascal", 9.0, "1986-07-12", "1986-10-12", 1),
("Erica Sinclair", "C", 9.6, "1987-01-08", "1987-04-08", 1);

SELECT * FROM tb_estudantes WHERE nota > 9.0;
SELECT * FROM tb_estudantes WHERE nota < 9.0;

UPDATE tb_estudantes SET nota = 10 WHERE id = 1; 

SELECT * FROM tb_estudantes;

