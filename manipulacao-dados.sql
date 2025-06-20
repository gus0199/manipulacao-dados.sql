-- INSERÇÃO DE DADOS
INSERT INTO Produto (nome, preco, unidade_medida) VALUES
('Carne', 30.00, 'kg'),
('Óleo', 30.00, 'unidade'),
('Leite', 30.00, 'litros'),
('Alface', 30.00, 'unidade');

INSERT INTO Estoque (id_produto, quantidade) VALUES
(1, 2.00),
(2, 1.00),
(3, 1.50),
(4, 1.00);

-- ALTERAÇÃO DE DADOS
UPDATE Produto
SET preco = 32.00
WHERE nome = 'Leite';

UPDATE Estoque
SET quantidade = 3.00
WHERE id_produto = 1;

-- CONSULTA DE DADOS
SELECT * FROM Produto;

SELECT nome, preco
FROM Produto
WHERE preco > 30.00;

SELECT p.nome, e.quantidade, p.unidade_medida
FROM Produto p
JOIN Estoque e ON p.id_produto = e.id_produto;

-- EXCLUSÃO DE DADOS
DELETE FROM Estoque
WHERE id_produto = 4;

DELETE FROM Produto
WHERE nome = 'Óleo';

-- Fim do script de manipulação de dados
