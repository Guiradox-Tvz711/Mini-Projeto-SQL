-- 1) Todos os pedidos com nome do cliente e produto
USE loja_tech;

SELECT 
    p.id_pedido,
    c.nome AS cliente,
    pr.nome AS produto,
    p.quantidade,
    p.data_pedido,
    p.status_pedido
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN produtos pr ON p.id_produto = pr.id_produto
ORDER BY p.id_pedido;

-- 2) Clientes da cidade de São Paulo
SELECT 
    nome,
    cidade,
    email
FROM clientes
WHERE cidade = 'São Paulo'
ORDER BY nome ASC;

-- 3) Produtos com preço entre R$ 100 e R$ 300
SELECT 
    nome,
    categoria,
    preco
FROM produtos
WHERE preco BETWEEN 100 AND 300
ORDER BY preco DESC;

-- 4) Clientes com nome começando com "A"
SELECT 
    nome,
    cidade
FROM clientes
WHERE nome LIKE 'A%'
ORDER BY nome;

-- 5) Pedidos com status específico
SELECT 
    id_pedido,
    id_cliente,
    id_produto,
    status_pedido
FROM pedidos
WHERE status_pedido IN ('PAGO', 'ENVIADO')
ORDER BY status_pedido;

-- 6) Clientes sem telefone cadastrado
SELECT 
    nome,
    cidade,
    telefone
FROM clientes
WHERE telefone IS NULL
ORDER BY nome;

-- 7) Pedidos feitos entre duas datas
SELECT 
    id_pedido,
    id_cliente,
    data_pedido,
    status_pedido
FROM pedidos
WHERE data_pedido BETWEEN '2026-07-21' AND '2026-07-25'
ORDER BY data_pedido DESC;
