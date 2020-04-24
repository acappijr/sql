CREATE DATABASE EscolaHandsOn
GO
 

USE EscolaHandsOn
GO
 

--CRIAR TABELA 
CREATE TABLE PROFESSOR(ID_PROFESSOR BIGINT PRIMARY KEY NOT NULL, 
                      NOME_PROFESSOR VARCHAR(50) NOT NULL,
                      RG_PROFESSOR VARCHAR(10) NOT NULL,
                      ENDERECO_PROFESSOR VARCHAR(100) NOT NULL)

 

CREATE TABLE MATERIA (ID_MATERIA BIGINT PRIMARY KEY NOT NULL,
                      NOME_MATERIA VARCHAR(50) NOT NULL,
                      ID_PROFESSOR BIGINT FOREIGN KEY REFERENCES PROFESSOR(ID_PROFESSOR))

 


INSERT INTO PROFESSOR(ID_PROFESSOR, NOME_PROFESSOR, RG_PROFESSOR, ENDERECO_PROFESSOR)
VALUES (1, 'LUIX', '1234567890', 'Rua Morais Silva'),
       (2, 'GUILHERME', '0987654321', 'Rua Silva Morais'),
       (3, 'NEYMAR', '1234566543','Rua Penapolis'),
       (4, 'DOUGLAS', '0987657098','Rua Jose Marcondes'),
       (5, 'VITOR', '1234523445','Rua Comandante Sampaio'),
       (6, 'CAIO', '0987655463','Rua Amauricio Junior'),
       (7, 'LUCAS', '1234568745','Rua Sydnei Olivera'),
       (8, 'GUILHERME S', '0987659045','Rua Brasil'),
       (9, 'DANILO', '0985435723', 'Rua Vicente' ),
       (10, 'MARIA', '1209458765', 'Rua Vicente' ),
       (11, 'PATRICIA', '4573582472', 'Avenida Paulista' ),
       (12, 'DANILO', '0985435723', 'Avenida Giovani Gronchi' ),
       (13, 'LURDES', '4212387654', 'Rua Vicente' )

 
INSERT INTO MATERIA (ID_MATERIA, NOME_MATERIA, ID_PROFESSOR)
VALUES (1, 'POWER BI', 1),
       (2, 'RPA', 2),
       (3, 'SQL', 3),
       (4, 'C#', 4),
       (5, 'ANDROID', 5),
       (6, 'SAS', 1),
       (7, 'JAVA', 2),
       (8, 'PHP', 3),
       (9, 'METOLOGIA AGIL', 4),
       (10, 'LOGICA DE PROGRAMACAO', 5),
       (11, 'MATEMATICA COMPUTACIONAL', 1),
       (12, 'WEB', 2),
       (13, 'INTERNET DAS COISAS', 3);


CREATE TABLE ALUNO (ID_ALUNO BIGINT PRIMARY KEY NOT NULL, 
                    NOME_ALUNO VARCHAR(50) NOT NULL,
                    RG_ALUNO VARCHAR(10) NOT NULL)

CREATE TABLE NOTA (ID_NOTA BIGINT PRIMARY KEY NOT NULL, 
                   NOTA DECIMAL(3,1),
                   ID_MATERIA BIGINT FOREIGN KEY REFERENCES MATERIA(ID_MATERIA),
                   ID_ALUNO BIGINT FOREIGN KEY REFERENCES ALUNO(ID_ALUNO))

INSERT INTO ALUNO (ID_ALUNO, NOME_ALUNO, RG_ALUNO)
VALUES (1, 'JOSE', '1234567890'),
       (2, 'PAULO', '1234567890'),
       (3, 'CARLOS', '1234567890'),
       (4, 'LUCAS', '1234567345'),
       (5, 'FELIPE', '1234561453'),
       (6, 'LUCIANO', '1234567890'),
       (7, 'DANILO', '1234567890'),
       (8, 'ROGERIO', '1234567908'),
       (9, 'RICARDO', '1234567127'),
       (10, 'JONAS', '1234578451'),
       (11, 'AMAURICIO', '1234567865'),
       (12, 'MARCOS', '1234560986'),
       (13, 'MATHEUS', '1234560453'),
       (14, 'JADSON', '1234561853'),
       (15, 'XAVIER', '1234561678');

 

INSERT INTO NOTA (ID_NOTA, NOTA, ID_MATERIA, ID_ALUNO)
VALUES (1, 10, 1, 1),
(2, 5, 2, 1),
(3, 6, 3, 1),
(4, 10, 4, 1),
(5, 7.5, 5, 1),
(6, 8, 6, 1),
(7, 6, 7, 1),
(8, 7, 8, 1),
(9, 10, 1, 2),
(10, 5, 2, 2),
(11, 6, 3, 2),
(12, 10, 4, 2),
(13, 7.5, 5, 2),
(14, 8, 6, 2),
(15, 6, 7, 2),
(16, 7, 8, 2),
(17, 6, 1, 3),
(18, 10, 2, 3),
(19, 9, 3, 3),
(20, 6, 4, 3),
(21, 5.5, 5, 3),
(22, 7, 6, 3),
(23, 8, 7, 3),
(24, 5, 8, 3),
(25, 8.8, 1, 4),
(26, 9, 2, 4),
(27, 6, 3, 4),
(28, 7, 4, 4),
(29, 5.9, 5, 4),
(30, 7.6, 6, 4),
(31, 8.5, 7, 4),
(32, 7, 8, 4),
(33, 9, 1, 5),
(34, 5, 2, 5),
(35, 6, 3, 5),
(36, 8, 4, 5),
(37, 6.5, 5, 5),
(38, 7.7, 6, 5),
(39, 8.3, 7, 5),
(40, 6.5, 8, 5);
