create database escola;


use escola;

create table professor (
idprof int auto_increment not null,
nome varchar (30) not null,
sexo enum('M','F'),
data_nascimento date,
PRIMARY KEY (`idprof`),
UNIQUE  KEY `nome` (`nome`)
);

create table endereco (
idEndereco int auto_increment not null,
provincia varchar(20),
municipio varchar(30),
bairro varchar(30),
rua varchar(30),
num_casa int,
PRIMARY KEY (`idEndereco`),
UNIQUE KEY `num_casa` (`num_casa`)
);

alter table aluno add column alTurma int;
alter table aluno add FOREIGN KEY (alTurma) REFERENCES turma(idTurma);


create table disciplina (
idDisciplina int auto_increment,
nome varchar(30),
PRIMARY KEY (`idDisciplina`),
UNIQUE  KEY `nome` (`nome`)
);

insert into Professor values( 

create table aluno (
idAluno int auto_increment,
nome varchar(30),
sexo enum('M','F'),
PRIMARY KEY (`idAluno`),
UNIQUE  KEY `nome` (`nome`)
);

create table professor_turma (
idprof int ,
idTurma int
);

create table professor_disciplina (
idprof int  not null,
idDisciplina int not null
);

alter table turma modify idTurma int auto_increment not null;
alter table aluno modify nome varchar(30) not null;




create table turma (
idTurma int auto_increment,
nome varchar(30) not null,
sala int ,
PRIMARY KEY (`idTurma`),
UNIQUE  KEY `nome` (`nome`)
);

create table prova (
idProva int auto_increment not null,
valor float,
PRIMARY KEY (`idProva`)
);

insert into professor values('1','Eva Brandao', 'F', '2004-09-07');

//queries para achar o nome a categoria e subcategoria de algum produto do banco de dados cantina//

SELECT nome_produto, nome_sub_categoria,nome_categoria FROM produto p inner join subCategoria s inner join categoria c on p.id_sub_categoria=s.id_sub_categoria And  c.id_categoria=s.id_categoria; 





