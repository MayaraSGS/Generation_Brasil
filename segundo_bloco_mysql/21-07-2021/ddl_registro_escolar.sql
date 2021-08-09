CREATE DATABASE registro_escolar DEFAULT CHARACTER SET utf8;
	USE registro_escolar;
    
    CREATE TABLE tb_estudante(
    idEstudante INT NOT NULL AUTO_INCREMENT
    , nome VARCHAR(50) NOT NULL
    , idade INT NOT NULL
    , dataNascimento DATE NOT NULL
    , ra VARCHAR(20) NOT NULL
    , turma VARCHAR(30) NOT NULL
    , nota FLOAT NOT NULL
    , endereco VARCHAR(60) NOT NULL
    , media VARCHAR(30) NOT NULL
    , PRIMARY KEY (idestudante)
    )ENGINE = InnoDB;
    
    -- mostrando a tabela estudantes --
    SELECT * FROM registro_escolar.tb_estudante;
    
    -- enserindo dados na tabela --
    INSERT INTO registro_escolar.tb_estudante(nome, idade, dataNascimento, ra, turma, nota, endereco, media)
    VALUE('Milena','15','2006-07-01','487','Ensino Médio - 1° A','9.0','Rua Engenheiro Cralo Grazia','10');
    
    -- SELECT alunos com notas maiores que 7.0 --
    SELECT * FROM registro_escolar.tb_estudante WHERE nota > 7;
    
    -- SELECT alunos com notas menor que 7.0 --
    SELECT * FROM registro_escolar.tb_estudante WHERE nota < 7;