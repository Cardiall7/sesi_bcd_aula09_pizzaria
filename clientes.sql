USE Pizzaria;

CREATE VIEW vw_detalhes_pedidos AS
SELECT 
    p.pedido_id,
    c.nome AS cliente_nome,
    pi.nome AS pizza_nome,
    ip.quantidade,
    ip.valor AS preco_unitario,
    (ip.quantidade * ip.valor) AS subtotal
FROM Pedidos p
JOIN Clientes c ON p.cliente_id = c.cliente_id
JOIN Itens_Pedido ip ON p.pedido_id = ip.pedido_id
JOIN Pizzas pi ON ip.pizza_id = pi.pizza_id;

CREATE VIEW vw_valor_total_pedidos AS
SELECT 
    p.pedido_id,
    c.nome AS cliente_nome,
    SUM(ip.quantidade * ip.valor) AS valor_total
FROM Pedidos p
JOIN Clientes c ON p.cliente_id = c.cliente_id
JOIN Itens_Pedido ip ON p.pedido_id = ip.pedido_id
GROUP BY p.pedido_id, c.nome;

CREATE VIEW vw_quantidade_pizzas_pedido AS
SELECT 
    p.pedido_id,
    c.nome AS cliente_nome,
    SUM(ip.quantidade) AS total_pizzas_quantidade,
    COUNT(ip.pizza_id) AS tipos_diferentes_pizzas
FROM Pedidos p
JOIN Clientes c ON p.cliente_id = c.cliente_id
JOIN Itens_Pedido ip ON p.pedido_id = ip.pedido_id
GROUP BY p.pedido_id, c.nome;