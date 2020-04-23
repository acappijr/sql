## Página Inicial

[Home](../index.md)


## Data Manipulation Language
### 1.0

```sql
SELECT *
FROM professor

SELECT nome_professor
FROM professor

SELECT rg_professor
FROM professor
```
```sql
-- Inserir os dados
INSERT INTO professor(
	id_professor,
	nome_professor,
	rg_professor,
	endereco_professor
)
VALUES(
	1,
	'FERNANDO SILVA',
	'0129384853',
	'Rua Morais Silva, 100'
),(
	2,
	'LUIZ',
	'1234567890',
	'Rua de Baixo, 200'
);
```
```sql
SELECT *
FROM professor;

SELECT *
INTO professor1
FROM professor;
```
