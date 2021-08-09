-- DDL - linguegem de definição de dados
-- CREATE, DROP, ALTER - criar e fazer manutenção do banco de dados
 -- DML - linguagem de manipulação de dados
-- UPADATE (ATUALIZAR), INSERT (CRIAR), DELETE, SELECT (LER)

#SCHEMA é a mesma coisa que database
CREATE DATABASE db_game_turma28;
USE db_game_turma28;

CREATE TABLE tb_classe(
	id_classe INT AUTO_INCREMENT,
    nome_classe VARCHAR(255),
    tipo_habilidade VARCHAR(255),
    PRIMARY KEY(id_classe)
);

CREATE TABLE tb_personagem(
	id_personagem INT AUTO_INCREMENT,
	nome VARCHAR(255),
    cor_cabelo VARCHAR(255),
    fk_classe INT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

CREATE TABLE tb_dano(
	id_dano INT AUTO_INCREMENT,
    dano_fisico INT,
    dano_magico INT,
    defesa INT,
    fk_classe INT,
    PRIMARY KEY (id_dano),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe (nome_classe, tipo_habilidade)
VALUES
('Mago','Livro'),
('Assassino','Facas'),
('Tank','Escudo'),
('Arqueiro','Arco');

INSERT INTO tb_dano (dano_fisico, dano_magico, defesa, fk_classe)
VALUES
(100,500,1000,1),
(300,100,1000,2),
(100,100,5000,3),
(250,100,1000,4);

INSERT INTO tb_personagem (nome, cor_cabelo)
VALUES
('Baby','Verde'),
('Leh','Rosa'),
('Mat','Amarelo');

INSERT INTO tb_personagem (nome, cor_cabelo, fk_classe)
VALUES
('Marc','Marrom', 1),
('Tai','Laranja', 2),
('Jana','Preto', 1);

SELECT tb_personagem.nome, tb_classe.nome_classe, tb_dano.dano_fisico, tb_dano.dano_magico, tb_dano.defesa
FROM tb_personagem #Á ESQUERDA DE TB_CLASSE
INNER JOIN tb_classe #Á DIREITA DE TB PERSONAGEM e Á ESQUERDA DE TB_DANO
ON tb_classe.id_classe = tb_personagem.fk_classe
INNER JOIN tb_dano #Á DIREITA DE TB_CLASSE
ON tb_dano.fk_classe = tb_classe.id_classe;

SELECT tb_personagem.nome, tb_classe.nome_classe
FROM tb_personagem
LEFT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;

SELECT * FROM tb_personagem
LEFT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe
UNION
SELECT * FROM tb_personagem
RIGHT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;

-- como da um drop
-- DROP DATABASE > o database é o banco todo
-- DROP ALGO > algo é uma tabela, ou um banco, eu que escolho


    