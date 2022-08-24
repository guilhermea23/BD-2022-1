CREATE TABLE `Cursos` (
	`codigo` INT(11) NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	`horas_aula` INT(11) NOT NULL,
	`qtd_vagas_total` INT(11) NOT NULL,
	`qtd_vagas_ocupadas` INT(11) NOT NULL,
	`data_inicio` TIMESTAMP(255) NOT NULL,
	PRIMARY KEY (`codigo`)
);

CREATE TABLE `Alunos` (
	`matricula` varchar(255) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`sexo` varchar(255) NOT NULL,
	`estado_civil` varchar(255) NOT NULL,
	`filiacao` varchar(255) NOT NULL,
	`endereco` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`esporte_fav` varchar(255) NOT NULL,
	`escolaridade` varchar(255) NOT NULL,
	PRIMARY KEY (`matricula`)
);

CREATE TABLE `Telefone` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`ddd` INT(11) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Alunos` ADD CONSTRAINT `Alunos_fk0` FOREIGN KEY (`matricula`) REFERENCES `Telefone`(`id`);

ALTER TABLE `Telefone` ADD CONSTRAINT `Telefone_fk0` FOREIGN KEY (`id`) REFERENCES `Telefone`(``);




