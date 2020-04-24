## Página Inicial

[Home](../index.md)


## Procedures e Functions

### Sintaxe
```sql
--Para procedures
CREATE OR ALTER PROCEDURE procedure_name
AS
  --comandos SQL
GO;

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
  SELECT 'Hello World'
GO;

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
