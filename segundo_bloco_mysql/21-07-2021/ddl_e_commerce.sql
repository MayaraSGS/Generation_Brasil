CREATE DATABASE e_commerce DEFAULT CHARACTER SET utf8;
	USE e_commerce;
    
    CREATE TABLE tb_produtos(
    idProduto INT NOT NULL AUTO_INCREMENT
    , nome VARCHAR(30) NOT NULL
    , preco DOUBLE NOT NULL
    , quantidade INT NOT NULL
    , categoria VARCHAR(50) NOT NULL
    , material VARCHAR(50) NOT NULL
    , publicoAlvo VARCHAR(30) NOT NULL
    , gastronomico VARCHAR(20) NOT NULL
    , objeto VARCHAR(20) NOT NULL
    ,PRIMARY KEY (idProduto)
    )ENGINE = InnoDB;
    
     SELECT * FROM e_commerce.tb_produto;
    
    -- enserindo dados na tabela --
    INSERT INTO e_commerce.tb_produto (nome, preco, quantidade, categoria, material, publicoAlo, gastronomico, objeto)
    VALUE ('mesa','1100.59','10','madeira','Adultos','não','sim');
    
    
    SELECT * FROM e_commerce.tb_produto WHERE preco > 500;
    SELECT * FROM e_commerce.tb_produto WHERE preco < 500;