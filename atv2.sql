CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(100),
    tipo VARCHAR(100)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(100),
    poder int,
    vida int,
    defesa int,
    ataque int,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe,tipo)
VALUE ("Ataque","Fada");

INSERT INTO tb_classes (classe,tipo)
VALUE ("Ataque","Elfo");

INSERT INTO tb_classes (classe,tipo)
VALUE ("Defesa","Humano");

INSERT INTO tb_classes (classe,tipo)
VALUE ("Defesa","Dragao");

INSERT INTO tb_classes (classe,tipo)
VALUE ("Suporte","Gigante");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("MaRaCuTaYa", 2010, 4341, 3932, 1538, 2);

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("ShaolinMatadorDePorco", 1279, 4852, 3578, 3327, 1);

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("ZeDroguinha4i20", 3673, 1811, 1029, 2737, 5);

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("LagartixAlejada", 3897, 4700, 1777, 1721, 3);

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("Vinheteiro", 1133, 1613, 4858, 4559, 2);

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("CafeComLeite", 4887, 4640, 4287, 3426, 4);

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("AbacaxiMatador", 2659, 3029, 2968, 4128, 1);

INSERT INTO tb_personagens (nickname,poder,vida,defesa,ataque,classe_id)
VALUE("bAdErNeIr0", 2225, 1185, 2541, 3791, 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 && defesa < 2000;

SELECT * FROM tb_personagens WHERE nickname LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id=tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id=tb_classes.id
WHERE tb_classes.id=1;

-- SELECT * FROM tb_personagens INNER JOIN tb_classes
-- ON tb_personagens.classe_id = tb_classes.id
-- WHERE tb_classes.tipo LIKE "%O%";

CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(30),
    tamanho VARCHAR(30)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(30),
    crocancia VARCHAR(30),
    queijo VARCHAR(30),
    validade DATE NULL,
    cobertura VARCHAR(30),
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

ALTER TABLE tb_pizzas ADD valor decimal NOT NULL;

ALTER TABLE tb_pizzas MODIFY valor decimal (6,2);

INSERT INTO tb_categorias(tipo,tamanho)
VALUE("Salgada","Pequena");

INSERT INTO tb_categorias(tipo,tamanho)
VALUE("Salgada","Grande");

INSERT INTO tb_categorias(tipo,tamanho)
VALUE("Doce","Pequena");

INSERT INTO tb_categorias(tipo,tamanho)
VALUE("Doce","Grande");

INSERT INTO tb_categorias(tipo,tamanho)
VALUE("Doce","Média");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Mussarela","alta","Roquefort","2023-04-18","calabresa",4);

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Calabresa","media","Brie","2023-04-21","frango",1);

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Margherita","baixa","Camembert","2023-04-24","pepperoni",3);

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Quatro Queijos","media","Gouda","2023-04-20","presunto",2);

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Frango com Catupiry","alta","Gorgonzola","2023-04-15","cogumelos",5);

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Pepperoni","media","Feta","2023-04-22","alcachofra",4);

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Portuguesa","baixa","Cheddar","2023-04-16","milho",1);

INSERT INTO tb_pizzas(sabor,crocancia,queijo,validade,cobertura,categoria_id)
VALUES("Napolitana","alta","Parmesão","2023-04-25","cebola",3);

UPDATE tb_pizzas SET valor = 35.47 WHERE id = 1;
UPDATE tb_pizzas SET valor = 53.62 WHERE id = 2;
UPDATE tb_pizzas SET valor = 78.33 WHERE id = 3;
UPDATE tb_pizzas SET valor = 40.51 WHERE id = 4;
UPDATE tb_pizzas SET valor = 71.19 WHERE id = 5;
UPDATE tb_pizzas SET valor = 65.87 WHERE id = 6;
UPDATE tb_pizzas SET valor = 50.04 WHERE id = 7;
UPDATE tb_pizzas SET valor = 105.15 WHERE id = 8;
UPDATE tb_pizzas SET valor = 47.91 WHERE id = 9;

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor > 50.00 && valor < 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id=tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id=tb_categorias.id
WHERE tb_categorias.id=4;























