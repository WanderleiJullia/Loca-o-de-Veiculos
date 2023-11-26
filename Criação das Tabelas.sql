create table Veiculos(
CarrosID int auto_increment primary key, 
Veiculo varchar(100),
Cor varchar(50),
Placa varchar(50),
Diaria decimal(15,9)
);

create table Cliente(
ClienteID int auto_increment primary key, 
Nome varchar(50),
CPF varchar(20),
Nascimento date
);

create table Locacao(
Cod_Locacao int primary key, 
Dias int(11), 
Total decimal(20,9),

cliente_id int references Cliente(ClienteID),
carros_id int references Veiculos(CarrosID)
);

insert into Veiculos( Veiculo, Cor, Placa, Diaria) values ('Fusca', 'Preto', 'WER-3456', 30.00);
insert into Veiculos( Veiculo, Cor, Placa, Diaria) values ('Variante', 'Rosa', 'FDS-8384', 60.00);
insert into Veiculos( Veiculo, Cor, Placa, Diaria) values ('Comodoro', 'Preto', 'CVB-9933', 20.00);
insert into Veiculos( Veiculo, Cor, Placa, Diaria) values ('Deloriam', 'Azul', 'FGH-2256', 80.00);
insert into Veiculos( Veiculo, Cor, Placa, Diaria) values ('Brasilia', 'Amarelo', 'DDI-3948', 45.00);

insert into Cliente (Nome, CPF, Nascimento) values ('Ariano Suassuna', '123.456.789-01', '1022-05-21');
insert into Cliente (Nome, CPF, Nascimento) values ('Grace Hopper', '543.765.987-23', '2002-04-29');
insert into Cliente (Nome, CPF, Nascimento) values ('Richard feynman', '987.654.231-90', '2001-10-12');
insert into Cliente (Nome, CPF, Nascimento) values ('Edgar Poe', '432.765.678-67', '1998-12-14');
insert into Cliente (Nome, CPF, Nascimento) values ('Gordon Freeman', '927.384.284-44', '1984-11-26');

insert into Locacao(Cod_Locacao, Dias, Total, cliente_id, carros_id) values (101,3,1,1, 90.00);
insert into Locacao(Cod_Locacao, Dias, Total,  cliente_id, carros_id) values (102,7,2,2, 420.00);
insert into Locacao(Cod_Locacao, Dias, Total,  cliente_id, carros_id) values (103,1,3,3, 20.00);
insert into Locacao(Cod_Locacao, Dias, Total, cliente_id, carros_id) values (104,3,4,4, 240.00);
insert into Locacao(Cod_Locacao, Dias, Total, cliente_id, carros_id) values (105,7,5,5, 315.00);



