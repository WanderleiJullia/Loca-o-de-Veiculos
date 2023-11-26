# Loca-o-de-Veiculos
Atividade a seguir, possui objetivo de utilizar a forma de Normalização. A normalização é um processo no projeto de banco de dados que visa organizar as tabelas
de um banco de dados relacional de forma eficiente, minimizando a redundância de dados e
garantindo a integridade das informações. 

# 1º Observe a tabela não normalizada de uma locadora de veículos e aplique a 3ª Forma normal;
![image](https://github.com/WanderleiJullia/Loca-o-de-Veiculos/assets/144744092/42efb38b-b922-4a13-bdbe-60a5ce51efb5)

# 2º Faça o modelo lógico de banco de dados relacional;
![image](https://github.com/WanderleiJullia/Loca-o-de-Veiculos/assets/144744092/b80bf459-1343-4743-b32c-93f1a2109727)

# 3º Escreva o script que cria as tabelas;
``` SQL

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

cliente_id int references Cliente(ClienteID),
carros_id int references Veiculos(CarrosID)
);
``` 

# 4º Crie uma view que seleciona todas as locações e seus respectivos veículos e clientes.
``` SQL
CREATE VIEW VeiculosLocados AS
SELECT L.Cod_Locacao, L.Dias, L.Total, 
       V.Veiculo, V.Cor, V.Placa, V.Diaria,
       C.Nome, C.CPF, C.Nascimento
FROM Locacao L
JOIN Veiculos V ON L.carros_id = V.CarrosID
JOIN Cliente C ON L.cliente_id = C.ClienteID;

select * from VeiculosLocados;
```
![image](https://github.com/WanderleiJullia/Loca-o-de-Veiculos/assets/144744092/cafa3438-12a8-4020-abb5-4c5c520560f4)

Bancos de Ddaos 
Jullia Santos Wanderlei
