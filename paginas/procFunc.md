## Página Inicial

[Home](../index.md)


## Procedures e Functions

### Sintaxe
```sql
--Para procedures
CREATE OR ALTER PROCEDURE procedure_name
AS
BEGIN
  --comandos SQL
END;

--Para functions
CREATE OR ALTER FUNCTION schema.function_name
RETURNS data_type
AS
BEGIN
  --comandos SQL
END;

--Para chamar uma procedure ou function
EXEC procedure_name

SELECT schema.function_name
```

### Exemplos
```sql
CREATE OR ALTER PROCEDURE helloWorldProc
AS
BEGIN
  SELECT 'Hello World'
END;

EXEC helloWorldProc;


CREATE OR ALTER FUNCTION dbo.helloWorldFunc()
RETURNS varchar(20)
AS 
BEGIN
  RETURN 'Hello World'
END;

SELECT dbo.helloWorldFunc();
```
### Usos
```sql
--Uma procedure para deletar professor
CREATE OR ALTER PROCEDURE pr_deletar_professor @pRgProfessor VARCHAR(10)
AS
BEGIN
	DELETE FROM PROFESSOR
	WHERE RG_PROFESSOR = @pRgProfessor
END
```
```sql
--Uma procedure para criar aluno
CREATE OR ALTER PROCEDURE pr_incluir_aluno @pIdAluno BIGINT, @pNomeAluno VARCHAR(50), @pRgAluno VARCHAR(10)
AS
BEGIN
	INSERT INTO ALUNO(ID_ALUNO, NOME_ALUNO, RG_ALUNO)
	VALUES (@pIdAluno, @pNomeAluno, @pRgAluno)
END
```
```sql
--Uma procedure para fazer consulta em uma tabela
CREATE OR ALTER PROCEDURE pr_consulta_materias_professor
AS
BEGIN
	SELECT * FROM PROFESSOR
	INNER JOIN MATERIA on MATERIA.ID_PROFESSOR = PROFESSOR.ID_PROFESSOR
END
```
```sql
CREATE OR ALTER PROCEDURE pr_consulta_notas_materia @pNomeMateria VARCHAR(50)
AS
BEGIN
	SELECT A.NOME_ALUNO AS ALUNOS, M.NOME_MATERIA AS MATERIAS, N.NOTA AS NOTAS, P.NOME_PROFESSOR AS PROFESSOR
	FROM ALUNO A INNER JOIN NOTA N ON N.ID_ALUNO = A.ID_ALUNO
	INNER JOIN MATERIA M ON N.ID_MATERIA = M.ID_MATERIA
	INNER JOIN PROFESSOR P ON M.ID_PROFESSOR = P.ID_PROFESSOR
	WHERE M.NOME_MATERIA = @pNomeMateria
END
```
