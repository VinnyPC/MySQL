-- comando para criação de banco de dados
CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    idade INT(2),
    salario DECIMAL(6,2),
    cargo VARCHAR(255),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, idade, salario, cargo)
VALUES("Aline",22,600.99,"Desenvolvedor");



SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- BONUS
ALTER TABLE tb_colaboradores
MODIFY COLUMN salario DECIMAL(10,2);

UPDATE tb_colaboradores
SET salario = 5001.99
WHERE id=2
------------------------------------------
CREATE DATABASE e_commerce;

CREATE TABLE produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    lote INT(20),
    valor DECIMAL(6,2),
    validade INT,
    
    PRIMARY KEY (id)
    
);

INSERT INTO produtos(nome,lote,valor,validade)
VALUES("notebook",15456746,1900.00,0000);

SELECT * FROM produtos;

SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos
SET valor = 1200.99
WHERE id=1
-------------------------------------------------------
CREATE DATABASE db_escola;

CREATE TABLE alunos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50),
    idade INT(2),
    turma VARCHAR(10),
    ano INT(2),
    media DECIMAL(3,1),
    
    PRIMARY KEY(id)
);


INSERT INTO alunos(nome, idade, turma, ano,media)
VALUES("Ana",8,27,2,6.5);

SELECT * FROM alunos;

SELECT * FROM alunos WHERE media > 7.0;

SELECT * FROM alunos WHERE media < 7.0;

UPDATE alunos
SET nome = "Maria"
WHERE id=1



