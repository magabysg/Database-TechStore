-- Consultas: Exercício 1
SELECT nome, email FROM clientes;

-- Consultas: Exercício 2
SELECT nome, preco FROM produtos WHERE preco < 432;

-- Consultas: Exercício 3
SELECT * FROM pedidos WHERE status = 'pendente';


-- Consultas: Exercício 4
SELECT nome, preco FROM produtos ORDER BY preco DESC;


-- Consultas: Exercício 5
SELECT id_produto, nome, preco FROM produtos WHERE nome LIKE '%Monitor%';

-- Consultas: Exercício 6
SELECT nome, estoque FROM produtos WHERE id_categoria = 3 AND estoque > 40;

-- Consultas: Exercício 7
SELECT COUNT(*) AS total_clientes FROM clientes;

-- Consultas: Exercício 8
SELECT SUM(valor_total) AS faturamento_bruto FROM pedidos;

-- Consultas: Exercício 9
SELECT produtos.nome AS produto, categorias.nome AS categoria FROM produtos INNER JOIN categorias ON produtos.id_categoria = categorias.id_categoria;

-- Consultas: Exercício 10
SELECT pedidos.id_pedido, pedidos.status, pedidos.valor_total FROM pedidos INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente WHERE clientes.nome = 'Ana Silva';

