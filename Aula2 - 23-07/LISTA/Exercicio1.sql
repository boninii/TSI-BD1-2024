CREATE DATABASE Mercado_PedroBonini;

USE Mercado_PedroBonini;

CREATE TABLE Fornecedor (
    Codigo_fornec INT NOT NULL,
    Nome VARCHAR(40) NOT NULL,
    Fone VARCHAR(20),
    Endereco VARCHAR(40),
    Cidade VARCHAR(30) default 'Birigui',
    Estado VARCHAR(30) default 'SP',
    PRIMARY KEY (Codigo_fornec)
);


CREATE TABLE Produto (
    Cod_produto INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL,
    Codigo_fornecedor INT NOT NULL,
    preco_unitario DECIMAL(10,2),
    qtde INT,
    PRIMARY KEY (Cod_produto),
    FOREIGN KEY (Codigo_fornecedor) REFERENCES Fornecedor (Codigo_fornec)
);




INSERT INTO Fornecedor (Codigo_fornec, Nome, Fone, Endereco, Cidade, Estado) 
    VALUES (344, "Alimentos do Bem", "3345666", "Rua Fundadores", "São Paulo", "SP");

INSERT INTO Fornecedor (Codigo_fornec, Nome, Fone, Endereco, Cidade, Estado) 
    VALUES (78, "Comidas", "8664545", "Av dos Estados", "Araçatuba", "SP");

INSERT INTO Fornecedor (Codigo_fornec, Nome, Fone, Endereco, Cidade, Estado) 
    VALUES (952, "Rango Quente", "1327790", "Rua Aclimação", "Birigui", "SP");

INSERT INTO Fornecedor (Codigo_fornec, Nome, Fone, Endereco, Cidade, Estado) 
    VALUES (111, "Quentinhas", "5644234", "Rua Teste", "Belo Horizonte", "MG");




INSERT INTO Produto (Nome, Codigo_fornecedor, preco_unitario, qtde)
    VALUES ("arroz", 344, 20, 55);

INSERT INTO Produto (Nome, Codigo_fornecedor, preco_unitario, qtde)
    VALUES ("feijao", 78, 16.5, 60);

INSERT INTO Produto (Nome, Codigo_fornecedor, preco_unitario, qtde)
    VALUES ("macarrao", 78, 5, 15);

INSERT INTO Produto (Nome, Codigo_fornecedor, preco_unitario, qtde)
    VALUES ("leite", 344, 3.5, 20);

INSERT INTO Produto (Nome, Codigo_fornecedor, preco_unitario, qtde)
    VALUES ("farinha", 952, 5, 8);




UPDATE Fornecedor
    SET Nome = 'Foods'
    WHERE Nome = 'Comidas';



ALTER TABLE Fornecedor ADD email VARCHAR(30);



UPDATE Fornecedor
    SET email = 'alimentosdobem@gmail.com'
    WHERE Codigo_fornec = 344;

UPDATE Fornecedor
    SET email = 'quentinhas@gmail.com'
    WHERE Codigo_fornec = 111;  



ALTER TABLE Fornecedor DROP COLUMN Endereco;


UPDATE Produto 
    SET qtde = '15'
    WHERE nome = 'arroz';


-- A
SELECT * FROM Fornecedor;
-- B
SELECT Nome FROM Produto 'Nome dos Produtos' WHERE preco_unitario > 15; 
-- C
SELECT Nome, Codigo_fornec FROM Fornecedor WHERE Estado = 'SP';
-- D
SELECT Nome 'Nome Produto', preco_unitario * qtde 'Total' FROM Produto;
-- E
SELECT Cod_Produto 'Codigo Produto', Nome 'Nome Produto' FROM Produto WHERE Codigo_fornecedor = '78';
-- F
SELECT Codigo_fornec 'Codigo Fornecedor', Nome 'Nome Fornecedor' FROM Fornecedor WHERE Codigo_fornec < 100 AND Estado = 'SP';   
-- G
UPDATE Produto 
    SET nome = 'leite desnatado'
    WHERE nome = 'leite';
-- H
UPDATE Produto 
    SET qtde = qtde - 1;
-- I
ALTER TABLE Fornecedor ADD pais VARCHAR(30);
-- J
UPDATE Fornecedor 
    SET pais = 'Brasil';
-- K
INSERT INTO Fornecedor (Codigo_fornec, Nome, Fone, Cidade, Estado) 
    VALUES (69, "Pedrão", "9987548", "New Iorque", "NY");
-- L
DELETE FROM Fornecedor WHERE Estado <> 'SP';



