use loja_tech;

DELIMITER //
CREATE PROCEDURE listar_categorias_ativas()
BEGIN
    SELECT id_categoria, nome, descricao
    FROM categorias
    WHERE ativo = TRUE
    ORDER BY nome ASC;
END //
DELIMITER ;

CALL listar_categorias_ativas();

-- ----------------------------------------------------------

DELIMITER //
CREATE PROCEDURE buscar_pedidos_por_status(IN p_status VARCHAR(20))
BEGIN
    SELECT id_pedido, id_cliente, data_pedido, valor_total
    FROM pedidos
    WHERE status = p_status;
END //
DELIMITER ;

CALL buscar_pedidos_por_status('pendente');

-- ----------------------------------------------------------

DELIMITER //
CREATE PROCEDURE inserir_categoria(
    IN p_nome VARCHAR(100),
    IN p_descricao TEXT
)
BEGIN
    INSERT INTO categorias (nome, descricao)
    VALUES (p_nome, p_descricao);
END //
DELIMITER ;

CALL inserir_categoria('Acessórios', 'Acessórios para computadores e celulares');

-- ----------------------------------------------------------

DELIMITER //
CREATE PROCEDURE atualizar_telefone_cliente(
    IN p_id_cliente INT,
    IN p_telefone VARCHAR(15)
)
BEGIN
    UPDATE clientes
    SET telefone = p_telefone
    WHERE id_cliente = p_id_cliente;
END //
DELIMITER ;

CALL atualizar_telefone_cliente(1, '11999999999');

-- ----------------------------------------------------------

DELIMITER //
CREATE PROCEDURE contar_produtos_categoria(
    IN p_id_categoria INT,
    OUT p_total INT
)
BEGIN
    SELECT COUNT(*)
    INTO p_total
    FROM produtos
    WHERE id_categoria = p_id_categoria;
END //
DELIMITER ;

CALL contar_produtos_categoria(3, @total);

SELECT @total AS total_produtos;
