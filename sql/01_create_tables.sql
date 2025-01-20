-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS olist_ecommerce;

-- Usar o banco
USE olist_ecommerce;

-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS customers (
    customer_id VARCHAR(50) PRIMARY KEY,    -- Identificador único do cliente
    customer_unique_id VARCHAR(50) NOT NULL, -- ID único do cliente
    customer_zip_code_prefix VARCHAR(10),    -- CEP
    customer_city VARCHAR(100),             -- Cidade
    customer_state CHAR(2)                  -- Estado (SP, RJ, etc)
);

SHOW TABLES;

-- Tabela de Produtos
CREATE TABLE IF NOT EXISTS products (
    product_id VARCHAR(50) PRIMARY KEY,        -- ID do produto
    product_category_name VARCHAR(100),        -- Categoria
    product_name_length INT,                   -- Tamanho do nome
    product_description_length INT,            -- Tamanho da descrição
    product_photos_qty INT,                    -- Quantidade de fotos
    product_weight_g INT,                      -- Peso em gramas
    product_length_cm INT,                     -- Comprimento em cm
    product_height_cm INT,                     -- Altura em cm
    product_width_cm INT                       -- Largura em cm
);

-- Tabela de Pedidos
CREATE TABLE IF NOT EXISTS orders (
    order_id VARCHAR(50) PRIMARY KEY,          -- ID do pedido
    customer_id VARCHAR(50),                   -- ID do cliente
    order_status VARCHAR(20),                  -- Status do pedido
    order_purchase_timestamp DATETIME,         -- Data da compra
    order_approved_at DATETIME,                -- Data de aprovação
    order_delivered_carrier_date DATETIME,     -- Data de entrega à transportadora
    order_delivered_customer_date DATETIME,    -- Data de entrega ao cliente
    order_estimated_delivery_date DATETIME,    -- Data estimada de entrega
    delivery_time INT,                         -- Tempo de entrega
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  -- Ligação com tabela customers
);

-- Tabela de Itens do Pedido
CREATE TABLE IF NOT EXISTS order_items (
    order_id VARCHAR(50),                      -- ID do pedido
    order_item_id INT,                         -- Número do item no pedido
    product_id VARCHAR(50),                    -- ID do produto
    seller_id VARCHAR(50),                     -- ID do vendedor
    shipping_limit_date DATETIME,              -- Data limite de envio
    price DECIMAL(10,2),                       -- Preço
    freight_value DECIMAL(10,2),               -- Valor do frete
    PRIMARY KEY (order_id, order_item_id),     -- Chave primária composta
    FOREIGN KEY (order_id) REFERENCES orders(order_id),        -- Ligação com tabela orders
    FOREIGN KEY (product_id) REFERENCES products(product_id)   -- Ligação com tabela products
);

-- Verificar todas as tabelas criadas
SHOW TABLES;

-- Verificar estrutura de cada tabela
DESCRIBE customers;
DESCRIBE products;
DESCRIBE orders;
DESCRIBE order_items;