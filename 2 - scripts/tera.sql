/*criação do banco de dados da tera com postgresql*/

create database sistema_tera
locale 'pt_BR.UTF8'
lc_colate='pt_BR.UTF8'
lc_ctype='pt_BR.UTF8'
encoding template0;

/*depois de criar o banco é preciso selecionar ele*/

/*no postgres usa-se o comando: "\c" */

/*criação da tabela cliente*/

create table cliente (
email varchar(50) not null,
cpf varchar(11) not null primary key unique,
nome varchar(60),
sexo enum('M','F'),
/*endereço*/
rua varchar(50),
logradouro varchar(50),
numero int,
cep int,
/*telefone para incluir números internacionais de 3 digigos*/
telefone varchar(14));