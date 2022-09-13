INSERT INTO EstadoCivil (descricao) VALUES ('Casado(a)');
INSERT INTO EstadoCivil (descricao) VALUES ('Solteiro(a)');
INSERT INTO EstadoCivil (descricao) VALUES ('Viuvo(a)');
INSERT INTO EstadoCivil (descricao) VALUES ('Divorciado(a)');

INSERT INTO Filiacao (pai, mae) VALUES ('Joao', 'Maria');
INSERT INTO Filiacao (pai, mae) VALUES ('Kleiton', 'Leticia');
INSERT INTO Filiacao (pai, mae) VALUES ('Angelina', 'Jolie');
INSERT INTO Filiacao (pai, mae) VALUES ('Bradie', 'Pit');

INSERT INTO Sexo (descricao) VALUES ('Masculino');
INSERT INTO Sexo (descricao) VALUES ('Feminino');
INSERT INTO Sexo (descricao) VALUES ('Prefiro nao declarar');
INSERT INTO Sexo (descricao) VALUES ('Outro');

INSERT INTO TipoTelefone (tipo) VALUES ('Fixo');
INSERT INTO TipoTelefone (tipo) VALUES ('Celular');

INSERT INTO Telefone (numero, ddd, TipoTelefone_id) 
    VALUES 
        ( '998860170', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '996691245', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '999999999', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '991111112', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '023456780', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '420246969', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '133713370', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '123456789', '061', (SELECT id FROM TipoTelefone WHERE tipo='Fixo')),
        ( '000014578', '061', (SELECT id FROM TipoTelefone WHERE tipo='Celular')),
        ( '080008000', '061', (SELECT id FROM TipoTelefone WHERE tipo='Celular')),
        ( '000145678', '061', (SELECT id FROM TipoTelefone WHERE tipo='Celular')),
        ( '148675123', '061', (SELECT id FROM TipoTelefone WHERE tipo='Celular'));

INSERT INTO UF (nome, sigla) VALUES 
('Distrito Federal', 'DF'),
('Sao Paulo', 'SP'),
('Minas Gerais', 'MG'),
('Rio de Janeiro', 'RJ'),
('Mato Grosso', 'MT');

INSERT INTO Naturalidade (descricao) VALUES 
('Brasileiro'),
('Americano'),
('Mexicano'),
('Italiano'),
('Argentino');

INSERT INTO Cidade (nome, UF_id) VALUES 
('Brasilia', 		(SELECT id FROM UF WHERE sigla='DF')),
('Ceilandia', 		(SELECT id FROM UF WHERE sigla='DF')),
('Sao Paulo', 		(SELECT id FROM UF WHERE sigla='SP')),
('Belo Horizonte', 	(SELECT id FROM UF WHERE sigla='MG')),
('Cuiaba', 			(SELECT id FROM UF WHERE sigla='MT'));

INSERT INTO Bairro (nome, Cidade_id) VALUES 
('Asa Sul',    (SELECT id FROM Cidade WHERE nome='Brasilia')),
('Asa Norte',  (SELECT id FROM Cidade WHERE nome='Brasilia')),
('Sobradinho', (SELECT id FROM Cidade WHERE nome='Brasilia')),
('Barra Funda',(SELECT id FROM Cidade WHERE nome='Sao Paulo')),
('Bela Vista', (SELECT id FROM Cidade WHERE nome='Sao Paulo'));

INSERT INTO TipoEndereco (descricao) VALUES ('Residencial');
INSERT INTO TipoEndereco (descricao) VALUES ('Comercial');
INSERT INTO TipoEndereco (descricao) VALUES ('Publico');
INSERT INTO TipoEndereco (descricao) VALUES ('Outro');

INSERT INTO Endereco (rua, complemento, cep, Bairro_id, TipoEndereco_id) VALUES
('Rua das araras', 'Conjunto 13, quadra N', '73252800', 
	(select id from Bairro where nome='Sobradinho'),
    (select id from TipoEndereco where descricao='Residencial')),
('SQN 204', 'Bloco B, Apartamento 7', '73252800', 
	(select id from Bairro where nome='Asa Norte'),
    (select id from TipoEndereco where descricao='Residencial')),
('SQS 503', 'Bloco 7, Apt. 8', '73252800', 
	(select id from Bairro where nome='Asa Sul'),
    (select id from TipoEndereco where descricao='Comercial')),
('Rua dos Girassois', 'Cond. RK, Conjunto Centauros, QD N, casa 45', '73252900', 
	(select id from Bairro where nome='Sobradinho'),
    (select id from TipoEndereco where descricao='Residencial')),
('SQN 503', 'Bloco C, apt 31', '73252800', 
	(select id from Bairro where nome='Asa Norte'),
    (select id from TipoEndereco where descricao='Comercial'));

INSERT INTO Aluno (matricula, cpf, rg, email, nome, Sexo_id, Endereco_id, EstadoCivil_id, Filiacao_id, Telefone_id, Naturalidade_id) VALUES
('190013456', '577.465.161-49','1236457','rogerinho@outlook.com' ,'Rogerio Ceni', (select id from Sexo where descricao='Masculino'), 2, 1, 1, 1, 1),
('200014578', '642.853.546-75','0295467','InesBr@gmail.com','Ines Brasil',(select id from Sexo where descricao='Feminino'), 3, 1,  2, 2, 1),
('210458890', '748.169.152-57','5578421','jjeeu@firebird.com','Joao Jose',  (select id from Sexo where descricao='Prefiro nao declarar'), 3, 3, 3, 2, 1),
('200000041', '547.786.558-00','7070707','mariajoaquina@yahoo.com' ,'Larissa Manoela', (select id from Sexo where descricao='Prefiro nao declarar'), 2, 4, 4, 1, 1),
('200564574', '725.617.235-42','2415789','gustavinho@ig.com.br' ,'Gustavo Avinho', (select id from Sexo where descricao='Outro'), 2, 1, 3, 1, 1);

INSERT INTO CorDaPele (cor) VALUES ('Clara'), ('Morena'), ('Escura');
INSERT INTO HabilidadeEspecifica (descricao) VALUES ('Mestre em YoYo'), ('Da mortal'), ('Excel'), ('Word'), ('Palestrinha');

INSERT INTO Funcionario (matricula, cpf, rg, email, nome, num_dependentes, HabilidadeEspecifica_id, CorDaPele_id, Sexo_id, Endereco_id, EstadoCivil_id, Filiacao_id, Telefone_id, Naturalidade_id) VALUES 
('000000000', '807.811.295-59','2469874','Brabo@tapanacara.oscar.com' , 'Will Smith', 3, 1, 3, 1, 4, 2, 1, 1, 2),
('000000001', '762.216.237-07','4521579','Tomou@tapanacara.oscar.com' , 'Chris Rock', 5, 2, 3, 2, 4, 1, 2, 2, 2),
('000000002', '832.772.896-21','4204204','josecarlos@gmail.com' , 'jose carlos', 2, 3, 1, 2, 4, 3, 3, 3, 4),
('000000003', '235.965.570-11','2469420','ednaldo@pereira.com' , 'Ednaldo Pereira', 1, 3, 2, 3, 4, 4, 4, 4, 1),
('000000004', '736.545.264-11','2345678','cirilo@carrossel.com' , 'Cirilo carrosel', 3, 2, 3, 3, 4, 2, 4, 1, 1);

INSERT INTO Editora (nome) VALUES
('Intrinseca'),
('Arqueiro'),
('Fundamento'),
('Rocco'),
('Moderna');

INSERT INTO AreaDeConhecimento (nome) VALUES
('Aventura'),
('Infantil'),
('Não ficção'),
('Romance'),
('Filosofia'),
('Poesia');

INSERT INTO Autor (nome) VALUES
('J. R. R. Tolkien'),
('Cecília Meireles'),
('J. K Rowling'),
('Maurício de Souza'),
('Platão');

INSERT INTO Livro (isbn, titulo, num_paginas, ano_edicao, Editora_id, AreaDeConhecimento_id, Autor_id) VALUES
('978-3-26-148410-0', 'Senhor dos Anéis', 521, 2013,
    (select id from Editora where nome='Rocco'),
    (select id from AreaDeConhecimento where nome='Aventura'),
    (select id from Autor where nome='J. R. R. Tolkien')),
('978-3-26-148410-1', 'Laços de Família', 96, 2008,
    (select id from Editora where nome='Fundamento'),
    (select id from AreaDeConhecimento where nome='Poesia'),
    (select id from Autor where nome='Cecília Meireles')),
('978-3-26-148410-2', 'Harry Potter', 336, 2017,
    (select id from Editora where nome='Rocco'),
    (select id from AreaDeConhecimento where nome='Aventura'),
    (select id from Autor where nome='J. K Rowling')),
('978-3-26-148410-3', 'Turma da Mônica', 54, 2012,
    (select id from Editora where nome='Moderna'),
    (select id from AreaDeConhecimento where nome='Infantil'),
    (select id from Autor where nome='Maurício de Souza')),
('978-3-26-148410-4', 'A República', 1254, 1996,
    (select id from Editora where nome='Fundamento'),
    (select id from AreaDeConhecimento where nome='Filosofia'),
    (select id from Autor where nome='Platão'));
    
INSERT INTO Titulacao (descricao) VALUES
('Mestre'),
('Doutor'),
('Pós-Doutor'),
('Especialista'),
('Outro');

INSERT INTO Multa (codigo, valor, foi_pago) VALUES 
( '12345', '12.85', 1),
( '01234', '0.50', 0),
( '00123', '0.60', 0),
( '00234', '2.25', 1),
( '23456', '0.25', 1),
( '00786', '99.00', 1),
( '00145', '3.40', 0);

INSERT INTO Professor (matricula,  cpf, rg, email, nome, data_titulacao, Titulacao_id, Sexo_id, Endereco_id, EstadoCivil_id, Filiacao_id, Telefone_id, Naturalidade_id) VALUES
('130055127', '664.721.350-37', '9968531', 'qfonviziviol1986ts@email-temp.com','Joao', 2007, (select id from Titulacao where descricao='Mestre'), (select id from Sexo where descricao='Masculino'), 2, 1, 1, 1, 1),
('200109387', '215.253.530-80', '0332548', 'asterioseuthymi@kenvanharen.com','Kleitinho', 2004, (select id from Titulacao where descricao='Outro'), (select id from Sexo where descricao='Feminino'), 3, 1, 2, 2, 1),
('170623456', '939.288.770-11', '3652444', 'callum57@never.ga','Teófilo de Campos', 2002, (select id from Titulacao where descricao='Pós-Doutor'), (select id from Sexo where descricao='Outro'), 3, 1, 3, 2, 1),
('180013133', '221.747.230-50', '9555877', 'gwuyts@debb.me','Aleteia Patrícia', 2009, (select id from Titulacao where descricao='Doutor'), (select id from Sexo where descricao='Feminino'), 2, 4, 4, 2, 1),
('110019876', '684.236.540-60', '9964800', 'zobaisi@never.ga','Helder de Carvalho', 2011, (select id from Titulacao where descricao='Especialista'), (select id from Sexo where descricao='Outro'), 2, 4, 4, 1, 1);

INSERT INTO EmprestimoProfessor (Professor_matricula, Livro_isbn, data_emprestimo, data_vencimento) VALUES
((select matricula from Professor where nome='Kleitinho'), (select isbn from Livro where titulo='A República'), '2020-08-11', '2021-08-25'),
((select matricula from Professor where nome='Kleitinho'), (select isbn from Livro where titulo='Laços de Família'), '2020-03-07', '2021-03-21'),
((select matricula from Professor where nome='Joao'), (select isbn from Livro where titulo='Senhor dos Anéis'), '2021-03-21', '2021-04-04'),
((select matricula from Professor where nome='Helder de Carvalho'), (select isbn from Livro where titulo='Harry Potter'), '2021-04-03', '2021-04-17');

INSERT INTO EmprestimoFuncionario (Funcionario_matricula, Livro_isbn, data_emprestimo, data_vencimento) VALUES
('000000000', (select isbn from Livro where titulo='A República'), '2022-01-12', '2022-04-15'),
('000000001', (select isbn from Livro where titulo='Laços de Família'), '2021-04-08', '2022-04-08'),
('000000002', (select isbn from Livro where titulo='Senhor dos Anéis'), '2022-03-21', '2022-04-19'),
('000000003', (select isbn from Livro where titulo='Harry Potter'), '2022-04-03', '2022-04-17'),
('000000004', (select isbn from Livro where titulo='Turma da Mônica'), '2022-03-20', '2022-04-15');

INSERT INTO EmprestimoAluno (Aluno_matricula, Livro_isbn, data_emprestimo, data_vencimento) VALUES
((select matricula from Aluno where nome='Rogerio Ceni'), (select isbn from Livro where titulo='A República'), '2022-04-11', '2022-04-12');

INSERT INTO EmprestimoAluno (Aluno_matricula, Livro_isbn, data_emprestimo, data_vencimento, Multa_codigo) VALUES
((select matricula from Aluno where nome='Ines Brasil'), (select isbn from Livro where titulo='Laços de Família'), '2022-03-07', '2022-03-21', '12345'),
((select matricula from Aluno where nome='Joao Jose'), (select isbn from Livro where titulo='Senhor dos Anéis'), '2022-03-21', '2022-04-04', '01234'),
((select matricula from Aluno where nome='Larissa Manoela'), (select isbn from Livro where titulo='Harry Potter'), '2022-04-03', '2022-04-17', '00123'),
((select matricula from Aluno where nome='Larissa Manoela'), (select isbn from Livro where titulo='Harry Potter'), '2022-04-03', '2022-04-17', '23456'),
((select matricula from Aluno where nome='Gustavo Avinho'), (select isbn from Livro where titulo='Turma da Mônica'), '2022-04-09', '2022-04-23', '00234');