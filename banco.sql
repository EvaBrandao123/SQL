create database escola_primaria;


use escola_primaria;

create table professor (
idprof int auto_increment not null,
nome varchar (30) not null,
sexo enum('M','F'),
data_nascimento date,
PRIMARY KEY (`idprof`)

);

create table endereco (
idEndereco int auto_increment not null,
provincia varchar(20),
municipio varchar(30),
bairro varchar(30),
rua varchar(30),
numeroCasa int,
PRIMARY KEY (`idEndereco`)

);

alter table aluno add column alTurma int;
alter table aluno add FOREIGN KEY (alTurma) REFERENCES turma(idTurma);


create table disciplina (
idDisciplina int auto_increment,
nome varchar(30),
PRIMARY KEY (`idDisciplina`)

);

alter 
insert into Professor values( 

create table aluno (
idAluno int auto_increment,
nome varchar(30),
sexo enum('M','F'),
PRIMARY KEY (`idAluno`)

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
PRIMARY KEY (`idTurma`)
);

create table prova (
idProva int auto_increment not null,
valor float,
PRIMARY KEY (`idProva`)
);

insert into endereco(provincia,municipio,bairro,rua,numeroCasa) values
('1','Luanda','Cacuaco','Vidrul','Oliveira','234'), 
('Luanda','Viana','Capalanga','Castro','567'),
('Luanda','Rocha','Rocha Pinto ','Castro','567'),
('Luanda','Talatona','Patriota','Castro','5087'),
('Luanda','Belas','Benfica','Deolinda Rodrigues','897'),
('Luanda','Grafanil','Capalanga','Castro','977'),
('Huambo','Viana','Capalanga','Cuiodado','1337'),
('Zaire','Banza Congo','Ciniua','Castro','3467'),
('Namibe','Viana','Capalanga','Castro','5077'),
('Luanda','Viana','Egoli','Castro','567');


 insert into disciplina values('1','Matemática'), 
('2','Projecto Tecnologico'),
('3','Tecnicas e Linguagem de Programação'),
('4','Física'),
('5','Tecnicas de Informação e Comunicação'),
('6','Desenho Tecnico'),
('7','Empreendedorismo'), 
('8','Química'),
('9','Lingua Portuguesa'),
('10','Educação Física');

alter table aluno add  column idTurma int not null;
alter table aluno add FOREIGN KEY (idTurma) REFERENCES turma(id);


insert into turma(nome,sala) values('IG12A','64'),
('IG12B','65'),
('IG11A','45'),
('IG11B','56'),
('IG10A','72'),
('IG10B','67'),
('II12A','68'),
('II12B','69'),
('II11A','70'),
('II11B','60'),
('II10A','61'),
('II10B','62')
;


alter table professor_turma add FOREIGN KEY (idprof) REFERENCES professor(id);
alter table professor_turma add FOREIGN KEY (idTurma) REFERENCES professor(id);


alter table professor_turma modify idTurma int not null;
alter table professor_turma modify idprof int not null;

insert into aluno(nome,sexo,idTurma) values('Eva Linda Rosinho Brandão', 'F', '2'),
('Margarida Agostinho Diamantio', 'F', '2'),
('Victória Domigos Ventura', 'F', '1'),
('Glória Ikuma', 'F', '2'),
('Paulina Manzami Domigos Lelo', 'F', '1'),
('Nelson de Abreu', 'M', '7'),
('Afonso Kemalandua', 'M', '3'),
('Pedro João', 'M', '4'),
('Afonso David', 'M', '8'),
('Fulano de Tali', 'F', '2')
;

alter table professor_disciplina add FOREIGN KEY (idDisciplina) REFERENCES disciplina(id);
alter table professor_disciplina add FOREIGN KEY (idprof) REFERENCES professor(id);

alter  table professor_turma add FOREIGN KEY (idTurma) REFERENCES turma(id);

insert into prova(valor,idDisciplina,idAluno) values('12','10','9'),
('18.7','2','1'),
('13','1','5'),
('13.5','6','3'),
('05','5','4'),
('09','4','2'),
('10','3','6'),
('01','7','7'),
('3.6','9','8'),
('15.9','8','2')
;

alter table prova add  column idDisciplina int not null;
alter table prova add FOREIGN KEY (idDisciplina) REFERENCES disciplina(id);

alter table prova add  column idAluno int not null;
alter table prova add FOREIGN KEY (idAluno) REFERENCES aluno(id);

insert into professor_turma (idprof,idTurma) values('1','1'),
('2','3'),
('3','9'),
('4','4'),
('5','2'),
('6','5'),
('7','6'),
('8','8'),
('9','7'),
('10','10')
;

 insert into professor_disciplina (idprof,idDisciplina) values('1','3'),
    -> ('2','7'),
    -> ('3','5'),
    -> ('4','1'),
    -> ('5','4'),
    -> ('6','10'),
    -> ('7','2'),
    -> ('8','8'),
    -> ('9','9'),
    -> ('10','6')
    -> ;

insert into professor(nome,sexo,data_nascimento) values('Lucas Pazito','M','1989-07-16'),
('Alvaro Monteiro','M','1996-12-06'),
('Silvio Santiago','M','1987-10-24'),
('Sebastião Freitas','M','1978-09-12'),
('Ferreira Uemba','M','2002-03-23'),
('Maria Nicolau','F','1975-05-10'),
('Rosa Alexadrina','F','1945-04-18'),
('Suzarith dos Santos','F','1967-01-09'),
('Aercio Maria','M','2001-08-13'),
('Teresa dos Santos','F','1979-10-30')
;




