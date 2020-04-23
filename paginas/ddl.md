## Página Inicial

[Home](../index.md)


## Data Definition Language
### 1.0

```sql
CREATE DATABASE database_name

CREATE TABLE table_name(
  column1 datatype,
  column2 datatype,
  column3 datatype,
  ...
);
```
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
