CREATE DATABASE correios;

USE correios;


-- TABELA CAIXA_POSTAL  --

CREATE TABLE caixa_postal (
    codigo_postal VARCHAR(8) NOT NULL,
    localidade VARCHAR(45) NOT NULL,
    PRIMARY KEY (codigo_postal)
);

INSERT INTO caixa_postal 
    (codigo_postal, localidade)
VALUES 
    (17830000, 'Adamantina');

INSERT INTO caixa_postal 
    (codigo_postal, localidade)
VALUES 
    (16204278, 'Birigui');

INSERT INTO caixa_postal 
    (codigo_postal, localidade)
VALUES 
    (17800000, 'Flórida Paulista');


-- TABELA PESSOA --

CREATE TABLE pessoa (
    codigo INT NOT NULL AUTO_INCREMENT,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    nome VARCHAR(60) NOT NULL,
    idade INTEGER CHECK (idade > 0),
    codigo_postal VARCHAR(8) NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_postal) REFERENCES caixa_postal (codigo_postal)
);

INSERT INTO pessoa
    (nome, cpf, idade, codigo_postal)
VALUES  
    ('José benedito da Silva', 10044455500, 39, 17830000),
    ('Maria Helena de Souza', 20044455500, 35, 17800000),
    ('Cristiane Pereira', 30044455500, 25, 16204278);


-- TABELA TELEFONE --

CREATE TABLE telefone (
    codigo INTEGER NOT NULL,
    tel_residencial VARCHAR(15),
    tel_celular VARCHAR(15),
    tel_comercial VARCHAR(15),
    tel_recado VARCHAR(15) NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo) REFERENCES pessoa (codigo)
);

INSERT INTO telefone 
    (codigo, tel_residencial, tel_celular, tel_comercial, tel_recado)
VALUES
    (1, NULL, '(99)99999-9999', '(99)99999-9999', '(99)99999-9999'),
    (2, '(99)99999-9999', NULL, '(99)99999-9999', '(99)99999-9999'),
    (3, '(99)99999-9999', '(99)99999-9999', NULL, '(99)99999-9999');
