/*
Criar banco de dados chamado IFSP

Criar uma tabela "Cidade"
    com os seguintes campos: id (PK), nome (NN), estado (NN)

Criar uma tabela "Cliente"
    com os seguintes campos: id (PK), nome (NN), email (NN),
    id da cidade (FK), endereco, numero, bairro
    e data de nascimento
*/

-- CRIAÇÃO DO BANCO DE DADOS    
CREATE DATABASE IFSP;
DEFAULT CHARSET = utf8;
DEFAULT COLLATE = utf8_general_ci;

-- SELECIONAR O BANCO DE DADOS
USE IFSP;

-- CRIAR A PRIMEIRA TABELA (CIDADE)
CREATE TABLE Cidade (
    id INT(10) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    nome VARCHAR(35) NOT NULL,
    estado VARCHAR(2) NOT NULL
);

-- CRIAR A SEGUNDA TABELA (CLIENTE)
CREATE TABLE Cliente (
    id INT(10) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    id_cidade INT(10),
    FOREIGN KEY (id_cidade) REFERENCES Cidade (id),
    nome VARCHAR(35) NOT NULL,
    email VARCHAR(25) NOT NULL,
    endereco VARCHAR(30),
    numero INT(5),
    bairro VARCHAR(20),
    data_nasc date
);

-- INSERIR DADOS NA TABELA CIDADE
INSERT INTO Cidade (nome, estado) VALUES ("Guararapes", "SP");
INSERT INTO Cidade (nome, estado) VALUES ("Birigui", "SP");
INSERT INTO Cidade (nome, estado) VALUES ("Penápolis", "SP");

INSERT INTO Cliente (nome, email, id_cidade, endereco, numero, bairro, data_nasc)
VALUES ("Pedro Bonini", "pedro@gmail.com", 2, "João Cernach", 543, "Centro", "2005/04/19");

INSERT INTO Cliente (nome, email, id_cidade, endereco, numero, bairro, data_nasc)
VALUES ("Dudu Santos", "dudu@gmail.com", 2, "Rua 4", 147, "Inferno", "2005/07/05");

-- MOSTRAR CONTEÚDO DA TABELA
SELECT * FROM Cliente;
SELECT * FROM Cidade;

-- ATUALIZAÇÃO DE CAMPOS
UPDATE  Cidade SET 
        nome = "São Paulo",
        estado = "SP"
WHERE id = 1;

-- DELETAR REGISTRO DA TABELA
DELETE FROM Cidade  
    WHERE id = 1;
