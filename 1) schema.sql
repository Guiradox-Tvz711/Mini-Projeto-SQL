CREATE DATABASE IF NOT EXISTS loja_tech;
USE loja_tech;

DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS clientes;

-- TABELA CLIENTES
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

-- =========================
-- TABELA PRODUTOS
-- =========================
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

-- =========================
-- TABELA PEDIDOS
-- =========================
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    status_pedido VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- =========================
-- INSERTS EM CLIENTES
-- =========================
INSERT INTO clientes (id_cliente, nome, cidade, email, telefone) VALUES
(1, 'Ana Silva', 'São Paulo', 'ana@email.com', '11999990001'),
(2, 'Bruno Souza', 'Guarulhos', 'bruno@email.com', NULL),
(3, 'Carlos Lima', 'São Paulo', 'carlos@email.com', '11999990003'),
(4, 'Mariana Alves', 'Santo André', 'mariana@email.com', NULL),
(5, 'Pedro Santos', 'Osasco', 'pedro@email.com', '11999990005');

-- =========================
-- INSERTS EM PRODUTOS
-- =========================
INSERT INTO produtos (id_produto, nome, categoria, preco) VALUES
(1, 'Mouse Gamer', 'Periféricos', 89.90),
(2, 'Teclado Mecânico', 'Periféricos', 249.90),
(3, 'Monitor 24"', 'Monitores', 799.90),
(4, 'Headset', 'Áudio', 159.90),
(5, 'SSD 480GB', 'Armazenamento', 279.90);

-- =========================
-- INSERTS EM PEDIDOS
-- =========================
INSERT INTO pedidos (id_pedido, id_cliente, id_produto, quantidade, data_pedido, status_pedido) VALUES
(1, 1, 2, 1, '2026-07-20', 'PAGO'),
(2, 1, 1, 2, '2026-07-21', 'ENVIADO'),
(3, 2, 5, 1, '2026-07-22', 'PENDENTE'),
(4, 3, 3, 1, '2026-07-22', 'PAGO'),
(5, 4, 4, 1, '2026-07-23', 'CANCELADO'),
(6, 5, 1, 1, '2026-07-24', 'PAGO'),
(7, 3, 5, 2, '2026-07-25', 'ENVIADO'),
(8, 2, 2, 1, '2026-07-25', 'PAGO');
