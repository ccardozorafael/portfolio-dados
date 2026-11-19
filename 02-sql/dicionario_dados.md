# Dicionário de Dados - Olist E-Commerce

| Arquivo | Linhas | Chave Primária (PK) | Notas |
| :--- | :--- | :--- | :--- |
| olist_customers | 99.442 | customer_id | customer_unique_id identifica o cliente real. |
| olist_order_items | 112.671 | order_id + order_item_id | Um pedido tem múltiplos itens. |
| olist_geolocation | 1.000.164 | (Nenhuma única) | Teorica chave composta (CEP + Lat/Lng.) |
| olist_order_payments | 103.887 | order_id + payment_sequential | Um pedido pode ter múltiplos pagamentos. |
| olist_order_reviews | 99224 | (Nenhuma) | Conecta-se ao order_id. review_id pode ser PK |
| olist_orders | 99.442 | order_id | Tabela central (fatos). |
| olist_products | 32.952 | product_id | Contém erros de grafia originais (ex: lenght). |
| olist_sellers | 3.096 | seller_id | Vendedores parceiros. |
| product_category_translation | 71 | product_category_name | Dicionário PT -> EN. |

_Nota: o arquivo olist_order_reiews.csv possui 104.720 linhas físicas (contadas via terminal), mas o banco de dados possui 99.224 registros lógicos. A diferença ocorre porque alguns comentários de avaliação possuem quebras de linha internas protegidas por aspas._
