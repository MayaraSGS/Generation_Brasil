CREATE DATABASE db_farmacia_do_bem DEFAULT CHARACTER SET utf8;
	USE db_farmacia_do_bem;
    
    CREATE TABLE  tb_produto(
    idProduto INT NOT NULL AUTO_INCREMENT
    , nome VARCHAR(255)
    , preco FLOAT
    , validade DATE
    , unidade INT
    , prescrito VARCHAR(255)
    -- chave estrangeira
    , fk_categoria INT
    -- chave primary
    , PRIMARY KEY(idProduto)
    -- link das tabelas
    , FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(idCategoria)
    );
    
    CREATE TABLE tb_categoria(
    idCategoria INT NOT NULL AUTO_INCREMENT
    , tipo_categoria VARCHAR(255)
    , cod_remedio INT
    , faixaEtaria VARCHAR(255)
    , PRIMARY KEY(idCategoria)
    );
    
    -- MOSTRAR A TABELA CATEGORIA --
    SELECT * FROM db_farmacia_do_bem.tb_categoria;
    -- MOSTRAR A TABELA PRODUTO --
      SELECT * FROM db_farmacia_do_bem.tb_produto;
      
    -- POPULANDO A TABELA CATEGORIA --
    INSERT INTO tb_categoria (tipo_categoria, cod_remedio, faixaEtaria) 
    VALUES ('Fitoterápico','061','Maiores de 12 anos')
    , ('Alopático','085','Qualquer idade')
    , ('Homeopático','158','Qualquer idade')
    , ('Similar','658','Maiores de 18 anos')
    , ('Genérico','764','Recomendados para maiores que 18 anos');
    
    -- POPULANDO A TABELA PRODUTO --
    INSERT INTO tb_produto (nome, preco, validade, unidade, prescrito)
    VALUES ('Valérimed','8.75','2030-05-27','20','sim')
    , ('Parecetamol','14.50','2030-06-30','10','sim')
    , ('Aurum Metallicum','24.90','2030-01-07','5','sim')
    , ('Aciclovir Merck','34.55','2030-09-05','5','sim')
    , ('Diamox','15.90','2030-12-01','8','sim');
    
    -- LIKANDO A TABELA PRODUTO COM A TABELA CTEGORIA --
    SELECT tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_produto.unidade
    , tb_categoria.tipo_categoria, tb_categoria.faixaEtaria
    FROM tb_Produto
    INNER JOIN tb_categoria ON tb_categoria.idCategoria = tb_Produto.idProduto;
    
    -- PRODUTOS COM VALORES MAIOR QUE 50 --
    SELECT * FROM tb_produto WHERE preco > 50;
    
    -- PRODUTOS COM VALORES DE 3 A 60 --
    SELECT * FROM tb_produto WHERE preco >3 < 60;
    
    -- PRODUTOS COM A LETRA B --
    SELECT * FROM tb_produto WHERE nome LIKE 'B%';
     
   