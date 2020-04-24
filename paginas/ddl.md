## Página Inicial

[Home](../index.md)


## Data Definition Language

### Sintaxe

```sql
CREATE DATABASE database_name

CREATE TABLE table_name(
  column1 datatype,
  column2 datatype,
  column3 datatype,
  ...
);
```
### Exemplos
```sql
CREATE DATABASE ESCOLA

CREATE TABLE pessoa(
  nome varchar(50),
  idade varchar(3),
  cpf varchar(11),
  ...
);
```
```sql
CREATE TABLE vendas(
  id BIGINT PRIMARY KEY NOT NULL,
  id_cliente BIGINT FOREIGN KEY REFERENCES clientes(id),
  ...
);
```
```sql
CREATE TABLE professor(
  id_professor BIGINT PRIMARY KEY NOT NULL,
  nome_professor VARCHAR(50) NOT NULL,
  rg_professor CHAR(10) NOT NULL,
  endereco_professor VARCHAR(100) NOT NULL
);
```
```sql
CREATE TABLE materia(
  id_materia BIGINT PRIMARY KEY NOT NULL,
  nome_materia VARCHAR(50) NOT NULL,
  id_professor BIGINT FOREIGN KEY REFERENCES professor(id_professor)
)
```
```sql
ALTER TABLE professor
DROP COLUMN endereco_professor
```
### Duvidas
```sql
--Como incluir um NOT NULL em uma coluna de tabela já criada
--Obs a Primary Key sempre será NOT NULL mesmo que não especificado
--Essa alteração não perde dados da coluna
CREATE TABLE teste(
	id int primary key,
	nome varchar(20)
)

ALTER TABLE TESTE
ALTER COLUMN nome VARCHAR(20) NOT NULL
```
