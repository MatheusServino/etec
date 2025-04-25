create database biblioteca;
use biblioteca;
create table livros(
livcodigo integer not null primary key,
livtitulo varchar(50),
liveditora varchar(30),
livqtdexemplar integer
 );
 create table exemplares(
 exenumero int not null primary key,
 exedatacompra date,
 exesituação varchar(30),
 exevalorpago decimal(7,2),
 exelivcodigo integer not null,
 foreign key(exelivcodigo) references livros(livcodigo)
 );
 create table usuarios(
 usunumero int not null primary key,
 usunome varchar(50),
 usuqtdlivros int
 );
 create table emprestimos(
 empid int not null primary key,
 empdtemprestimo date,
 empdatadevolução date,
 empnumusu int not null,
 foreign key(empnumusu) references usuarios(usunumero),
 empnumexe int not null,
 foreign key(empnumexe) references exemplares(exenumero)
 );
 insert into livros(livcodigo,livtitulo,liveditora,livqtdexemplar)
 value("1","Banco de dados","Makron","3");
insert into livros(livcodigo,livtitulo,liveditora,livqtdexemplar)
 value("2","C++","Ciencia moderna","2");
 insert into livros(livcodigo,livtitulo,liveditora,livqtdexemplar)
 value("3","engenharia de software","Makron","1");
 select * from livros;
 insert into exemplares(exenumero,exedatacompra,exesituação,exevalorpago,exelivcodigo)
 value("3","2003/04/03","Disponível","70.00","1");
 insert into exemplares(exenumero,exedatacompra,exesituação,exevalorpago,exelivcodigo)
 value("3","2003/04/30","Disponível","70.00","1");
 insert into exemplares(exenumero,exedatacompra,exesituação,exevalorpago,exelivcodigo)
 value("4","2002/10/15","Disponível","65.00","2");
  insert into exemplares(exenumero,exedatacompra,exesituação,exevalorpago,exelivcodigo)
 value("5","2002/10/15","Disponível","65.00","2")
  insert into exemplares(exenumero,exedatacompra,exesituação,exevalorpago,exelivcodigo)
 value("6","2003/01/20","Disponível","110.00","3");
 insert into usuarios(usunumero,usunome,usuqtdlivros)
 value("1","José da Silva","5");
  insert into usuarios(usunumero,usunome,usuqtdlivros)
 value("2","João Benedito","2");
   insert into usuarios(usunumero,usunome,usuqtdlivros)
 value("3","Simone Cristina de Nogueira","1");
 insert into emprestimos(empid,empdtemprestimo,empdatadevolução,empnumusu,empnumexe)
 value("1","2003/05/25","2003/06/25","3","1");
  insert into emprestimos(empid,empdtemprestimo,empdatadevolução,empnumusu,empnumexe)
 value("2","2003/05/08","2003/06/08","2","3");
   insert into emprestimos(empid,empdtemprestimo,empdatadevolução,empnumusu,empnumexe)
 value("3","2003/05/08","2003/06/08","2","4");
    insert into emprestimos(empid,empdtemprestimo,empdatadevolução,empnumusu,empnumexe)
 value("4","2003/06/01","2003/07/01","1","2");
    insert into emprestimos(empid,empdtemprestimo,empdatadevolução,empnumusu,empnumexe)
 value(5,"2003/06/01","2003/07/01",1,5);
    insert into emprestimos(empid,empdtemprestimo,empdatadevolução,empnumusu,empnumexe)
 value(6,"2003/06/01","2003/07/01",1,6);
 -- exercicio A;
 select max(exevalorpago),min(exevalorpago) from exemplares;
 -- exercicio B;
 select exenumero from exemplares order by exedatacompra;
 -- exercicio C;
 update livros set livtitulo="C++ - Guia para Iniciantes" where livtitulo="C++";
 select*from livros;
 -- exercicio D;
 update exemplares set exevalorpago=exevalorpago*(exevalorpago*0.15)
 -- exercicio E;
 select exenumero from exemplares;
 -- exercicio F;
alter table livros add column descricao text;
alter table livros add column comentarios text;
-- exercicio G
alter table livros drop column comentarios;
-- exercicio H 
update livros set descricao="Banco de dados do Básico ao avançado" where livcodigo=1;
 
 
 
 

 
