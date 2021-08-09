CREATE DATABASE db_cidade_das_frutas DEFAULT CHARACTER SET utf8;
	USE db_cidade_das_frutas;
    
    CREATE TABLE tb_produto(
    idProduto INT NOT NULL AUTO_INCREMENT
	, nome VARCHAR(255)
    , preco VARCHAR(255)
    , quantidade INT
    , quantidade_em_pacotes INT
    , peso_pacote DOUBLE
    -- chave estrangeira --
    , fk_categoria INT
    -- chave primary --
    , PRIMARY KEY(idProduto)
    -- referença chave estrangeira --
    , FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (idCategoria)
    );
    
	CREATE TABLE tb_categoria(
    idCategoria INT NOT NULL AUTO_INCREMENT
    , tipo_categoria VARCHAR(255)
    , pratileira VARCHAR(255)
    , PRIMARY KEY(idCategoria)
    );
    
    -- MOSTRAR A TABELA CATEGORIA --
    SELECT * FROM db_cidade_das_frutas.tb_categoria;
    -- MOSTRAR A TABELA PRODUTO --
      SELECT * FROM db_cidade_das_frutas.tb_produto;
      
    -- POPULANDO A TABELA CATEGORIA --
    INSERT INTO tb_categoria (tipo_categoria, pratileira) 
    VALUES ('Fruta','Pratileira 12')
    , ('Fruta','Pratileira 01')
    , ('Fruta','Pratileira 08')
    , ('Vegetal','Pratileira 09')
    , ('Fruta','Pratileira 05');
    
    -- POPULANDO A TABELA PRODUTO --
    INSERT INTO tb_produto (nome, preco, quantidade, quantidade_em_pacotes, peso_pacote)
    VALUES ('Maça','3.12','20','10','1.000')
    , ('Banana','4.15','18','5','1.000')
    , ('Abacate','5.0','10','3','1.800')
    , ('Tomate','4.12','20','8','1.000')
    , ('Alface','2.12','10','10','0.350')
    , ('Abacaxi','4.00','10','0','0.0');
    
    -- LIKANDO A TABELA PRODUTO COM A TABELA CATEGORIA --
    SELECT tb_produto.nome, tb_produto.preco, tb_produto.quantidade, tb_categoria.tipo_categoria, tb_categoria.pratileira
    FROM tb_produto
    INNER JOIN tb_categoria ON tb_categoria.idCategoria = tb_produto.idProduto;
    
    
    -- PRODUTOS COM VALORES MAIOR QUE 50 --
    SELECT * FROM tb_produto WHERE preco > 50;
    
    -- PRODUTOS COM VALORES DE 3 A 60 --
    SELECT * FROM tb_produto WHERE preco >3 < 60;
    
    -- FLUTAS COM A INICIAL C --
    SELECT * FROM tb_produto WHERE nome LIKE 'C%';