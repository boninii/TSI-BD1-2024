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
SELECT c.nome as Nome_Curso, c.carga_horaria as Carga_Horaria_Curso, a.nome as Nome_Aluno, a.cidade as CidadeAluno
	FROM curso c
	INNER JOIN aluno a
	ON a.id_curso = c.id
	WHERE carga_horaria = 100;
-- 18
SELECT c.nome as Nome_Curso, c.descricao as Descricao_Curso, a.nome as Nome_Aluno, a.dt_nascimento as Data_Nascimento_Aluno
	FROM aluno a
	INNER JOIN curso c
	ON a.id_curso = c.id
	WHERE a.nome like '%r%'
	ORDER BY matricula DESC;
-- 19
SELECT count(*) FROM curso;
-- 20
SELECT a.cidade FROM aluno a GROUP BY a.cidade;
-- 21
SELECT c.carga_horaria
	FROM curso c
	GROUP BY c.carga_horaria;
-- 22

