USE loja_tech;

-- 1) Inserindo um novo cliente

INSERT INTO clientes
VALUES (
	DEFAULT,
	'Mateus Guirado',
    'São Paulo',
    'guirado@email.com',
    '11999990007'
);

-- 2) Inserindo um novo produto

INSERT INTO produtos
VALUES (
	DEFAULT,
	'Gabinete Gamer',
    'Hardware',
    149.90
);

-- 3) Inserindo um novo pedido

INSERT INTO pedidos
VALUES (
	DEFAULT,
    6,
    6,
    1,
    '2026-07-27',
    'ENVIADO'
);
