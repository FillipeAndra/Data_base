/*criação do banco de dados da tera com postgresql*/

create database sistema_tera
locale='pt_BR.UTF-8'
lc_collate='pt_BR.UTF-8'
lc_ctype='pt_BR.UTF-8'
template=template0;

/*depois de criar o banco é preciso selecionar ele*/

/*no postgres usa-se o comando: "\c" */

/*criação da tabela cliente*/
create type sex as enum('F','M');

create table cliente (
email varchar(50) not null unique,
cpf varchar(11) not null primary key unique,
nome varchar(60) not null,
sexo sex not null,
/*endereço*/
rua varchar(50) not null,
logradouro varchar(50) not null,
numero int not null,
cep int not null,
/*telefone para incluir números brasileiros*/
telefone varchar(11) not null);