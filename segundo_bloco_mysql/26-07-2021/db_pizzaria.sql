CREATE DATABASE db_pizzaria DEFAULT CHARACTER SET utf8;
	USE db_pizzaria;
    
    -- TABELA PIZZA --
    CREATE TABLE tb_pizza(
    idPizza INT NOT NULL AUTO_INCREMENT
    , nome VARCHAR(255)
    , borda VARCHAR(255)
    , ingrediente VARCHAR(255)
	, preco DOUBLE
    -- chave estrangeira --
    , fk_categoria INT
    -- chave primary --
    , PRIMARY KEY (idPizza)
    -- link --
    , FOREIGN KEY (idPizza) REFERENCES tb_categoria (idCategoria)
    );
    
    -- TABELA CATEGORIA --
    CREATE TABLE tb_categoria(
    idCategoria INT NOT NULL AUTO_INCREMENT
    , tipo_categoria VARCHAR(100)
    , brinde VARCHAR(255)
    , PRIMARY KEY (idCategoria)
    );
    
    -- MOSTRAR A TABELA CATEGORIA --
    SELECT * FROM db_pizzaria.tb_categoria;
    -- MOSTRAR A TABELA PIZZA --
      SELECT * FROM db_pizzaria.tb_pizza;
      
    -- POPULANDO A TABELA CATEGORIA --
    INSERT INTO tb_categoria (tipo_categoria, brinde) 
    VALUES ('Salgada','Doly'), ('Doce','Coca'), ('Salgada','Tubaina')
    , ('Salgada','Coca'), ('Doce','Fanta');
    
    -- POPULANDO A TABELA PIZZA --
    INSERT INTO tb_pizza (nome, borda, ingrediente, preco, fk_categoria)
    VALUES ('AMERICANA','SEM BORDA','ATUM PLAMITO ERVILHA MUSSARELA','34.00',1)
    , ('PRESTÍGIO','CHOCOLATE','CHOCOLATE COCO RALADO LEITE CONDENSADO','37.00',2)
    , ('CAMARÃO','CATUPIRY','CAMARÃO TEMPERADO COBERTO COM MUSSARELA ','47.00',3)
    , ('BRASILEIRINHA','COM CATUPIRY','FRANGO MUSSARELA ERVILHA OVOS CATUPIRY','35.00',4)
    , ('M e M','SEM BORDA','CHOCOLATE COBERTO COM M&M','37.00',5);
    
    -- LIKANDO A TABELA PIZZA COM A TABELA CATEGORIA --
    SELECT tb_pizza.nome, tb_pizza.borda, tb_pizza.ingrediente, tb_pizza.preco, tb_categoria.tipo_categoria, tb_categoria.brinde
    FROM tb_pizza
    INNER JOIN tb_categoria ON tb_categoria.idCategoria = tb_pizza.idPizza;
    
    -- PRODUTOS COM VALOR MAIOR QUE 45 --
    SELECT * FROM tb_pizza WHERE preco > 45;
    
    -- PRODUTOS VOM VALORES DE 29 A 60 --
    SELECT * FROM tb_pizza WHERE preco > 29 < 60; 
    
    -- PRODUTOS COM A LETRA C --
    SELECT * FROM tb_pizza WHERE nome Like 'C%'; -- %: filtro
    
    
    
    
    