create table if not exists Customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    customer_address VARCHAR(255) NOT NULL,
    customer_phone_number VARCHAR(20) NOT NULL,
    customer_email VARCHAR(255) NOT NULL
);

create table if not exists Authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    author_description TEXT NOT NULL
);

create table if not exists Product_Publishers (
    publisher_id SERIAL PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    publisher_phone_number VARCHAR(50) NOT NULL,
    publisher_email VARCHAR(255) NOT NULL,
    publisher_address TEXT NOT NULL
);

create table if not exists Product_Publishing (
    publish_id SERIAL PRIMARY KEY,
    publisher_id INTEGER NOT NULL REFERENCES Product_Publishers(publisher_id),
    publish_date TIMESTAMP NOT NULL DEFAULT NOW()
);

create table if not exists Categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100)
);

create table if not exists Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL UNIQUE,
    product_description TEXT NOT NULL,
    author_id INTEGER NOT NULL REFERENCES Authors(author_id),
    publisher_id INTEGER NOT NULL REFERENCES Product_Publishers(publisher_id),
    product_isbn VARCHAR(100) NOT NULL UNIQUE,
    product_category INTEGER NOT NULL REFERENCES Categories(category_id),
    product_price DECIMAL(10, 2) NOT NULL,
    product_discount BOOLEAN NOT NULL,
    product_discount_percentage DECIMAL(10, 2) NOT NULL
);

create table if not exists Inventories (
    inventory_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL REFERENCES Products(product_id),
    available_status BOOLEAN NOT NULL,
    inventory_quantity INTEGER NOT NULL
);

create table if not exists Payment_Methods (
    payment__method_id SERIAL PRIMARY KEY,
    payment_method_name VARCHAR(100) NOT NULL
);

create table if not exists Payments (
    payment_id SERIAL PRIMARY KEY,
    payment_method_id INTEGER NOT NULL REFERENCES Payment_Methods(payment__method_id),
    payment_date TIMESTAMP NOT NULL DEFAULT NOW(),
    payment_status BOOLEAN NOT NULL
);

create table if not exists Shipping_Companies (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL UNIQUE,
    company_phone_number VARCHAR(50) NOT NULL UNIQUE,
    company_email VARCHAR(100) NOT NULL,
    company_address TEXT NOT NULL
);

create table if not exists Shipping (
    shipping_id SERIAL PRIMARY KEY,
    company_id INTEGER NOT NULL REFERENCES Shipping_Companies(company_id),
    shipping_status BOOLEAN NOT NULL,
    shipping_date TIMESTAMP NOT NULL DEFAULT NOW()
);

create table if not exists Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES Customers(customer_id),
    total_price DECIMAL(100, 2) NOT NULL,
    payment_id INTEGER NOT NULL REFERENCES Payments(payment_id),
    shipping_id INTEGER NOT NULL REFERENCES Shipping(shipping_id),
    order_date TIMESTAMP NOT NULL DEFAULT NOW(),
    order_status BOOLEAN NOT NULL
);

create table if not exists Order_Items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES Orders(order_id),
    product_id INTEGER NOT NULL REFERENCES Products(product_id),
    quantity INTEGER NOT NULL
);

create table if not exists Reviews (
    review_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES Orders(order_id),
    review_rating INTEGER NOT NULL,
    review_text TEXT,
    review_date TIMESTAMP NOT NULL DEFAULT NOW()
);