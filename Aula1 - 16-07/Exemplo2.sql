CREATE DATABASE Ex2;

USE Ex2;

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

-- OUUUUU
/*
INSERT INTO caixa_postal 
    (codigo_postal, localidade)
VALUES
    (17830000, 'Adamantina'),
    (16204278, 'Birigui'),
    (17800000, 'Flórida Paulista');
*/

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

CREATE TABLE aluno (
    matricula int not null auto_increment,
    nome varchar(40),
    dt_nascimento date,
    cidade varchar(30) default 'Birigui',
    primary key(matricula)
);

INSERT INTO aluno
    (matricula, nome, dt_nascimento, cidade)
VALUES
    (default, 'Maria Fernanda Oliveira', '1993-12-24', 'Osasco'),
    (default, 'José Luiz Almeida', '2000-10-28', default);

INSERT INTO aluno
    (nome, dt_nascimento)
VALUES 
    ('Fernando Rodrigues', '1988-4-30');




