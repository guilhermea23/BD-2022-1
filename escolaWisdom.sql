    -- MySQL Workbench Forward Engineering

    SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
    SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
    SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

    -- -----------------------------------------------------
    -- Schema mydb
    -- -----------------------------------------------------

    -- -----------------------------------------------------
    -- Schema mydb
    -- -----------------------------------------------------
    CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
    USE `mydb` ;

    -- -----------------------------------------------------
    -- Table `mydb`.`Escolaridade`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Escolaridade` (
    `id` INT NOT NULL,
    `descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Sexo`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Sexo` (
    `id` INT NOT NULL,
    `descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`EstadoCivil`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`EstadoCivil` (
    `id` INT NOT NULL,
    `descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Filiacao`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Filiacao` (
    `id` INT NOT NULL,
    `nome_pai` VARCHAR(100) NOT NULL,
    `nome_mae` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`EsporteFavorito`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`EsporteFavorito` (
    `id` INT NOT NULL,
    `descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Aluno`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Aluno` (
    `id` INT NOT NULL,
    `matricula` INT NOT NULL,
    `nome` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `Escolaridade_id` INT NOT NULL,
    `Sexo_id` INT NOT NULL,
    `EstadoCivil_id` INT NOT NULL,
    `Filiacao_id` INT NOT NULL,
    `EsporteFavorito_id` INT NOT NULL,
    PRIMARY KEY (`id`, `matricula`),
    INDEX `fk_Aluno_Escolaridade1_idx` (`Escolaridade_id` ASC) VISIBLE,
    INDEX `fk_Aluno_Sexo1_idx` (`Sexo_id` ASC) VISIBLE,
    INDEX `fk_Aluno_EstadoCivil1_idx` (`EstadoCivil_id` ASC) VISIBLE,
    INDEX `fk_Aluno_Filiacao1_idx` (`Filiacao_id` ASC) VISIBLE,
    INDEX `fk_Aluno_EsporteFavorito1_idx` (`EsporteFavorito_id` ASC) VISIBLE,
    CONSTRAINT `fk_Aluno_Escolaridade1`
        FOREIGN KEY (`Escolaridade_id`)
        REFERENCES `mydb`.`Escolaridade` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Aluno_Sexo1`
        FOREIGN KEY (`Sexo_id`)
        REFERENCES `mydb`.`Sexo` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Aluno_EstadoCivil1`
        FOREIGN KEY (`EstadoCivil_id`)
        REFERENCES `mydb`.`EstadoCivil` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Aluno_Filiacao1`
        FOREIGN KEY (`Filiacao_id`)
        REFERENCES `mydb`.`Filiacao` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Aluno_EsporteFavorito1`
        FOREIGN KEY (`EsporteFavorito_id`)
        REFERENCES `mydb`.`EsporteFavorito` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Pais`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Pais` (
    `id` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`UF`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`UF` (
    `id` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    `sigla` VARCHAR(45) NOT NULL,
    `Pais_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_UF_País1_idx` (`Pais_id` ASC) VISIBLE,
    CONSTRAINT `fk_UF_País1`
        FOREIGN KEY (`Pais_id`)
        REFERENCES `mydb`.`Pais` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Cidade`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Cidade` (
    `id` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    `UF_id` INT NOT NULL,
    `DDD` VARCHAR(2) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_Cidade_UF1_idx` (`UF_id` ASC) VISIBLE,
    CONSTRAINT `fk_Cidade_UF1`
        FOREIGN KEY (`UF_id`)
        REFERENCES `mydb`.`UF` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Bairro`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Bairro` (
    `id` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    `Cidade_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_Bairro_Cidade_idx` (`Cidade_id` ASC) VISIBLE,
    CONSTRAINT `fk_Bairro_Cidade`
        FOREIGN KEY (`Cidade_id`)
        REFERENCES `mydb`.`Cidade` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`TipoEndereco`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`TipoEndereco` (
    `id` INT NOT NULL,
    `descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Endereco`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Endereco` (
    `id` INT NOT NULL,
    `logradouro` VARCHAR(100) NOT NULL,
    `complemento` VARCHAR(100) NOT NULL,
    `cep` VARCHAR(45) NOT NULL,
    `Bairro_id` INT NOT NULL,
    `TipoEndereco_id` INT NOT NULL,
    PRIMARY KEY (`id`, `TipoEndereco_id`),
    INDEX `fk_Endereco_Bairro1_idx` (`Bairro_id` ASC) VISIBLE,
    INDEX `fk_Endereco_TipoEndereco1_idx` (`TipoEndereco_id` ASC) VISIBLE,
    CONSTRAINT `fk_Endereco_Bairro1`
        FOREIGN KEY (`Bairro_id`)
        REFERENCES `mydb`.`Bairro` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Endereco_TipoEndereco1`
        FOREIGN KEY (`TipoEndereco_id`)
        REFERENCES `mydb`.`TipoEndereco` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`TipoTelefone`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`TipoTelefone` (
    `id` INT NOT NULL,
    `descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Titulacao`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Titulacao` (
    `id` INT NOT NULL,
    `descricao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Professor`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Professor` (
    `id` INT NOT NULL,
    `matricula` INT NOT NULL,
    `nome` VARCHAR(100) NOT NULL,
    `Titulacao_id` INT NOT NULL,
    `Sexo_id` INT NOT NULL,
    `EstadoCivil_id` INT NOT NULL,
    `Filiacao_id` INT NOT NULL,
    PRIMARY KEY (`id`, `matricula`),
    INDEX `fk_Professor_Titulacao1_idx` (`Titulacao_id` ASC) VISIBLE,
    INDEX `fk_Professor_Sexo1_idx` (`Sexo_id` ASC) VISIBLE,
    INDEX `fk_Professor_EstadoCivil1_idx` (`EstadoCivil_id` ASC) VISIBLE,
    INDEX `fk_Professor_Filiacao1_idx` (`Filiacao_id` ASC) VISIBLE,
    CONSTRAINT `fk_Professor_Titulacao1`
        FOREIGN KEY (`Titulacao_id`)
        REFERENCES `mydb`.`Titulacao` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Professor_Sexo1`
        FOREIGN KEY (`Sexo_id`)
        REFERENCES `mydb`.`Sexo` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Professor_EstadoCivil1`
        FOREIGN KEY (`EstadoCivil_id`)
        REFERENCES `mydb`.`EstadoCivil` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Professor_Filiacao1`
        FOREIGN KEY (`Filiacao_id`)
        REFERENCES `mydb`.`Filiacao` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Telefone`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Telefone` (
    `id` INT NOT NULL,
    `telefone` VARCHAR(9) NOT NULL,
    `TipoTelefone_id` INT NOT NULL,
    `Aluno_id` INT NOT NULL,
    `Aluno_matricula` INT NOT NULL,
    `Cidade_id` INT NOT NULL,
    `Professor_id` INT NOT NULL,
    `Professor_matricula` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_Telefone_TipoTelefone1_idx` (`TipoTelefone_id` ASC) VISIBLE,
    INDEX `fk_Telefone_Aluno1_idx` (`Aluno_id` ASC, `Aluno_matricula` ASC) VISIBLE,
    INDEX `fk_Telefone_Cidade1_idx` (`Cidade_id` ASC) VISIBLE,
    INDEX `fk_Telefone_Professor1_idx` (`Professor_id` ASC, `Professor_matricula` ASC) VISIBLE,
    CONSTRAINT `fk_Telefone_TipoTelefone1`
        FOREIGN KEY (`TipoTelefone_id`)
        REFERENCES `mydb`.`TipoTelefone` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Telefone_Aluno1`
        FOREIGN KEY (`Aluno_id` , `Aluno_matricula`)
        REFERENCES `mydb`.`Aluno` (`id` , `matricula`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Telefone_Cidade1`
        FOREIGN KEY (`Cidade_id`)
        REFERENCES `mydb`.`Cidade` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Telefone_Professor1`
        FOREIGN KEY (`Professor_id` , `Professor_matricula`)
        REFERENCES `mydb`.`Professor` (`id` , `matricula`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Aluno_has_Endereco`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Aluno_has_Endereco` (
    `Aluno_id` INT NOT NULL,
    `Aluno_matricula` INT NOT NULL,
    `Endereco_id` INT NOT NULL,
    PRIMARY KEY (`Aluno_id`, `Aluno_matricula`, `Endereco_id`),
    INDEX `fk_Aluno_has_Endereco_Endereco1_idx` (`Endereco_id` ASC) VISIBLE,
    INDEX `fk_Aluno_has_Endereco_Aluno1_idx` (`Aluno_id` ASC, `Aluno_matricula` ASC) VISIBLE,
    CONSTRAINT `fk_Aluno_has_Endereco_Aluno1`
        FOREIGN KEY (`Aluno_id` , `Aluno_matricula`)
        REFERENCES `mydb`.`Aluno` (`id` , `matricula`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Aluno_has_Endereco_Endereco1`
        FOREIGN KEY (`Endereco_id`)
        REFERENCES `mydb`.`Endereco` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Professor_has_Endereco`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Professor_has_Endereco` (
    `Professor_id` INT NOT NULL,
    `Professor_matricula` INT NOT NULL,
    `Endereco_id` INT NOT NULL,
    `Endereco_TipoEndereco_id` INT NOT NULL,
    PRIMARY KEY (`Professor_id`, `Professor_matricula`, `Endereco_id`, `Endereco_TipoEndereco_id`),
    INDEX `fk_Professor_has_Endereco_Endereco1_idx` (`Endereco_id` ASC, `Endereco_TipoEndereco_id` ASC) VISIBLE,
    INDEX `fk_Professor_has_Endereco_Professor1_idx` (`Professor_id` ASC, `Professor_matricula` ASC) VISIBLE,
    CONSTRAINT `fk_Professor_has_Endereco_Professor1`
        FOREIGN KEY (`Professor_id` , `Professor_matricula`)
        REFERENCES `mydb`.`Professor` (`id` , `matricula`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Professor_has_Endereco_Endereco1`
        FOREIGN KEY (`Endereco_id` , `Endereco_TipoEndereco_id`)
        REFERENCES `mydb`.`Endereco` (`id` , `TipoEndereco_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Curso`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Curso` (
    `id` INT NOT NULL,
    `codigo` VARCHAR(45) NOT NULL,
    `descricao` VARCHAR(100) NOT NULL,
    `num_horas` INT NOT NULL,
    `num_vagas_total` INT NOT NULL,
    `nuym_vagas_ocupadas` INT NOT NULL,
    `data_inicio` DATE NOT NULL,
    `data_fim` DATE NOT NULL,
    `Professor_id` INT NOT NULL,
    `Professor_matricula` INT NOT NULL,
    PRIMARY KEY (`id`, `codigo`),
    INDEX `fk_Curso_Professor1_idx` (`Professor_id` ASC, `Professor_matricula` ASC) VISIBLE,
    CONSTRAINT `fk_Curso_Professor1`
        FOREIGN KEY (`Professor_id` , `Professor_matricula`)
        REFERENCES `mydb`.`Professor` (`id` , `matricula`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Curso_has_Aluno`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `mydb`.`Curso_has_Aluno` (
    `Curso_id` INT NOT NULL,
    `Curso_codigo` VARCHAR(45) NOT NULL,
    `Aluno_id` INT NOT NULL,
    `Aluno_matricula` INT NOT NULL,
    PRIMARY KEY (`Curso_id`, `Curso_codigo`, `Aluno_id`, `Aluno_matricula`),
    INDEX `fk_Curso_has_Aluno_Aluno1_idx` (`Aluno_id` ASC, `Aluno_matricula` ASC) VISIBLE,
    INDEX `fk_Curso_has_Aluno_Curso1_idx` (`Curso_id` ASC, `Curso_codigo` ASC) VISIBLE,
    CONSTRAINT `fk_Curso_has_Aluno_Curso1`
        FOREIGN KEY (`Curso_id` , `Curso_codigo`)
        REFERENCES `mydb`.`Curso` (`id` , `codigo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_Curso_has_Aluno_Aluno1`
        FOREIGN KEY (`Aluno_id` , `Aluno_matricula`)
        REFERENCES `mydb`.`Aluno` (`id` , `matricula`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


    SET SQL_MODE=@OLD_SQL_MODE;
    SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
    SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

    /*Inserts Escolaridade*/
    INSERT INTO `escolaridade` (`id`, `descricao`) VALUES 
        (1,"Ensino Médio Incompleto"),
        (2,"Ensino Fundamental I"),
        (3,"Ensino Médio Incompleto"),
        (4,"Ensino Fundamental II"),
        (5,"Ensino Superior Completo");


    -- Inserts Sexo
    INSERT INTO `sexo` (`id`, `descricao`) VALUES 
        (1, "Masculino"),
        (2, "Feminino"),
        (3, "Feminino"),
        (4, "Masculino"),
        (5, "Masculino");

    -- Inserts EstadoCivil
    INSERT INTO `estadoCivil` (`id`, `descricao`) VALUES 
        (1, "Solteiro"),
        (2, "Solteiro"),
        (3, "Casado"),
        (4, "Viúvo"),
        (5, "Divorciado");

    -- Inserts Filiacao
    INSERT INTO `filiacao` (`id`, `nome_pai`, `nome_mae`) VALUES 
        (1,"José Saramago", "Cleide Santana"),
        (2,"Mauro César","Renata Ingrata"),
        (3,"Bill do Bora", "Mulher do Bill"),
        (4,"Gordão do Prem","Ines Brasil"),
        (5,"Fausto Silva", "Selena Gomes");

    -- Inserts EsporteFavorito
    INSERT INTO `esporteFavorito` (`id`, `descricao`) VALUES 
        (1,"Volei"),
        (2,"Futebol"),
        (3,"Handebol"),
        (4,"Golfe"),
        (5,"Basquete");

    -- Inserts Aluno
    INSERT INTO `aluno` (`id`, `matricula`, `nome`, `email`, `Escolaridade_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`, `EsporteFavorito_id`) VALUES 
        (1, 123,"Zé","zé@unb.com.br",1,1,1,1,1),
        (2, 123,"Lucas","lucas@unb.com.br",2,2,2,2,2),
        (3, 123,"Maria","maria@unb.com.br",3,3,3,3,3),
        (4, 123,"Marcos","marcos@unb.com.br",4,4,4,4,4),
        (5, 123,"Jorge","Jorge@unb.com.br",5,5,5,5,5);

    -- Inserts Pais
    INSERT INTO `pais` (`id`, `nome`) VALUES 
        (1,"Brazil"),
        (2,"Brazil"),
        (3,"Brazil"),
        (4,"Brazil"),
        (5,"Brazil");

    -- Inserts UF
    INSERT INTO `uf` (`id`, `nome`, `sigla`, `Pais_id`) VALUES 
        (1,"Distrito Federal", "DF",1),
        (2,"São Paulo", "SP",2),
        (3,"Rio de Janeiro", "RJ",3),
        (4,"Bahia", "BA",4),
        (5,"Rio Grande do Sul", "RS",5);

    -- Inserts Cidade
    INSERT INTO `cidade` (`id`, `nome`, `UF_id`, `DDD`) VALUES 
        (1,"Recanto das Emas", 1, 61),
        (2,"Santos", 2, 11),
        (3,"Buzios", 3, 61),
        (4,"Salvador", 4, 61),
        (5,"Porto Alegre", 5, 61);


    -- Inserts Bairro
    INSERT INTO `bairro` (`id`, `nome`, `Cidade_id`) VALUES 
        (1,"Brasília",1),
        (2,"São Paulo",2),
        (3,"Rio de Janeiro",3),
        (4,"Bahia",4),
        (5,"Rio Grande do Sul",5);


    -- Inserts TipoEndereco
    INSERT INTO `tipoEndereco` (`id`, `descricao`) VALUES 
        (1, "Apartamento"),
        (2, "Pessoal"),
        (3, "Comercial"),
        (4, "Apartamento"),
        (5, "Apartamento");

    -- Inserts Endereco
    INSERT INTO `endereco` (`id`, `logradouro`,`complemento`, `cep`, `Bairro_id`,`TipoEndereco_id`) VALUES 
        (1,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 1,1),
        (2,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 2,2),
        (3,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 3,3),
        (4,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 4,4),
        (5,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 5,5);


    -- Inserts TipoTelefone
    INSERT INTO `tipoTelefone` (`id`, `descricao`) VALUES 
    (1, "Residencial"),
    (2, "Residencial"),
    (3, "Comercial"),
    (4, "Residencial"),
    (5, "Residencial");

    -- Inserts Titulacao
    INSERT INTO `titulacao` (`id`, `descricao`) VALUES 
    (1,"Estudante"),
    (2,"Doutor"),
    (3,"Comerciante"),
    (4,"Aposentado"),
    (5,"Estudante");


    -- Inserts Professor
    INSERT INTO `professor` (`id`, `matricula`, `nome`, `Titulacao_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`) VALUES 
        (1, 12345678, "Zé", 1, 1, 1, 1),
        (2, 12345678, "Zé", 2, 2, 2, 2),
        (3, 12345678, "Zé", 3, 3, 3, 3),
        (4, 12345678, "Zé", 4, 4, 4, 4),
        (5, 12345678, "Zé", 5, 5, 5, 5);

    -- Inserts Telefone
    INSERT INTO `telefone` (`id`, `telefone`, `TipoTelefone_id`, `Aluno_id`, `Aluno_matricula`, `Cidade_id`, `Professor_id`, `Professor_matricula`) VALUES 
        (1, '12345678', 1, 1, 123, 1, 1, 12345678),
        (2, '12345678', 2, 2, 123, 2, 2, 12345678),
        (3, '12345678', 3, 3, 123, 3, 3, 12345678),
        (4, '12345678', 4, 4, 123, 4, 4, 12345678),
        (5, '12345678', 5, 5, 123, 5, 5, 12345678);

    -- Inserts Aluno_has_Endereco
    INSERT INTO `aluno_has_Endereco` (`Aluno_id`, `Aluno_matricula`, `Endereco_id`) VALUES 
        (1, 123, 1),
        (2, 123, 2),
        (3, 123, 3),
        (4, 123, 4),
        (5, 123, 5);

    -- Inserts Professor_has_Endereco
    INSERT INTO `professor_has_Endereco` (`Professor_id`, `Professor_matricula`,`Endereco_id`,`Endereco_TipoEndereco_id`) VALUES 
        (1, 12345678, 1, 1),
        (2, 12345678, 2, 2),
        (3, 12345678, 3, 3),
        (4, 12345678, 4, 4),
        (5, 12345678, 5, 5);

    -- Inserts Curso
    INSERT INTO `curso` (`id`, `codigo`, `descricao`, `num_horas`, `num_vagas_total`, `nuym_vagas_ocupadas`, `data_inicio`, `data_fim`, `Professor_id`, `Professor_matricula`) VALUES 
        (1, 1234, "Bom", 4, 20, 10, '2022-09-13 19:00:00', '2022-09-23 23:00:00',1, 12345678),
        (2, 1234, "Bom", 4, 20, 10, '2022-09-13 19:00:00', '2022-09-23 23:00:00',2, 12345678),
        (3, 1234, "Bom", 4, 20, 10, '2022-09-13 19:00:00', '2022-09-23 23:00:00',3, 12345678),
        (4, 1234, "Bom", 4, 20, 10, '2022-09-13 19:00:00', '2022-09-23 23:00:00',4, 12345678),
        (5, 1234, "Bom", 4, 20, 10, '2022-09-13 19:00:00', '2022-09-23 23:00:00',5, 12345678);


    -- Inserts Curso_has_Aluno
    INSERT INTO `curso_has_Aluno` (`Curso_id`, `Curso_codigo`, `Aluno_id`, `Aluno_matricula`) VALUES 
        (1, 1234, 1, 123),
        (2, 1234, 2, 123),
        (3, 1234, 3, 123),
        (4, 1234, 4, 123),
        (5, 1234, 5, 123);
