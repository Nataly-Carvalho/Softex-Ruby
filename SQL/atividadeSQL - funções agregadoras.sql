CREATE DATABASE IF NOT EXISTS Empresa;
USE Empresa;

CREATE TABLE IF NOT EXISTS Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cidade VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    Valor DECIMAL(10, 2),
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (Nome, Cidade) VALUES
('Alice', 'São Paulo'),
('Bruno', 'Rio de Janeiro'),
('Carlos', 'Belo Horizonte');

INSERT INTO Pedidos (ClienteID, Valor, DataPedido) VALUES
(1, 150.00, '2024-01-10'),
(2, 200.00, '2024-01-15'),
(1, 300.00, '2024-02-20'),
(3, 450.00, '2024-03-05');


SELECT Clientes.Nome, Pedidos.Valor, Pedidos.DataPedido
FROM Clientes
JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

SELECT * FROM Clientes
WHERE Cidade LIKE 'S%';

SELECT SUM(Valor) AS TotalVendas
FROM Pedidos;

SELECT Clientes.Nome, COUNT(Pedidos.PedidoID) AS NumeroDePedidos
FROM Clientes
JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.Nome;

SELECT MAX(Valor) AS MaiorPedido
FROM Pedidos;

