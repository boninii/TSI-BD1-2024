CREATE DATABASE clube;

USE clube;

CREATE TABLE Socio (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    endereco VARCHAR(50),
    cidade VARCHAR(30) default 'Birigui',
    estado VARCHAR(2)  default 'SP',
    cep VARCHAR(9),
    fone VARCHAR(13),
    data date NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE Dependete (
    sequencial INT NOT NULL AUTO_INCREMENT,
    codigo_socio INT NOT NULL,
    nome VARCHAR(60) NOT NULL,
    parentesco VARCHAR(15),
    data_nasc date,
    PRIMARY KEY (sequencial),
    FOREIGN KEY (codigo_socio) REFERENCES Socio (codigo)
);