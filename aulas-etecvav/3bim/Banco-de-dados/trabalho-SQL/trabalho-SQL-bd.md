## Etapa 1 - Criar Banco de dados
CREATE DATABASE bd_infonet <br/>
## Etapa 2 - Usar o bd_infonet como banco de dados
use bd_infonet
## Etapa 3 - Criar tabela
CREATE TABLE funcionarios( <br/>
idfuncionario INT PRIMARY KEY,<br/>
NOME varCHAR(100) not null,	<br/>
email varchar (150) not null UNIQUE,<br/>
cidade varchar (100) not null,<br/>
estado char (2) not null,<br/>
setor varchar (80) not null,<br/>
salario decimal(10,2) not null);<br/>
## Etapa 4 - Cadastrar funcionários 
select * from funcionarios
