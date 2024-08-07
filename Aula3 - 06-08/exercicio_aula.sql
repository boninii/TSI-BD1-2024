create database aula3_BD1;
use aula3_BD1;

create table curso (
  id int not null auto_increment primary key,
  nome varchar(50) not null,
  descricao varchar(80),
  ano int,
  carga_horaria int );
  
create table aluno(
   matricula int not null auto_increment,
   nome varchar(40),
   dt_nascimento date,
   cidade varchar(30) default 'Birigui',
   id_curso int,
   primary key(matricula),
   foreign key(id_curso) references curso(id)
   );
   
   insert into curso(nome, descricao, ano, carga_horaria)
   values ('Banco de Dados', 'curso usando MySQL', 2022, 80),
           ('Algoritmos e Lógica de Programação', 'curso usando linguagem C', 2021, 100),
           ('Estrutura de Dados', null, 2022, 45),
           ('Banco de Dados II', 'curso usando Oracle', 2022, 87),
           ('Rede de Computadores', 'curso voltado para a prática de configuração de redes', 2022, 150),
           ('POO', 'Programação Orientada a Objetos usando C#', 2021, 50),
           ('Rede de Computadores', 'curso voltado para a prática de configuração de redes', 2022, 150),
           ('Sistemas Operacionais', null, 2022, 30),
           ('Balé', null, 2022, 200),
           ('Jazz', null, 2021, 300),
           ('Futsal', null, 2022, 220),
           ('Judô', null, 2021, 180),
           ('Karatê', null, 2022, 120),
           ('Futebol', null, 2021, 190),
           ('Culinária Básica', 'Elaboração de comidas triviais', 2021, 100),
           ('Culinária Avançada', 'Elaboração de comidas sofisticadas', 2021, 140),
           ('Google Docs', 'Curso completo do editor', 2023, 30),
           ('Google Planilhas', 'Curso completo de planilhas', 2023, 35),
           ('Pintura Digital', 'Curso voltado para a tendência moderna', 2023, 100);
   
    
  insert into aluno(matricula, nome, dt_nascimento, cidade, id_curso)
  values(default, 'Maria Fernanda Oliveira', '1993-12-24', 'Osasco',1);
  
  insert into aluno(matricula, nome, dt_nascimento, cidade, id_curso)
  values(default, 'José Luiz Almeida', '2000-10-28', default, 1);
  
  insert into aluno(nome, dt_nascimento, id_curso)
  values('Fernando Rodrigues', '1988-4-30', 2),
		('Ricardo Anastácio Silva', '2000-6-15', 3),
        ('Beatriz Camargo', '2005-3-23', 4),
        ('Mariana Fonseca Maia', '1999-12-13', 3),
        ('André Marques', '1999-11-11', 3),
        ('Paloma Duarte', '1992-1-25', 3),
        ('Paola Oliveira', '1992-1-25', 1),
        ('Felipe Melo', '1992-10-28', 1),
        ('Julio Cesar Mendonça', '1988-09-30', 1),
        ('Carmem Miranda', '1970-05-18', null),
        ('Fábio Junior', '1965-6-2', null),
        ('Luan Santana', '1998-10-21', 2),
        ('Romero Brito', '1980-11-17', 19),
        ('Marieta Severo', '1960-04-05', null);
-- 1        
SELECT * FROM curso;
-- 2
SELECT * FROM aluno;
-- 3
SELECT nome, ano FROM curso;
-- 4 
SELECT nome, carga_horaria, descricao FROM curso WHERE carga_horaria > 100;
-- 5
SELECT id, nome, carga_horaria FROM curso WHERE ano = '2021' AND carga_horaria <= 100;
-- 6
SELECT * FROM curso WHERE descricao is NULL;
-- 7 
SELECT * FROM curso WHERE carga_horaria between 50 and 150;
-- 8
SELECT nome, matricula FROM aluno WHERE matricula IN(2, 5, 8);
-- 9
SELECT * FROM curso WHERE nome like '%dado%';
-- 10
SELECT * FROM aluno WHERE nome like '_a%';
-- 11
SELECT nome, matricula FROM aluno ORDER BY nome;
-- 12 
SELECT * FROM curso GROUP BY nome DESC;
-- 13
SELECT nome, ano FROM curso WHERE ano BETWEEN 2022 AND 2023 
	ORDER BY ano DESC, nome ASC;
-- 14
SELECT nome, cidade FROM aluno WHERE id_curso IS NULL;
-- 15
SELECT * FROM aluno WHERE nome LIKE '%o' AND id_curso IN (1, 3, 6, 8);
-- 16
SELECT a.nome as NomeAluno, c.nome as NomeCurso
	FROM aluno a, curso c
	WHERE a.id_curso = c.id
	ORDER BY a.nome, c.nome;
-- 17
SELECT nome, carga_horaria

