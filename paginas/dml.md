## Página Inicial

[Home](../index.md)


## Data Manipulation Language

### Sintaxe

```sql
INSERT INTO table_name(column1, column2, ...)
VALUES (value1, value2, ...)

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

DELETE FROM table_name
WHERE condition;
```
### Exemplos
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
