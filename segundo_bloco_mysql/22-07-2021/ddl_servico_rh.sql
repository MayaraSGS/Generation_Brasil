CREATE DATABASE servico_rh DEFAULT CHARACTER SET utf8;
	USE servico_rh;
    
    CREATE TABLE tb_funcionaries(
    idFuncionaries INT NOT NULL AUTO_INCREMENT
    , nome VARCHAR(50) NOT NULL
    , dataNascimento DATE NOT NULL 
    , salario DOUBLE NOT NULL
    , horastrabalhadas DATETIME NOT NULL
    , endereco VARCHAR(255) NOT NULL
    , PRIMARY KEY (idFuncionaries)
    )ENGINE = InnoDB;
    
    -- mostrando a tabela --
    SELECT * FROM servico_rh.tb_funcionaries;
    
    -- enserindo dados na tabela --
    INSERT INTO servico_rh.tb_funcionaries (nome, dataNascimento, salario, horasTrabalhadas, endereco)
    VALUE ('Amanda','1999-01-31','2200.50','2019-04-29 06:00:00','Rua Engenheiro Carlo Grazia');
    INSERT INTO servico_rh.tb_funcionaries (nome, dataNascimento, salario, horasTrabalhadas, endereco)
    VALUE ('Ana','1999-01-31','1900.50','2019-04-29 06:00:00','Rua Engenheiro Carlo Grazia');
    INSERT INTO servico_rh.tb_funcionaries (nome, dataNascimento, salario, horasTrabalhadas, endereco)
    VALUE ('Bianca','1999-01-31','1200.50','2019-04-29 06:00:00','Rua Engenheiro Carlo Grazia');
    
    SELECT * FROM servico_rh.tb_funcionaries WHERE salario > 2000;
    SELECT * FROM servico_rh.tb_funcionaries WHERE salario < 2000;
	