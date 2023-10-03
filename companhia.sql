CREATE DATABASE companhia_de_seguro;

USE companhia_de_seguro;


CREATE TABLE Angencia(
id_angencia INT AUTO_INCREMENT NOT NULL,
nome_angencia VARCHAR(50) NOT NULL,
PRIMARY KEY (`id_angencia`)
);

CREATE TABLE Cliente(
id_cliente  INT AUTO_INCREMENT NOT NULL,
nome_cliente VARCHAR(50) NOT NULL,
numero_carta_condução VARCHAR(50) NOT NULL,
id_angencia INT,
PRIMARY KEY (`id_cliente`),

FOREIGN KEY (id_angencia) REFERENCES Angencia(id)

);

CREATE TABLE Marca(
id_marca INT AUTO_INCREMENT NOT NULL,
nome_marca VARCHAR(50) NOT NULL,
PRIMARY KEY (`id_marca`)
);

CREATE TABLE Viatura(
id_viatura  INT AUTO_INCREMENT NOT NULL,
matricula VARCHAR(50) NOT NULL,
id_marca INT,
id_cliente INT,
PRIMARY KEY (`id_viatura`),

FOREIGN KEY (id_marca) REFERENCES Marca(id),
FOREIGN KEY (id_cliente) REFERENCES Cliente(id)

);

CREATE TABLE Modelo(
id_modelo INT AUTO_INCREMENT NOT NULL,
nome_modelo VARCHAR(20) NOT NULL,
PRIMARY KEY (`id_modelo`),
id_marca INT,

FOREIGN KEY (id_marca) REFERENCES Marca(id)
);

INSERT INTO Cliente (nome_cliente,numero_carta_condução,id_angencia) VALUES('Lucas Pazito','7883726545',2),
('Suzarith Dos Santos','6326535445',3),
('Maria Nicolau','4214142545',6),
('Judson Paiva','7842145901',4),
('Ferreira Uemba','5432198765',5),
('João Vieira','6543126541',1)

;

INSERT INTO Marca (nome_marca) VALUES('TESLA'),
('FERRARI'),
('FORD'),
('BMW'),
('VOLVO'),
('MERCEDES')

;

INSERT INTO Modelo (nome_modelo,id_marca) VALUES('Model X',1),
('Portofino',2),
('Mustang',3),
('iX3',4),
('Xc40',5),
('Classe T',6)

;

INSERT INTO Angencia (nome_angencia) VALUES('Mercedes-Benz-trucks'),
('Tesla cars'),
('Fast Ferrari'),
('Mercedes'),
('Volvo'),
('Ford')

;

INSERT INTO Viatura (matricula,id_marca,id_cliente) VALUES('HDE-2003-678',1,1),
('MVA-2394-9843',2,2),
('HAD-2890-2561',3,3),
('ISZ-3456-9034',4,4),
('XCQ-9380-8436',5,5),
('MVA-9372-0376',6,6)

;

SELECT nome_cliente, numero_carta_condução FROM Cliente;
