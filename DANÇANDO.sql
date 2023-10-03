create database dancando_com_TLP;

use dancando_com_TLP;

create table estilo_musica(
id_estilo int NOT NULL PRIMARY KEY AUTO_INCREMENT ,
nome_estilo varchar(30) NOT NULL);

create table nivel(
id_nivel int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_nivel varchar(30) NOT NULL);

create table turno(
id_turno int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_turno varchar(30) NOT NULL);

create table aluno(
id_aluno int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_aluno varchar(30) NOT NULL);

create table professor(
id_professor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_professor varchar(30) NOT NULL,
nacionalidade varchar(30));

create table sala(
id_sala int NOT NULL PRIMARY KEY AUTO_INCREMENT,
num_sala int  NOT NULL);

create table turma(
id_turma int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_turma varchar(30) NOT NULL,
estilo_musica int NOT NULL,
nivel int NOT NULL,
sala int NOT NULL,
turno int NOT NULL);

create table incricao(
id_turma int NOT NULL ,
id_aluno int  NOT NULL);

create table professor_estilo(
id_professor int NOT NULL ,
id_estilo int  NOT NULL);

create table pagamento(
id_pagamento int NOT NULL PRIMARY KEY AUTO_INCREMENT,
mes varchar(30) NOT NULL,
aluno int NOT NULL,
estilo int NOT NULL);


alter table pagamento add FOREIGN KEY (aluno ) REFERENCES aluno (id_aluno );
alter table pagamento add FOREIGN KEY (estilo ) REFERENCES estilo_musica (id_estilo );


insert into estilo_musica (id_estilo,nome_estilo) values ('1','Zouk'),('2','Semba'),('3','Tango'),('4','Valsa');
insert into nivel (id_nivel,nome_nivel) values ('1','N1'),('2','N2'),('3','N3'),('4','N4');
insert into turno (id_turno,nome_turno) values ('1','Manha'),('2','Noite');
insert into aluno (id_aluno,nome_aluno) values ('1','Victoria Ventura'),('2','Eva Brandao'),('3','Margarida Diamantino'),('4','Eduardo Dos Santos');
insert into professor (id_professor,nome_professor,nacionalidade) values ('1','Lucas Pazito','Brazileiro'),('2','Ana Francisco','Italiana'),('3','Rodrigo Ximenes','Angolano'),('4','Maria Philomene','Americana');
insert into sala (id_sala,num_sala) values ('1','1'),('2','2'),('3','3'),('4','4');
insert into turma (id_turma,nome_turma,estilo_musica,nivel,sala,turno) values ('1','Zk','1','1','2','1'),('2','SMB','2','2','3','1'),('3','VS','4','3','4','1'),('4','TG','3','4','1','3');
insert into incricao (id_turma,id_aluno) values ('1','1'),('1','2'),('2','3'),('4','4');
insert into professor_estilo (id_professor,id_estilo) values ('1','4'),('2','1'),('3','2'),('4','3');
insert into  pagamento (id_pagamento,mes,aluno,estilo) values ('4','Julho','4','1');

