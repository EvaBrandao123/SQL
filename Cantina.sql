
create database cantina;

use cantina;

create table categoria(
id_categoria int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_categoria varchar(50) NOT NULL);

create table sub_categoria(
id_subCategoria int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_subCategoria varchar(50) NOT NULL,
categoria int );

create table produto(
id_produto int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_produto varchar(50) NOT NULL,
preco FLOAT,
sub_categoria int );

create table fornecedor(
id_fornecedor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_fornecedor varchar(50) NOT NULL );

create table fornecedor_produto (
id_fornecedor int NOT NULL,
id_produto int NOT NULL);

create table venda(
id_venda int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_venda varchar(50) NOT NULL,
cliente int ,
produto int);

create table cliente(
id_cliente int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_cliente varchar(50) NOT NULL );

create table funcionario(
id_funcionario int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_funcionario varchar(50) NOT NULL ,
venda int);



alter table venda add FOREIGN KEY (funcionario) REFERENCES funcionario(id_funcionario);

alter table produto add column quantidade int after preco;
alter table venda add  funcionario int NOT NULL ;




insert into categoria (id_categoria,nome_categoria) values ('1','Bebidas'),('2','Doces'),('3','Maquilhagem'),('4','Frescos'),('5','Produtos_cabelos');
insert into sub_categoria (id_subCategoria,nome_subCategoria,categoria) values ('1','Agua','1'),('2','Gasosa','1'),('3','Sumo','1'),('4','Skala','5'),('5','Bolachas','2');
insert into produto (id_produto,nome_produto,preco,quantidade,sub_categoria) values ('1','Pura','100','10','1'), ('2','Perla','100','15','1'), ('3','Aguavilhosa','100','10','1'), ('4','Shampo','1500','15','4'), ('5','Lulu','50','5','3');
insert into fornecedor (id_fornecedor,nome_fornecedor) values ('1','Plurifiltro'),('2','Kero'),('3','Anderson make-up'),('4','Casa dos frescos'),('5','Mundo das crespas');
insert into fornecedor_produto (id_fornecedor,id_produto) values ('1','1'),('1','2'),('1','3'),('5','4'),('2','5');
insert into venda (id_venda,vendido,cliente,produto,funcionario) values ('1','Sim','1','1','1'),('2','Sim','2','1','1'),('4','Sim','3','2','1'),('3','Sim','4','3','1'),('5','Nao','5','1','5');
insert into cliente (id_cliente,nome_cliente) values ('1','Maria Braga'),('2','Lucas Pazito'),('3','Fabio Dos Santos'),('4','Manuel Dembo'),('5','Jandira Silva');
insert into funcionario (id_funcionario,nome_funcionario) values ('1','Maria Jorge'), ('2','Marcelo Matias'), ('3','Joao Joao'),('4','Carmen Camila'),('5','Josemar Silva');




