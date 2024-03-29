/*Criando database*/
CREATE DATABASE LIVRARIA;

/*Criando a tabela*/
CREATE TABLE LIVROS(
    LIVRO VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO CHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(30),
    VALOR FLOAT(10,2),
    ESTADO CHAR(2),
    ANO INT(4)
);


/*Inserindo os dados*/
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO, ANO) VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);






/*Exercicio 1 - Trazer todos os dados*/

SELECT * FROM LIVROS;

/*EXERCICIO 2 - TRAZER O NOME DO LIVRO E O NOME DA EDITORA*/

SELECT LIVRO, EDITORA FROM LIVROS;

/*EXERCICIO 3 - TRAZER O NOME DO LIVRO E A UF DOS LIVROS PLUCICADOS POR AUTORES DO SEXO MASCULINO*/

SELECT LIVRO, ESTADO FROM LIVROS WHERE SEXO = 'M';

/*EXERCIO 4 - TRAZER O NOME DO LIVRO E O NÚMERO DE PÁGINAS DOS LIVROS PULICADOS POR AUTORES DO SEXO FEMININO*/

SELECT LIVRO, PAGINAS FROM LIVROS WHERE SEXO = 'F';

/*EXERCICIO 5 - TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SÃO PAULO*/

SELECT VALOR FROM LIVROS WHERE ESTADO = 'SP';


/*EXERCICIO 6 - TRAZER OS DADOS DOS AUTORES DE SEXO MASCULINO QUE TIVERAM LIVROS PULICADOS POR SÃO PAULO OU RIO DE JANEIRO*/

SELECT * FROM LIVROS WHERE SEXO = 'M' AND (ESTADO = 'SP' OR ESTADO = 'RJ');