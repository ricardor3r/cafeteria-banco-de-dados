-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT
);

-- Inserção de produtos
INSERT INTO produtos (id, nome, preco, descricao) VALUES
(1, 'Café Expresso', 5.50, 'Café forte servido em dose pequena'),
(2, 'Pão de Queijo', 3.00, 'Pão de queijo tradicional mineiro'),
(3, 'Cappuccino', 7.00, 'Café com leite vaporizado e espuma');

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    produto_id INTEGER,
    quantidade INTEGER,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-06-10'),
(2, 2, 1, '2025-06-11'),
(3, 3, 1, '2025-06-12');
