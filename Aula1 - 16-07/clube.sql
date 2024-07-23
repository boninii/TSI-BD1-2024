CREATE DATABASE clube;

USE clube;

CREATE TABLE Socio (
    Codigo INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(60) NOT NULL,
    Endereco VARCHAR(50),
    Cidade VARCHAR(30) default 'Birigui',
    Estado VARCHAR(2)  default 'SP',
    Cep VARCHAR(9),
    Fone VARCHAR(13),
    data date NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE Dependente (
    Sequencial INT NOT NULL AUTO_INCREMENT,
    Codigo_socio INT NOT NULL,
    Nome VARCHAR(60) NOT NULL,
    Parentesco VARCHAR(15),
    Data_nasc date,
    PRIMARY KEY (sequencial),
    FOREIGN KEY (codigo_socio) REFERENCES Socio (codigo)
);

INSERT  INTO Socio (Nome, Endereco, Cidade, Estado, Cep, Fone, data) 
        VALUES ("Pedro", "Rua A", "Birigiu", "SP", "16.200-001", "(18)99795-4012", "2024/07/23");

INSERT  INTO Socio (Nome, Endereco, Cidade, Estado, Cep, Fone, data) 
        VALUES ("Dudu", "Rua B", "Guarrapes", "SP", "16.200-002", "(18)99795-4012", "2024/07/23");

INSERT  INTO Socio (Nome, Endereco, Cidade, Estado, Cep, Fone, data) 
        VALUES ("Luan", "Rua C", "Plis city", "SP", "16.200-003", "(18)99795-4012", "2024/07/23");


INSERT  INTO Dependente (Codigo_socio, Nome, Parentesco, Data_nasc) 
        VALUES (1, "Filho 1", "BLA", "BLE");

INSERT  INTO Dependente (Codigo_socio, Nome, Parentesco, Data_nasc) 
        VALUES (2, "Filho 2", "BLI", "BLO");

