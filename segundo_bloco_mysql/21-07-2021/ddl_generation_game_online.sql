-- DEFAULT CHARACTER SET utf8 >>>> A ideia é que com ele possamos representar qualquer caractere de qualquer idioma --
-- ç, á, à... caracter especiais 

CREATE DATABASE db_generation_game_online DEFAULT CHARACTER SET utf8 ;
	USE db_generation_game_online ;
	-- SHOW DATABASE;
	-- Tabela CLASSE --
	CREATE TABLE tb_classe (
	idClasse INT NOT NULL AUTO_INCREMENT
	,tipoClasse VARCHAR(60) NOT NULL
	,arquitipo VARCHAR(45) NOT NULL
	,poder INT NOT NULL
	,PRIMARY KEY (idClasse)
    )ENGINE = InnoDB;
    -- InnoDB é um mecanismo de armazenamento; como um suporte a chave estrangeira (espero que funcione)
    -- ENGINE são tipos de tabelas que fazem parte do MySQL; ajuda no aumentar do desempenho do banco de dados ()
    
-- TABELA CARACTERISTICAS FISICAS --
CREATE TABLE tb_caracteristicaFisica (
  idCaracteristicaFisica INT NOT NULL AUTO_INCREMENT
  ,altura FLOAT NOT NULL
  ,corDoOlho VARCHAR(10) NOT NULL
  ,corDePele VARCHAR(30) NOT NULL
  ,peso FLOAT NOT NULL
  ,corDoCabelo VARCHAR(45) NOT NULL
  ,tamanhoDoCabelo VARCHAR(45) NOT NULL
  ,PRIMARY KEY (idCaracteristicaFisica)
  )ENGINE = InnoDB;


-- TABELA PERSONAGEM --
CREATE TABLE tb_personagem (
  idPersonagem INT NOT NULL AUTO_INCREMENT
  ,nome VARCHAR(45) NOT NULL
  ,idade INT NOT NULL
  ,raca VARCHAR(50) NOT NULL
  ,idClasse INT NOT NULL
  ,idCaracteristicaFisica INT NOT NULL
  ,PRIMARY KEY (idPersonagem, idClasse, idCaracteristicaFisica)
  ,FOREIGN KEY (idClasse) REFERENCES tb_classe (idClasse)
   ON DELETE NO ACTION
   ON UPDATE NO ACTION
   ,FOREIGN KEY (idCaracteristicaFisica) REFERENCES tb_caracteristicaFisica (idCaracteristicaFisica)
	) ENGINE = InnoDB;

#CONSTRAINT o que é?
-- Constraints (restrições) mantém os dados do usuário restritos, e assim evitam que dados inválidos sejam inseridos no banco
-- agora onde eu coloco? kk

/*
CREATE TABLE socio 
(
  id_socio      INTEGER NOT NULL,
  nome          VARCHAR(256) NOT NULL,
  cpf           VARCHAR(11) NOT NULL,
  email         VARCHAR(256),
  id_situacao   INTEGER,
  CONSTRAINT pk_id_socio PRIMARY KEY (id_socio),  <<<<<
  CONSTRAINT un_socio_cpf UNIQUE (cpf),  <<<<<
  CONSTRAINT socio_id_situacao_fk_ref FOREIGN KEY (id_situacao) REFERENCES situacao (id_situacao) <<<<<
);
*/

-- INNER JOIN tb_personagem ON tb_personagem.idClasse = tb_classe.idClasse

-- mostrando a tabela personagem --
SELECT * FROM db_generation_game_online.tb_personagem;
-- mostrando a tabela classe --
SELECT * FROM db_generation_game_online.tb_classe;
-- mostrando a tabela caracteristicas --
SELECT * FROM db_generation_game_online.tb_caracteristicaFisica;

-- enserindo dados na tabela Classe --
INSERT INTO db_generation_game_online.tb_classe (tipoClasse, arquitipo, poder) VALUE ('Paladino','Machado','15');
INSERT INTO db_generation_game_online.tb_classe (tipoClasse, arquitipo, poder) VALUE ('Arqueiro','Besta','8');
-- enserindo dados na tabela caracteristicas --
 INSERT INTO db_generation_game_online.tb_caracteristicaFisica (altura, corDoOlho, corDePele, peso, corDoCabelo, tamanhoDoCabelo) 
 VALUES ('1.50', 'Vermelho', 'Negra', '50.02', 'Branco', 'Grande');
-- enserindo dados na tabela personagem --
INSERT INTO db_generation_game_online.tb_personagem (nome, idade, raca, caracteristicasFisicas, idClasse) VALUES ('Lwppytta', '23', 'Demonio', '1', '1');

-- alterando dados da coluna classe --
UPDATE tb_classe SET poder = 8 WHERE idClasse = 10;

-- Tentando deletar poder da tabela classe --
DELETE FROM tb_classe WHERE USER = 'poder';

 /* -- adicionando colunas na tabela --
ALTER TABLE tabela ADD COLUMN dado float;
*/

