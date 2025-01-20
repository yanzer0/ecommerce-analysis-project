# Estrutura do Banco de Dados

## Visão Geral
Base de dados E-commerce Olist com informações de pedidos, clientes, produtos e vendedores.

## Tabelas Principais
1. **orders**
   - Pedidos realizados
   - Status e timestamps
   - Campos principais: order_id, customer_id, order_status, order_purchase_timestamp

2. **customers**
   - Dados dos clientes
   - Localização geográfica
   - Campos principais: customer_id, customer_unique_id, customer_state

3. **order_items**
   - Itens dos pedidos
   - Preços e fretes
   - Campos principais: order_id, product_id, price, freight_value

4. **products**
   - Catálogo de produtos
   - Categorias
   - Campos principais: product_id, product_category_name

## Relacionamentos
- orders -> customers (customer_id)
- orders -> order_items (order_id)
- order_items -> products (product_id)
- order_items -> sellers (seller_id)

## Queries Importantes
1. Vendas por Estado:
SELECT 
    c.customer_state,
    COUNT(DISTINCT o.order_id) as total_pedidos,
    ROUND(SUM(oi.price + oi.freight_value), 2) as receita_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY receita_total DESC;

2. Vendas por Categoria:
SELECT 
    p.product_category_name,
    COUNT(DISTINCT o.order_id) as total_pedidos,
    ROUND(SUM(oi.price + oi.freight_value), 2) as receita_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'delivered'
GROUP BY p.product_category_name
ORDER BY receita_total DESC;