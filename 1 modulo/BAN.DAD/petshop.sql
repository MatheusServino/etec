create database petshop;
use petshop;

create table cliente(
cpf bigint not null primary key,
nome varchar(30) not null,
telefone varchar(11),
endereco varchar(50)
);
create table produto(
codigo int not null primary key auto_increment,
marca varchar (30),
nome varchar(30) not null,
preco decimal(6,2)
);
create table servicos(
codigo int not null primary key auto_increment,
nome varchar(30) not null,
preco decimal(6,2)
);
create table funcionarios(
nome varchar(30) not null,
cpf bigint not null primary key,
salario decimal(6,2),
cargo varchar(50)
);
-- drop table produto;
-- drop table servicos;
-- drop database petshop;
alter table cliente add email varchar(60);
select * from funcionarios;

alter table cliente add cidade varchar(45);
alter table cliente add estado varchar(45);
alter table cliente modify cidade varchar(40);
alter table cliente modify estado varchar(40);
alter table cliente add teste varchar(45);
alter table cliente drop column teste;
alter table cliente rename column estado to uf;
insert into cliente (cpf,nome,telefone,endereco,email,cidade,estado)
value(99933399933,"lidia","16998798799","rua 25","lidia@gmail.com","araraquara","SP");
insert into cliente (cpf,nome,telefone,endereco,email,cidade,estado)
value(23455676384,"pedro","16997357246","rua 2"," pedrao34@gmail.com","araraquara","SP");
insert into cliente (cpf,nome,telefone,endereco,email,cidade,estado)
value (123456789101,"josias","16997273275","rua limoeiro","josias@gmail.com","sao carlos","SP");
insert into cliente (cpf,nome,telefone,endereco,email,cidade,estado)
value(11111111111,"guilherme","169924323247","avenida central","guia@gmail.com","aganzanorte","MG");
insert into cliente (cpf,nome,telefone,endereco,email,cidade,estado)
value(12345678911,"alvara","16995787874","rua dos amoreiros","alvara@gmail.com","durban","FM");
insert into servicos(codigo,nome,preco)
value("14808","tosa P","79,99");
insert into servicos(codigo,nome,preco)
value("14809","tosa M","85");
insert into servicos(codigo,nome,preco)
value("14810","tosa G","90");
insert into servicos(codigo,nome,preco)
value ("234","banho p","50");
insert into servicos(codigo,nome,preco)
value ("278","banho m","60");
insert into produto(codigo,marca,nome,preco)
value("369","havan","shampoo","19");
insert into produto(codigo,marca,nome,preco)
value("1409","lenovo","sapato","39,00");
insert into produto(codigo,marca,nome,preco)
value("2906","copassi","gelatina pra cachorro","5,00");
insert into produto(codigo,marca,nome,preco)
value("1209","pedigree","ração","40,00");
insert into produto(codigo,marca,nome,preco)
value("1206","nike","osso","15,00");
insert into funcionarios(nome,cpf,salario,cargo)
value("barbara",85899987678,"2000","vendedor");
insert into funcionarios(nome,cpf,salario,cargo)
value("hetori",88811122244,"1800","faxineiro");
insert into funcionarios(nome,cpf,salario,cargo)
value("gerusa",11122233345,"3000","gerente");
insert into funcionarios(nome,cpf,salario,cargo)
value("bernardo",44422233335,"2000","banhista");
insert into funcionarios(nome,cpf,salario,cargo)
value("joao",12345678910,"2000","banhista");
insert into funcionarios(nome,cpf,salario,cargo)
value("kemilly",33322267570,"10000","dona");
-- exercicio 1;
select max(salario) from funcionarios;
-- exercicio 2;
select min(salario) from funcionarios;
-- exercicio 3;
select nome,salario*12 from funcionarios where nome like "j%";
-- exercicio 4;
select cpf,nome,telefone,endereco,email,cidade,estado from cliente where nome like "_%A";
-- exercicio 5
select avg(preco) from servicos;
-- exercicio 6
select nome,cargo from funcionarios order by nome;