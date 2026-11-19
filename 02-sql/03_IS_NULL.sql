UPDATE orders SET order_approved_at = NULL WHERE order_approved_at = '';
UPDATE orders SET order_delivered_carrier_date = NULL WHERE order_delivered_carrier_date = '';
UPDATE orders SET order_delivered_customer_date = NULL WHERE order_delivered_customer_date = '';

UPDATE products SET product_weight_g = NULL WHERE product_weight_g = '';
UPDATE products SET product_length_cm = NULL WHERE product_length_cm = '';
UPDATE products SET product_height_cm = NULL WHERE product_height_cm = '';
UPDATE products SET product_width_cm = NULL WHERE product_width_cm = '';
