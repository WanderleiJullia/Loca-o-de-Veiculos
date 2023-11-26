CREATE VIEW VeiculosLocados AS
SELECT L.Cod_Locacao, L.Dias, L.Total, 
       V.Veiculo, V.Cor, V.Placa, V.Diaria,
       C.Nome, C.CPF, C.Nascimento
FROM Locacao L
JOIN Veiculos V ON L.carros_id = V.CarrosID
JOIN Cliente C ON L.cliente_id = C.ClienteID;

select * from VeiculosLocados;