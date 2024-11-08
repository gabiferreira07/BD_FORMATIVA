create database bd_formativa;
use bd_formativa;

-- Criação da tabela Aeronave
create table Aeronave(
	id_nave int primary key auto_increment,
    nome varchar(255) not null,
    comunicador varchar(255),
    destino varchar(255)
);

create table Passageiro(
	id_pass int primary key auto_increment,
    nome varchar(255) not null,
    telefone varchar(50),
    endereco varchar(255),
    id_nave int,
    foreign key (id_nave) references Aeronave(id_nave)
);

insert into Aeronave(nome, comunicador, destino) values
	('Airbus A320', 'Comunicador Alfa', 'Paris'),
    ('Boeing 737', 'Comunicador Bravo', 'Nova Iorque'),
    ('Embraer E195', 'Comunicador Charlie', 'Londres'),
    ('Cessna 172', 'Comunicador Delta', 'Tóquio'),
    ('G650', 'Comunicador Echo', 'Dubai');
    
insert into Passageiro(nome, telefone, endereco, id_nave) values
	('Albert Einsten', '123456789', '123 Rua da Ciência', 1),
    ('Marie Curie', '987654321', '456 Avenida da Radiação', 1),
    ('Isaac Newton', '456789123', '789 Praça da Gravidade', 1),
	('Ana Maria', '8743263620', '000 Rua dos Bobos', 3),
    ('Ineide Rio', '456789123', '519 Wilbert Segundo', 2),