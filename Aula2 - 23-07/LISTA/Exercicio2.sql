CREATE DATABASE Escritorio_PedroBonini;

USE Escritorio_PedroBonini;

CREATE TABLE Gerente (
    Codigo INT AUTO_INCREMENT,
    Nome VARCHAR(40),
    NumDepto INT,
    CONSTRAINT 
    PRIMARY KEY (Codigo)
);

CREATE TABLE Empregado (
    Codigo INT AUTO_INCREMENT,
    Nome VARCHAR(40),
    Endereco VARCHAR(30),
    Telefone VARCHAR(11),
    Data_Admissao date,
    NumDepto INT, 
    Salario INT,
    PRIMARY KEY (Codigo)
);

CREATE TABLE Projeto (
    Numero INT,
    Nome VARCHAR(40),
    Descricao VARCHAR(40),
    NumDepto INT,
    PRIMARY KEY (Numero)
)

CREATE TABLE Departamento (
    Numero INT,
    Nome VARCHAR(40),
    Localizacao VARCHAR(40),
    PRIMARY KEY (Numero)
)

CREATE TABLE Trabalha_Em (
    EmpCod INT,
    NumProj INT,
    Total_Horas_Semanais INT,
    PRIMARY KEY (EmpCod),
    PRIMARY KEY (NumProj),
    FOREIGN KEY (EmpCod) REFERENCES Empregado (Codigo),
    FOREIGN KEY (NumProj) REFERENCES Projeto (Numero)
)

/* INCOMPLETO */