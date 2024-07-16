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


