INSERT INTO clientes (nome, cep, logradouro, numero, bairro, referencia, telefone) 
VALUES ('Gaspar Oliveira', '13905-620', 'Rua Alcides Postali', 21, 'São Dimas', 'Ao lado da igreja', '19 99898-1141');

INSERT INTO pedidos (cliente_id, data) 
VALUES ((SELECT id FROM clientes WHERE nome = 'Gaspar Oliveira' ORDER BY id DESC LIMIT 1), NOW());

INSERT INTO itens_pedido (pedido_id, pizza_id, quantidade, preco_unitario) 
VALUES 
    ((SELECT MAX(id) FROM pedidos), (SELECT id FROM pizzas WHERE nome = 'Margherita'), 1, (SELECT preco FROM pizzas WHERE nome = 'Margherita')),
    ((SELECT MAX(id) FROM pedidos), (SELECT id FROM pizzas WHERE nome = 'Napolitana'), 2, (SELECT preco FROM pizzas WHERE nome = 'Napolitana'));


INSERT INTO pizzas (nome, descricao, preco) 
VALUES ('A moda do chef', 'Molho de tomate, palmito macio em rodelas, coberto com catupiry, frango desfiado, ovos, carne seca, oregano e azeitonas', 41.90);

INSERT INTO pedidos (cliente_id, data) 
VALUES ((SELECT id FROM clientes WHERE nome = 'Gaspar Oliveira' ORDER BY id DESC LIMIT 1), NOW());

INSERT INTO itens_pedido (pedido_id, pizza_id, quantidade, preco_unitario) 
VALUES 
    ((SELECT MAX(id) FROM pedidos), (SELECT id FROM pizzas WHERE nome = 'A moda do chef'), 2, 41.90);


DELETE FROM itens_pedido 
WHERE pedido_id = (
    SELECT MAX(p.id) FROM pedidos p 
    JOIN clientes c ON p.cliente_id = c.id 
    WHERE c.nome = 'Gaspar Oliveira'
);

INSERT INTO itens_pedido (pedido_id, pizza_id, quantidade, preco_unitario) 
VALUES 
    (
        (SELECT MAX(p.id) FROM pedidos p JOIN clientes c ON p.cliente_id = c.id WHERE c.nome = 'Gaspar Oliveira'),
        (SELECT id FROM pizzas WHERE nome = 'A moda do chef'),
        3, 
        (SELECT preco FROM pizzas WHERE nome = 'A moda do chef')
    ),
    (
        (SELECT MAX(p.id) FROM pedidos p JOIN clientes c ON p.cliente_id = c.id WHERE c.nome = 'Gaspar Oliveira'),
        (SELECT id FROM pizzas WHERE nome = 'Margherita'),
        1, 
        (SELECT preco FROM pizzas WHERE nome = 'Margherita')
    );