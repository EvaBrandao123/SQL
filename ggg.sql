create database empresa;

use empresa;

create table funcionario (
idFuncionario int auto_increment not null,
nomeFuncionario varchar(20) not null, 
nomeProcesso varchar(30),
idCargo int,
PRIMARY KEY (`idFuncionario`),
UNIQUE KEY `nomefuncionario`(`nomeFuncionario`),

FOREIGN KEY (idCargo) REFERENCES cargo(id)
);

create table projectos (
idProjectos int auto_increment not null,
nomeProjecto varchar(50),
dataInicio date,
dataFim date, 
nomeProjectos int,
PRIMARY KEY (`idProjectos`),

);

create table cargo (
idCargo int auto_increment not null,
nomeCargo varchar(40),
PRIMARY KEY (`idCargo`),
UNIQUE KEY `nomeCargo`(`nomeCargo`)
);


create table venda (
idVenda int auto_increment not null,
nomeCliente varchar(50),
preco FLOAT,
PRIMARY KEY (`idVenda`),
idProjecto int,
FOREIGN KEY (idProjecto) REFERENCES projectos(id)
);

create table funcionario_Projecto(
idFuncionario int,
idProjecto int ,

FOREIGN KEY (idFuncionario) REFERENCES funcionario(id),
FOREIGN KEY (idProjecto) REFERENCES projectos(id)
);

alter table venda add  column idProjecto int;
alter table venda add FOREIGN KEY (idProjecto) REFERENCES projectos(id);

alter table funcionario add nomeFuncionario varchar(50) not null after idFuncionario;

drop table venda;

alter table funcionario drop nomeFuncionario;

insert into cargo (nomeCargo) values('Analista de Sistema'),
('Programador'),
('Web Designer')

;

alter table funcionario add column numeroProcesso int not null after nomeFuncionario;

insert into funcionario (nomeFuncionario,numeroProcesso,idCargo) values('Eva Linda Rosinho Brandão','65953','2'),
('Margarida Agostinho Diamantino','12231','1'),
('Victória Domingos Ventura','89761','3'),
('Paulina Manzambi Domingos Lelo','34689','1'),
('Glória Ikuma','2345','2'),
('Afonso Kemaladua','65423','3'),
('Nelson de Abreu','67893','2'),
('Teresa dos Santos','67653','3'),
('Alvaro Nsunda','67863','3'),
('Maria Nicolau','65423','1')
;

insert into projectos (nomeProjecto,dataInicio,dataFim) values('Gestão de Pizzaria','2002-03-04','2003-03-04'),
('Login e Cadastro','1983-01-26','1984-12-20'),
('Conversor de Moeda','2003-07-09','2004-09-07'),
('Quiz','1978-02-10','1999-10-25'),
('Nova Linguagem','2006-06-14','2008-04-19'),
('Calculadora','2007-08-17','2009-09-09'),
('Calculadora do amor','2020-05-18','2022-09-29'),
('Jogo da velha','1987-03-23','1989-02-19'),
('Memoria','2019-11-15','2021-11-15'),
('Sopa de Letras','2018-04-04','2020-10-10')
;


alter table venda modify idProjecto int not null;

alter table venda add column vendido char(3) not null after nomeCliente;

insert into venda (nomeCliente,vendido, preco, idProjecto) values('Eva Linda Rosinho Brandão','Sim','600.000','1'),
('Margarida Agostinho Diamantino','Sim','800.000','6'),
('Victória Domingos Ventura','Nâo','1000.000','2'),
('Paulina Manzambi Domingos Lelo','Sim','230.000.000','5'),
('Glória Ikuma','Não','900.000','3'),
('Nelson de Abreu','Sim','160.000.000','4'),
('Afonso Kemaladua','Não','200.000','7'),
('Maria Nicolau','Sim','908.000.000','10'),
('Alvaro Nsunda','Não','600.000','9'),
('Teresa dos Santos','Sim','120.000.000','8')
;

 update venda set vendido ='Não' where idVenda ='8';

alter table funcionario_projecto modify idProjecto int not null;
alter table funcionario_projecto modify idFuncionario int not null;

insert into funcionario_projecto (idFuncionario,idProjecto) values('1','1'),
('2','2'),
('3','4'),
('4','3'),
('6','8'),
('5','6'),
('7','9'),
('8','5'),
('10','7'),
('9','10')
;

SELECT nome_produto, nome_sub_categoria,nome_categoria FROM produto p inner join subCategoria s inner join categoria c on p.id_sub_categoria=s.id_sub_categoria And  c.id_categoria=s.id_categoria; 

select count(*),nome_produto from produto p inner join vendas v Sum(4) on p.id_produto=v.id_produto;



