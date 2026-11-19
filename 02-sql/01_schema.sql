CREATE TABLE sellers (
	seller_id TEXT PRIMARY KEY,
	seller_zip_code_prefix TEXT,
	seller_city TEXT,
	seller_state TEXT
);

CREATE TABLE customers (
	customer_id TEXT PRIMARY KEY,
	customer_unique_id TEXT,
	customer_zip_code_prefix TEXT,
	customer_city TEXT,
	customer_state TEXT
);

CREATE TABLE order_items (
	order_id TEXT,
	order_item_id TEXT,
	product_id TEXT,
	seller_id TEXT,
	shipping_limit_date TEXT,
	price REAL,
	freight_value REAL,
	PRIMARY KEY (order_id, order_item_id)
);

CREATE TABLE geolocation (
	geolocation_zip_code_prefix TEXT,
	geolocation_lat REAL,
	geolocation_lng REAL,
	geolocation_city TEXT,
	geolocation_state TEXT
);

CREATE TABLE order_payments (
	order_id TEXT,
	payment_sequential INTEGER,
	payment_type TEXT,
	payment_installments INTEGER,
	payment_value REAL,
	PRIMARY KEY (order_id, payment_sequential)
);

CREATE TABLE order_reviews (
	review_id TEXT,
	order_id TEXT,
	review_score INTEGER,
	review_comment_title TEXT,
	review_comment_message TEXT,
	review_creation_date TEXT,
	review_answer_timestamp TEXT
);

CREATE TABLE orders (
	order_id TEXT PRIMARY KEY,
	customer_id TEXT,
	order_status TEXT,
	order_purchase_timestamp TEXT,
	order_approved_at TEXT,
	order_delivered_carrier_date TEXT,
	order_delivered_customer_date TEXT,
	order_estimated_delivery_date TEXT
);

CREATE TABLE products (
	product_id TEXT PRIMARY KEY,
	product_category_name TEXT,
	product_name_lenght INTEGER,
	product_description_lenght INTEGER,
	product_photos_qty INTEGER,
	product_weight_g REAL,
	product_length_cm REAL,
	product_height_cm REAL,
	product_width_cm REAL
);

CREATE TABLE product_category_name_translation (
	product_category_name TEXT PRIMARY KEY,
	product_category_name_english TEXT
);
