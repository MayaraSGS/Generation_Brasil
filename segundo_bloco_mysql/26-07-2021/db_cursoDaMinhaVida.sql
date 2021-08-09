CREATE DATABASE db_cursoDaMinhaVida DEFAULT CHARACTER SET utf8;
	USE db_cursoDaMinhaVida;
    
    CREATE TABLE tb_curso(
    idCurso INT NOT NULL AUTO_INCREMENT
    , nome_curso VARCHAR(255)
    , periodo VARCHAR(255)
    , duracao VARCHAR(255)
    , fk_categoria INT
    , PRIMARY KEY(idCurso)
    , FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(idCategoria)
    );
    
    CREATE TABLE tb_categoria(
    idCategoria INT NOT NULL AUTO_INCREMENT
    , materia VARCHAR(255)
    , semestre FLOAT
    , PRIMARY KEY(idCategoria)
    );
    
  -- MOSTRAR A TABELA CATEGORIA --
    SELECT * FROM db_cursoDaMinhaVida.tb_categoria;
    -- MOSTRAR A TABELA CURSO --
      SELECT * FROM db_cursoDaMinhaVida.tb_curso;
      
    -- POPULANDO A TABELA CATEGORIA --
    INSERT INTO tb_categoria (materia, semestre) 
    VALUES ('POO',''), ('MySQL',''), ('Angular',''), ('PHP',''), ('Python',''), ('HTML/CSS','');
    
    -- POPULANDO A TABELA CURSO --
    INSERT INTO tb_curso (nome_curso, periodo)
    VALUES ('',''), ('',''), ('',''), ('',''), ('',''), ('',''), ('',''), ('','');
    
    -- LIKANDO A TABELA CURSO COM A TABELA CATEGORIA --
    SELECT tb_curso.nome_curso, tb_curso.periodo, tb_categoria.materia, tb_categoria.semestre
    FROM tb_curso
    INNER JOIN tb_categoria ON tb_categoria.idCategoria = tb_curso.idCurso;
    
    ALTER TABLE tb_curso DROP COLUMN duracao;
    
    -- CURSO COM A INICIAL J --
    SELECT * FROM tb_curso WHERE nome_curso LIKE 'J%';