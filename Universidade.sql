create database bd_universidade;
use bd_universiade;

create table universidade(
	id_uni int primary key auto_increment,
    nome varchar(255) not null,
    telefone varchar(50), 
    enderenco varchar(255)
);

create table estudante(
	id_estudante int primary key auto_increment,
    nome varchar(255) not null,
    telefone varchar(50), 
    enderenco varchar(255),
    id_uni int,
    foreign key (id_uni) references universidade(id_uni)
);

insert into universidade (nome, telefone, enderenco) values
	('Universidade São Paulo', '11987654321', 'Av. Paulista, 1000, São Paulo, SP'),
	('Universidade Federal do Rio', '2132234455', 'Rua das Laranjeiras, 350, Rio de Janeiro, RJ'),
	('Universidade Drino', '31984321123', 'Av. Afonso Pena, 1500, Belo Horizonte, MG'),
	('Universidade Dauto', '48987654322', 'Rua Hercílio Luz, 200, Florianópolis, SC'),
	('Universidade Adriuto', '85988887766', 'Av. Beira Mar, 500, Fortaleza, CE');
    
insert into estudante (nome, telefone, enderenco, id_uni) values
	('Beatriz Silva', '31993334455', 'Rua Amazonas, 789, Belo Horizonte, MG', 3),
	('Carlos Ferreira', '21332456789', 'Av. Atlântica, 250, Rio de Janeiro, RJ', 2),
    ('Mariana Rocha', '85994455667', 'Rua Padre Cícero, 800, Fortaleza, CE', 5),
	('José Lima', '48992223344', 'Av. Mauro Ramos, 400, Florianópolis, SC', 4),
    ('Ana Souza', '11991234567', 'Rua das Flores, 123, São Paulo, SP', 1);
  
select * from universidade;
select * from estudante;

update estudante 
set nome = 'João Oliveira' 
where id_estudante = 1;

update universidade 
set nome = 'Universidade Nova de Minas' 
where id_uni = 3;

delete from estudante 
where id_estudante = 5;

select universidade.nome as universidade_nome, estudante.nome as estudante_nome
from universidade
join estudante on universidade.id_uni = estudante.id_uni;


create view universidade_estudantes as
select universidade.nome as universidade_nome, estudante.nome as estudante_nome
from universidade
join estudante on universidade.id_uni = estudante.id_uni;

