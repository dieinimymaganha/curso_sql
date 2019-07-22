-- Traga os funcionários que trabalhem
-- no departamento de filmes ou no
-- departamento de roupas


create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

-- PRIMEIRO CONTEI PARA SABER QUEM COLOCAR PRIMEIRO NA CONDIÇÃO
-- LEMBRANDO QUE QUANDO USAMOS O OR É MAIS RAPIDO UTILIZAR A CONDIÇÃO QUE TEM MAIS 
-- CHANCES, ASSIM NÃO Á NECESSIDADE DE CHEGAR A SEGUNDA CONDIÇÃO

SELECT DEPARTAMENTO, COUNT(*) FROM FUNCIONARIOS GROUP BY DEPARTAMENTO;

-- IDENTIFICADO QUE FILMES POSSUI 21 REGISTROS E ROUPAS 53.

SELECT NOME FROM FUNCIONARIOS WHERE DEPARTAMENTO = 'ROUPAS' OR DEPARTAMENTO = 'FILMES';