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
<img src="imagens/criar-tabela.png" alt="Exemplo" width="700" />
## Etapa 4 - Cadastrar funcionários 
select * from funcionarios<br/>
	insert into funcionarios values (1,'Ana Souza', 'ana@infonet.com', 'Sao Paulo', 'SP', 'TI', 5200.00);<br/>
	insert into funcionarios (idfuncionario, NOME, email, cidade, estado, setor, salario)<br/>
values<br/>
(2,'Carlos Lima', 'carlos@infonet.com', 'Rio de Janeiro', 'RJ', 'RH', 3800.00),<br/>
(3,'Fernanda Costa', 'fernanda@infonet.com', 'Campinas', 'SP', 'Financeiro', 4500.00),<br/>
(4,'Roberto Alves', 'roberto@infonet.com', 'Belo Horizonte', 'MG', 'TI', 6100.00),<br/>
(5,'Juliana Matos', 'juliana@infonet.com', 'Curitiba', 'PR', 'Comercial', 2900.00),<br/>
(6,'Marcos Pereira', 'marcos@infonet.com', 'Sao Paulo', 'SP', 'RH', 3200.00),<br/>
(7,'Patricia Nunes', 'patricia@infonet.com', 'Porto Alegre', 'RS', 'Financeiro', 4100.00);<br/>
<img src="imagens/tabela-funcionarios.png" alt="Exemplo" width="700" />
## Etapa 5 - Aumentar salario da Ana
update funcionarios set salario = 7000 where idfuncionario = 1;<br/>
<img src="imagens/salario-ana.png" alt="Exemplo" width="700" />
