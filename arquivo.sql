/*1/R: A diferença é que  base de dados é um simples repositório de informação relacionado com determinado assunto ou finalidade, ou seja, é uma colecção de dados e um sistema de gestão de bases de dados ou DBMS é fundamentalmente um software de sistema para criar e administrar bases de dados.
a)/R:Hierárquico: é um registro é uma coleção de campos, cada qual contendo apenas um valor de dados ou uma ligação é uma associação entre exatamente dois registros
Rede: é um tipo de modelo de banco de dados em que arquivos ou registros de vários membros podem ser vinculados a arquivos de vários proprietários e vice-versa.
Relacional:são um tipo de base de dados que armazenam e organizam pontos de dados com relações definidas para acesso rápido. ou são os dados são organizados em tabelas que contêm informações sobre cada.
Orientado a objetos:é um banco de dados em que, no modelo lógico, as informa-ções são armazenadas na forma de objetos, e só podem ser manipuladas através de métodos definidos pela classe instanciada por tais objetos

2/R:Dependência Parcial Uma dependência funcional é parcial quando os atributos não-chave não dependem funcionalmente de toda a PK quando esta for composta. Ex:

Dependência transitiva em um banco de dados é um relacionamento indireto entre valores na mesma tabela que causa uma dependência funcional. 

*/
CREATE DATABASE cantina;
 
 USE cantina;
 
CREATE TABLE Cliente(
id_cliente  INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
PRIMARY KEY (`id_cliente`)
);

 
CREATE TABLE Categoria(
id_categoria  INT AUTO_INCREMENT NOT NULL,
nome_categoria VARCHAR(50) NOT NULL,
PRIMARY KEY (`id_categoria`)
);

CREATE TABLE SubCategoria(
id_sub_categoria INT AUTO_INCREMENT NOT NULL,
nome_sub_categoria VARCHAR(50) NOT NULL,
id_categoria INT,
PRIMARY KEY (`id_sub_categoria`),
FOREIGN KEY (id_categoria) REFERENCES Categoria(id)

);

CREATE TABLE Produto(
id_produto INT AUTO_INCREMENT NOT NULL,
nome_produto VARCHAR(50) NOT NULL,
preco FLOAT,
quantidade INT,
id_sub_categoria INT,
PRIMARY KEY (`id_produto`),
FOREIGN KEY (id_sub_categoria) REFERENCES SubCategoria(id)
); 

CREATE TABLE Fornecedor(
    id_fornecedor  INT AUTO_INCREMENT NOT NULL,
    nome_fornecedor VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id_fornecedor`)
     );

CREATE TABLE Fornecedor_produto(
id_produto INT,
id_fornecedor INT,

PRIMARY KEY (id_produto,id_fornecedor),

FOREIGN KEY (id_produto) REFERENCES Produto(id),
FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id)
);

CREATE TABLE Funcionario(
id_funcionario INT AUTO_INCREMENT NOT NULL,
nome_funcionario VARCHAR(50) NOT NULL,
PRIMARY KEY (`id_funcionario`)

); 

CREATE TABLE Vendas(
id_venda INT AUTO_INCREMENT NOT NULL,
id_produto INT,
id_funcionario INT,
id_cliente INT,
PRIMARY KEY (`id_venda`),
FOREIGN KEY (id_produto) REFERENCES Produto(id),
FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id),
FOREIGN KEY (id_cliente) REFERENCES Cliente(id)

); 


INSERT INTO Cliente (nome) VALUES('Eva Brandão'),
('Victória Ventura'),
('Margarida Diamantino'),
('Paulina Lelo'),
('Glória Ikuma')
;

INSERT INTO Funcionario (nome_funcionario) VALUES('Eva Brandão'),
('Victória Ventura'),
('Margarida Diamantino'),
('Paulina Lelo'),
('Glória Ikuma')

;

INSERT INTO Fornecedor (nome_fornecedor) VALUES('Fazenda Girassol'),
('Refiangro'),
('Shein'),
('Zara'),
('Parfois')

;

INSERT INTO Categoria (nome_categoria) VALUES('Bebidas'),
('Frutas'),
('Roupa')
;
update Categoria set nome_categoria ='Acessorios' where id_categoria ='5';
UPDATE Categoria set nome_categoria = 'Roupas' where id_categoria = '3';
UPDATE Categoria set nome_categoria ='Calçados' where id_categoria = '4';


INSERT INTO SubCategoria (nome_sub_categoria,id_categoria) VALUES('Gasosa',1),
('Sumo',1),
('secos',2),
('fria',3)
;

INSERT INTO Produto(nome_produto, preco,quantidade, id_sub_categoria) VALUES('Sumo de Pera',678.65,12,2),
('Coca-Cola',500.25,120,1),
('Goiaba',1000,40,3),
('Casaco',1500,30,4),
('Fanta',2500.90,10,1)
;


INSERT INTO Vendas(id_produto,id_funcionario,id_cliente) VALUES(1,1,1),
(2,2,3),
(2,2,2),
(2,4,5),
(5,5,4)
;


INSERT INTO Fornecedor_produto(id_produto,id_fornecedor) VALUES(1,2),
(2,2),
(3,1),
(4,4),
(5,2)
;

SELECT preco, nome_produto FROM produto GROUP BY preco ORDER BY preco DESC limit 1;
SELECT preco, nome_produto FROM produto GROUP BY preco ORDER BY preco ASC limit 1;

SELECT COUNT(*) AS quantidade, nome_fornecedor FROM fornecedor_produto p inner join fornecedor f ON p.id_fornecedor= f.id_fornecedor
GROUP BY p.id_fornecedor  HAVING quantidade > 1;

SELECT COUNT(*) AS quantidade, nome_categoria FROM subCategoria s inner join categoria c ON s.id_categoria= c.id_categoria
GROUP BY s.id_categoria  HAVING quantidade > 1;