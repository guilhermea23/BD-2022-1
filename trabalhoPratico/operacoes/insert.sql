
/*Inserts Escolaridade*/
INSERT INTO `Escolaridade` (`id`, `descricao`) VALUES (1,"Ensino Médio Incompleto")
INSERT INTO `Escolaridade` (`id`, `descricao`) VALUES (2,"Ensino Fundamental I")
INSERT INTO `Escolaridade` (`id`, `descricao`) VALUES (3,"Ensino Médio Incompleto")
INSERT INTO `Escolaridade` (`id`, `descricao`) VALUES (4,"Ensino Fundamental II")
INSERT INTO `Escolaridade` (`id`, `descricao`) VALUES (5,"Ensino Superior Completo")


-- Inserts Sexo
INSERT INTO `Sexo` (`id`, `descricao`) VALUES (1, "Masculino")
INSERT INTO `Sexo` (`id`, `descricao`) VALUES (2, "Feminino")
INSERT INTO `Sexo` (`id`, `descricao`) VALUES (3, "Feminino")
INSERT INTO `Sexo` (`id`, `descricao`) VALUES (4, "Masculino")
INSERT INTO `Sexo` (`id`, `descricao`) VALUES (5, "Masculino")

-- Inserts EstadoCivil
INSERT INTO `EstadoCivil` (`id`, `descricao`) VALUES (1, "Solteiro")
INSERT INTO `EstadoCivil` (`id`, `descricao`) VALUES (2, "Solteiro")
INSERT INTO `EstadoCivil` (`id`, `descricao`) VALUES (3, "Casado")
INSERT INTO `EstadoCivil` (`id`, `descricao`) VALUES (4, "Viúvo")
INSERT INTO `EstadoCivil` (`id`, `descricao`) VALUES (5, "Divorciado")

-- Inserts Filiacao
INSERT INTO `Filiacao` (`id`, `nome_pai`, `nome_mae`) VALUES (1,"José Saramago", "Cleide Santana")
INSERT INTO `Filiacao` (`id`, `nome_pai`, `nome_mae`) VALUES (2,"Mauro César","Renata Ingrata")
INSERT INTO `Filiacao` (`id`, `nome_pai`, `nome_mae`) VALUES (3,"Bill do Bora", "Mulher do Bill")
INSERT INTO `Filiacao` (`id`, `nome_pai`, `nome_mae`) VALUES (4,"Gordão do Prem","Ines Brasil")
INSERT INTO `Filiacao` (`id`, `nome_pai`, `nome_mae`) VALUES (5,"Fausto Silva", "Selena Gomes")

-- Inserts EsporteFavorito
INSERT INTO `EsporteFavorito` (`id`, `descricao`) VALUES (1,"Volei")
INSERT INTO `EsporteFavorito` (`id`, `descricao`) VALUES (2,"Futebol")
INSERT INTO `EsporteFavorito` (`id`, `descricao`) VALUES (3,"Handebol")
INSERT INTO `EsporteFavorito` (`id`, `descricao`) VALUES (4,"Golfe")
INSERT INTO `EsporteFavorito` (`id`, `descricao`) VALUES (5,"Basquete")

-- Inserts Aluno
INSERT INTO `Aluno` (`id`, `matricula`, `nome`, `email`, `Escolaridade_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`, `EsporteFavorito_id`) VALUES (1,"Zé","zé@unb.com.br",1,1,1,1,1)
INSERT INTO `Aluno` (`id`, `matricula`, `nome`, `email`, `Escolaridade_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`, `EsporteFavorito_id`) VALUES (2,"Lucas","lucas@unb.com.br",2,2,2,2,2)
INSERT INTO `Aluno` (`id`, `matricula`, `nome`, `email`, `Escolaridade_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`, `EsporteFavorito_id`) VALUES (3,"Maria","maria@unb.com.br",3,3,3,3,3)
INSERT INTO `Aluno` (`id`, `matricula`, `nome`, `email`, `Escolaridade_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`, `EsporteFavorito_id`) VALUES (4,"Marcos","marcos@unb.com.br",4,4,4,4,4)
INSERT INTO `Aluno` (`id`, `matricula`, `nome`, `email`, `Escolaridade_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`, `EsporteFavorito_id`) VALUES (5,"Jorge","Jorge@unb.com.br",5,5,5,5,5)

-- Inserts País
INSERT INTO `Pais` (`id`, `nome`) VALUES (1,"Brazil")
INSERT INTO `Pais` (`id`, `nome`) VALUES (2,"Brazil")
INSERT INTO `Pais` (`id`, `nome`) VALUES (3,"Brazil")
INSERT INTO `Pais` (`id`, `nome`) VALUES (4,"Brazil")
INSERT INTO `Pais` (`id`, `nome`) VALUES (5,"Brazil")

-- Inserts UF
INSERT INTO `UF` (`id`, `nome`, `sigla`, `País_id`) VALUES (1,"Distrito Federal", "DF",1)
INSERT INTO `UF` (`id`, `nome`, `sigla`, `País_id`) VALUES (2,"São Paulo", "SP",2)
INSERT INTO `UF` (`id`, `nome`, `sigla`, `País_id`) VALUES (3,"Rio de Janeiro", "RJ",3)
INSERT INTO `UF` (`id`, `nome`, `sigla`, `País_id`) VALUES (4,"Bahia", "BA",4)
INSERT INTO `UF` (`id`, `nome`, `sigla`, `País_id`) VALUES (5,"Rio Grande do Sul", "RS",5)

-- Inserts Cidade
INSERT INTO `Cidade` (`id`, `nome`, `UF_id`, `DDD`) VALUES (1,"Recanto das Emas", 1, 61)
INSERT INTO `Cidade` (`id`, `nome`, `UF_id`, `DDD`) VALUES (1,"Santos", 2, 11)
INSERT INTO `Cidade` (`id`, `nome`, `UF_id`, `DDD`) VALUES (1,"Buzios", 3, 61)
INSERT INTO `Cidade` (`id`, `nome`, `UF_id`, `DDD`) VALUES (1,"Salvador", 4, 61)
INSERT INTO `Cidade` (`id`, `nome`, `UF_id`, `DDD`) VALUES (1,"Porto Alegre", 5, 61)


-- Inserts Bairro
INSERT INTO `Bairo` (`id`, `nome`, `Cidade_id`) VALUES (1,"Brasília",1)
INSERT INTO `Bairo` (`id`, `nome`, `Cidade_id`) VALUES (2,"São Paulo",2)
INSERT INTO `Bairo` (`id`, `nome`, `Cidade_id`) VALUES (3,"Rio de Janeiro",3)
INSERT INTO `Bairo` (`id`, `nome`, `Cidade_id`) VALUES (4,"Bahia",4)
INSERT INTO `Bairo` (`id`, `nome`, `Cidade_id`) VALUES (5,"Rio Grande do Sul",5)


-- Inserts TipoEndereco
INSERT INTO `TipoEndereco` (`id`, `descricao`) VALUES (1, "Apartamento")
INSERT INTO `TipoEndereco` (`id`, `descricao`) VALUES (1, "Pessoal")
INSERT INTO `TipoEndereco` (`id`, `descricao`) VALUES (1, "Comercial")
INSERT INTO `TipoEndereco` (`id`, `descricao`) VALUES (1, "Apartamento")
INSERT INTO `TipoEndereco` (`id`, `descricao`) VALUES (1, "Apartamento")

-- Inserts Endereco
INSERT INTO `Endereco` (`id`, `logradouro`,`complemento`, `cep`, `Bairro_id`,`TipoEndereco_id`) VALUES (1,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 1,1)
INSERT INTO `Endereco` (`id`, `logradouro`,`complemento`, `cep`, `Bairro_id`,`TipoEndereco_id`) VALUES (2,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 2,2)
INSERT INTO `Endereco` (`id`, `logradouro`,`complemento`, `cep`, `Bairro_id`,`TipoEndereco_id`) VALUES (3,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 3,3)
INSERT INTO `Endereco` (`id`, `logradouro`,`complemento`, `cep`, `Bairro_id`,`TipoEndereco_id`) VALUES (4,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 4,4)
INSERT INTO `Endereco` (`id`, `logradouro`,`complemento`, `cep`, `Bairro_id`,`TipoEndereco_id`) VALUES (5,"Quadra X Conjunto Y Casa Z", "casa bonita", 12345678, 5,5)


-- Inserts TipoTelefone
INSERT INTO `TipoTelefone` (`id`, `descricao`) VALUES (1, "Residencial")
INSERT INTO `TipoTelefone` (`id`, `descricao`) VALUES (2, "Residencial")
INSERT INTO `TipoTelefone` (`id`, `descricao`) VALUES (3, "Comercial")
INSERT INTO `TipoTelefone` (`id`, `descricao`) VALUES (4, "Residencial")
INSERT INTO `TipoTelefone` (`id`, `descricao`) VALUES (5, "Residencial")

-- Inserts Titulacao
INSERT INTO `Titulacao` (`id`, `descricao`) VALUES (1,"Estudante")
INSERT INTO `Titulacao` (`id`, `descricao`) VALUES (2,"Doutor")
INSERT INTO `Titulacao` (`id`, `descricao`) VALUES (3,"Comerciante")
INSERT INTO `Titulacao` (`id`, `descricao`) VALUES (4,"Aposentado")
INSERT INTO `Titulacao` (`id`, `descricao`) VALUES (5,"Estudante")


-- Inserts Professor
INSERT INTO `Professor` (`id`, `matricula`, `nome`, `Titulacao_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`) VALUES (1, 12345678, "Zé", 1, 1, 1, 1)
INSERT INTO `Professor` (`id`, `matricula`, `nome`, `Titulacao_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`) VALUES (1, 12345678, "Zé", 2, 2, 2, 2)
INSERT INTO `Professor` (`id`, `matricula`, `nome`, `Titulacao_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`) VALUES (1, 12345678, "Zé", 3, 3, 3, 3)
INSERT INTO `Professor` (`id`, `matricula`, `nome`, `Titulacao_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`) VALUES (1, 12345678, "Zé", 4, 4, 4, 4)
INSERT INTO `Professor` (`id`, `matricula`, `nome`, `Titulacao_id`, `Sexo_id`, `EstadoCivil_id`, `Filiacao_id`) VALUES (1, 12345678, "Zé", 5, 5, 5, 5)

-- Inserts Telefone
INSERT INTO `Telefone` (`id`, `telefone`, `TipoEndereco_id`, `Aluno_id`, `Aluno_matricula`, `Cidade_id`, `Professor_id`, `Professor_matricula`) VALUES (1, 12345678, 1, 1, 1, 1, 1, 1)
INSERT INTO `Telefone` (`id`, `telefone`, `TipoEndereco_id`, `Aluno_id`, `Aluno_matricula`, `Cidade_id`, `Professor_id`, `Professor_matricula`) VALUES (2, 12345678, 2, 2, 2, 2, 2, 2)
INSERT INTO `Telefone` (`id`, `telefone`, `TipoEndereco_id`, `Aluno_id`, `Aluno_matricula`, `Cidade_id`, `Professor_id`, `Professor_matricula`) VALUES (3, 12345678, 3, 3, 3, 3, 3, 3)
INSERT INTO `Telefone` (`id`, `telefone`, `TipoEndereco_id`, `Aluno_id`, `Aluno_matricula`, `Cidade_id`, `Professor_id`, `Professor_matricula`) VALUES (4, 12345678, 4, 4, 4, 4, 4, 4)
INSERT INTO `Telefone` (`id`, `telefone`, `TipoEndereco_id`, `Aluno_id`, `Aluno_matricula`, `Cidade_id`, `Professor_id`, `Professor_matricula`) VALUES (5, 12345678, 5, 5, 5, 5, 5, 5)

-- Inserts Aluno_has_Endereco
INSERT INTO `Aluno_has_Endereco` (`Aluno_id`, `Aluno_matricula`, `Endereco_id`) VALUES (1, 1, 1)
INSERT INTO `Aluno_has_Endereco` (`Aluno_id`, `Aluno_matricula`, `Endereco_id`) VALUES (2, 2, 2)
INSERT INTO `Aluno_has_Endereco` (`Aluno_id`, `Aluno_matricula`, `Endereco_id`) VALUES (3, 3, 3)
INSERT INTO `Aluno_has_Endereco` (`Aluno_id`, `Aluno_matricula`, `Endereco_id`) VALUES (4, 4, 4)
INSERT INTO `Aluno_has_Endereco` (`Aluno_id`, `Aluno_matricula`, `Endereco_id`) VALUES (5, 5, 5)

-- Inserts Professor_has_Endereco
INSERT INTO `Professor_has_Endereco` (`Professor_id`, `Professor_matricula`,`Endereco_id`,`Endereco_TipoEndereco_id`) VALUES (1, 1, 1, 1)
INSERT INTO `Professor_has_Endereco` (`Professor_id`, `Professor_matricula`,`Endereco_id`,`Endereco_TipoEndereco_id`) VALUES (2, 2, 2, 2)
INSERT INTO `Professor_has_Endereco` (`Professor_id`, `Professor_matricula`,`Endereco_id`,`Endereco_TipoEndereco_id`) VALUES (3, 3, 3, 3)
INSERT INTO `Professor_has_Endereco` (`Professor_id`, `Professor_matricula`,`Endereco_id`,`Endereco_TipoEndereco_id`) VALUES (4, 4, 4, 4)
INSERT INTO `Professor_has_Endereco` (`Professor_id`, `Professor_matricula`,`Endereco_id`,`Endereco_TipoEndereco_id`) VALUES (5, 5, 5, 5)

-- Inserts Curso
INSERT INTO `Curso` (`id`, `codigo`, `descricao`, `num_horas`, `num_vagas_total`, `nuym_vagas_ocupadas`, `data_inicio`, `data_fim`, `Professor_id`, `Professor_matricula`) VALUES (1, 1234, "Bom", 4, 20, 10, 2022-09-13 19:00:00, 2022-09-23 23:00:00,1, 1)
INSERT INTO `Curso` (`id`, `codigo`, `descricao`, `num_horas`, `num_vagas_total`, `nuym_vagas_ocupadas`, `data_inicio`, `data_fim`, `Professor_id`, `Professor_matricula`) VALUES (1, 1234, "Bom", 4, 20, 10, 2022-09-13 19:00:00, 2022-09-23 23:00:00,2, 2)
INSERT INTO `Curso` (`id`, `codigo`, `descricao`, `num_horas`, `num_vagas_total`, `nuym_vagas_ocupadas`, `data_inicio`, `data_fim`, `Professor_id`, `Professor_matricula`) VALUES (1, 1234, "Bom", 4, 20, 10, 2022-09-13 19:00:00, 2022-09-23 23:00:00,3, 3)
INSERT INTO `Curso` (`id`, `codigo`, `descricao`, `num_horas`, `num_vagas_total`, `nuym_vagas_ocupadas`, `data_inicio`, `data_fim`, `Professor_id`, `Professor_matricula`) VALUES (1, 1234, "Bom", 4, 20, 10, 2022-09-13 19:00:00, 2022-09-23 23:00:00,4, 4)
INSERT INTO `Curso` (`id`, `codigo`, `descricao`, `num_horas`, `num_vagas_total`, `nuym_vagas_ocupadas`, `data_inicio`, `data_fim`, `Professor_id`, `Professor_matricula`) VALUES (1, 1234, "Bom", 4, 20, 10, 2022-09-13 19:00:00, 2022-09-23 23:00:00,5, 5)


-- Inserts Curso_has_Aluno
INSERT INTO `Curso_has_Aluno` (`Curso_id`, `Curso_codigo`, `Aluno_id`, `Aluno_matricula`) VALUES (1, 1234, 1, 1, 1)
INSERT INTO `Curso_has_Aluno` (`Curso_id`, `Curso_codigo`, `Aluno_id`, `Aluno_matricula`) VALUES (2, 1234, 2, 2, 2)
INSERT INTO `Curso_has_Aluno` (`Curso_id`, `Curso_codigo`, `Aluno_id`, `Aluno_matricula`) VALUES (3, 1234, 3, 3, 3)
INSERT INTO `Curso_has_Aluno` (`Curso_id`, `Curso_codigo`, `Aluno_id`, `Aluno_matricula`) VALUES (4, 1234, 4, 4, 4)
INSERT INTO `Curso_has_Aluno` (`Curso_id`, `Curso_codigo`, `Aluno_id`, `Aluno_matricula`) VALUES (5, 1234, 5, 5, 5)
