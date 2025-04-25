create database planodesaude;
use planodesaude;
create table plano(
plano varchar(2) not null primary key,
descricao varchar(30),
valor decimal(10,2)
);
create table associado(
plano varchar(2) not null,
nome varchar(40) not null primary key,
endereco varchar(40),
cidade varchar(20),
estado varchar(2),
cep varchar(9),
foreign key(plano) references plano(plano)
);
select*from associado;
insert into plano(plano,descricao,valor)
value("b1","basico 1",200.00);
insert into plano(plano,descricao,valor)
value("b2","basico 2",150.00);
insert into plano(plano,descricao,valor)
value("b3","basico 3",100.00);
insert into plano(plano,descricao,valor)
value("E1","Executivo 1",350.00);
insert into plano(plano,descricao,valor)
value("E2","Executivo 2",300.00);
insert into plano(plano,descricao,valor)
value("E3","Executivo 3",250.00);
insert into plano(plano,descricao,valor)
value("M1","Master 1",500.00);
insert into plano(plano,descricao,valor)
value("M2","Master 2",450.00);
insert into plano(plano,descricao,valor)
value("M3","Master 3",400.00);
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("b1","JOSE ANTONIO DA SILVA","R. FELIPE DO AMARAL, 3450","Cotia","SP","06700-000");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("B1","MARIA DA SILVA SOBRINHO","R. FELIPE DE JESUS, 1245","DIADEMA","SP","09960-170");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("B1","PEDRO JOSE DE OLIVEIRA","R. AGRIPINO DIAS, 155","Cotia","SP","06700-011");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("B2","ANTONIA DE FERNANDES","R. PE. EZEQUIEL, 567","DIADEMA","SP","09960-175");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("B2","ANTONIO DO PRADO","R. INDIO TABAJARA, 55","GUARULHOS","SP","07132-999");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("B2","WILSON DE SENA","R. ARAPIRACA, 1234","OSASCO","SP","06293-001");
update associado set plano ="B3" where nome="WILSON DE SENA";
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("B3","SILVIA DE ABREU","R. DR. JOAO DA ","SANTOS","SP","09172-112");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("E1","ODETE DA CONCEICAO","R. VOLUNTARIOS DA PATRIA, 10 ","SAO PAULO","SP","02010-550");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("E2","JOAO CARLOS MACEDO","R. VISTA ALEGRE, 500","SAO PAULO","SP","04343-900");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("E3","CONCEICAO DA SILVA","AV. VITORIO DO AMPARO, 11","MAUA","SP","09312-988");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("E3","PAULO BRUNO DO AMARAL","R. ARGENZIO BRILHANTE, 88","BARUERI","SP","06460-999");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("E3","WALDENICE DE OLIVEIRA","R. OURO VELHO, 12","BARUERI","SP","06460-998");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("E3","MARCOS DO AMARAL","R. DO OUVIDOR, 67","GUARULHOS","SP","07031-555");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("M1","MURILO DE SANTANA","R. PRATA DA CASA, 79","BARUERI","SP","06455-111");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("M1","LUIZA ONOFRE FREITAS","R. VICENTE DE ABREU, 55","SANTO ANDRE","SP","09060-667");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("M2","MELISSA DE ALMEIDA","R. FERNANDO ANTONIO, 2345","SAO PAULO","SP","04842-987");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("M2","JOAO INACIO DA CONCEICAO","R. PENELOPE CHARMOSA, 34","SUZANO","SP","08670-888");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("B3","AUGUSTA DE ABREU","AV. RIO DA SERRA, 909","SANTO ANDRE","SP","09061-333");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("M3","ILDA MELO DA CUNHA","AV. POR DO SOL, 546","SANTO ANDRE","SP","09199-444");
insert into associado(plano,nome,endereco,cidade,estado,cep)
value("M3","MARCOS DA CUNHA","AV. PEDROSO DE MORAIS, 333","SÃO PAULO","SP","04040-444");
update associado set plano ="B1" where nome="JOSE ANTONIO DA SILVA";
-- exercicio 1;
-- plano das duas tabelas;
-- exercicio 2;
select nome,plano from associado;
-- exercicio 3;
select nome from associado where plano="B1";
-- exercicio 4;
select A.nome,A.plano,P.valor from plano P inner join associado A on p.plano=a.plano;
-- exercicio 5;
select nome from associado where cidade="diadema" or cidade="cotia";
-- exercicio 6;
select A.Nome,A.plano,P.valor from plano P inner join associado A on p.plano=a.plano where cidade="barueri";
-- exercicio 7;
select A.nome,A.plano,P.valor,A.cidade from plano P inner join associado A on p.plano=a.plano where cidade="sao paulo";
-- exercicio 8;
select A.plano,A.nome,A.endereco,A.cidade,A.estado,A.cep,P.descricao,P.valor from plano P inner join associado A on p.plano=a.plano where nome like "_%silva";
-- exercicio 9;
UPDATE plano SET valor = valor * 1.10 WHERE plano IN ('B1', 'B2', 'B3');
UPDATE plano SET valor = valor * 1.05 WHERE plano IN ('E1', 'E2', 'E3');
UPDATE plano SET valor = valor * 1.03 WHERE plano IN ('M1', 'M2', 'M3');
-- exercicio 10;
update associado set plano="E3" where nome="PEDRO JOSE DE OLIVEIRA";
-- exercicio 11;
select nome,plano from associado where plano="e3";
-- exercicio 12;
select A.nome,P.valor from plano P inner join associado A on P.plano=A.plano where P.plano="B1" or  P.plano="E1" or  P.plano="M1";
-- exercicio 13;
select nome from associado where plano like "E%";
-- exercicio 14;
select nome from associado where plano like "B%" or plano like "M%";
-- exercicio 15;
delete from associado where cidade="santo andre";
-- exercicio 16;
select A.nome,A.plano,P.valor from plano P inner join associado A on P.plano=A.plano where cidade="sao paulo" and A.plano="m2" or A.plano="m3" order by nome;
-- exercicio 17;
select nome,plano from associado order by plano;
-- exercicio 18;
select nome from associado where plano like "b%" or plano like "e%";
-- exercicio 19;
select A.nome,P.descricao from plano P inner join associado A on P.plano=A.plano order by A.nome;
-- exercicio 20;
select plano from plano where valor>=300 and valor<=500;
-- exercicio 21;
select A.nome,A.plano,P.descricao,P.valor from plano P inner join associado A on P.plano=A.plano where nome like "_%amaral" or nome like "amaral_%";
-- exercicio 22;
select nome from associado where cidade<>"DIADEMA";
-- exercicio 23;
UPDATE plano SET valor = valor * 1.06 WHERE plano IN ('M1', 'M2', 'M3');
-- exercicio 24;
select nome from associado where cep like "09%";

















