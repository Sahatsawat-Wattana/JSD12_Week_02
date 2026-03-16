INSERT INTO Customers (customer_name, customer_address, customer_phone_number, customer_email) VALUES
('John Smith', '123 Main St, New York, USA', '+1-555-1234', 'john@example.com'),
('Alice Johnson', '45 Sunset Ave, Los Angeles, USA', '+1-555-5678', 'alice@example.com'),
('Michael Brown', '78 Market St, Chicago, USA', '+1-555-9012', 'michael@example.com'),
('Sophia Davis', '22 River Rd, Boston, USA', '+1-555-3456', 'sophia@example.com'),
('Daniel Wilson', '90 Lake St, Seattle, USA', '+1-555-7890', 'daniel@example.com');

INSERT INTO Authors (author_name, author_description) VALUES
('George Orwell', 'English novelist and essayist'),
('J.K. Rowling', 'British author known for Harry Potter'),
('Haruki Murakami', 'Japanese writer'),
('Stephen King', 'American horror novelist'),
('Agatha Christie', 'British mystery writer');

INSERT INTO Product_Publishers (publisher_name, publisher_phone_number, publisher_email, publisher_address) VALUES
('Penguin Books', '+44-1111-2222', 'contact@penguin.com', 'London, UK'),
('HarperCollins', '+1-212-207-7000', 'info@harpercollins.com', 'New York, USA'),
('Random House', '+1-212-572-2000', 'contact@randomhouse.com', 'New York, USA'),
('Macmillan Publishers', '+44-020-7014-6000', 'info@macmillan.com', 'London, UK'),
('Simon & Schuster', '+1-212-698-7000', 'info@simonandschuster.com', 'New York, USA');

INSERT INTO Product_Publishing (publisher_id) VALUES
(1),
(2),
(3),
(4),
(5);

INSERT INTO Categories (category_name) VALUES
('Fiction'),
('Fantasy'),
('Mystery'),
('Horror'),
('Science Fiction');

INSERT INTO Products 
(product_name, product_description, author_id, publisher_id, product_isbn, product_category, product_price, product_discount, product_discount_percentage)
VALUES
('1984', 'Dystopian novel', 1, 1, 'ISBN-1111', 5, 19.99, true, 10),
('Harry Potter and the Sorcerers Stone', 'Fantasy novel', 2, 2, 'ISBN-2222', 2, 29.99, false, 0),
('Kafka on the Shore', 'Magical realism novel', 3, 3, 'ISBN-3333', 1, 24.50, true, 5),
('The Shining', 'Horror novel', 4, 4, 'ISBN-4444', 4, 21.75, false, 0),
('Murder on the Orient Express', 'Mystery detective novel', 5, 5, 'ISBN-5555', 3, 18.00, true, 15);

INSERT INTO Inventories (product_id, available_status, inventory_quantity) VALUES
(1, true, 100),
(2, true, 200),
(3, true, 150),
(4, true, 120),
(5, true, 80);

INSERT INTO Payment_Methods (payment_method_name) VALUES
('Credit Card'),
('Debit Card'),
('PayPal'),
('Bank Transfer'),
('Cash on Delivery');

INSERT INTO Payments (payment_method_id, payment_status) VALUES
(1, true),
(2, true),
(3, true),
(4, false),
(5, true);

INSERT INTO Shipping_Companies (company_name, company_phone_number, company_email, company_address) VALUES
('DHL', '+49-228-902435', 'support@dhl.com', 'Bonn, Germany'),
('FedEx', '+1-800-463-3339', 'contact@fedex.com', 'Memphis, USA'),
('UPS', '+1-800-742-5877', 'info@ups.com', 'Atlanta, USA'),
('USPS', '+1-800-275-8777', 'support@usps.com', 'Washington DC, USA'),
('EMS', '+81-03-1234-5678', 'contact@ems.com', 'Tokyo, Japan');

INSERT INTO Shipping (company_id, shipping_status) VALUES
(1, true),
(2, true),
(3, false),
(4, true),
(5, true);

INSERT INTO Orders (customer_id, total_price, payment_id, shipping_id, order_status) VALUES
(1, 39.98, 1, 1, true),
(2, 29.99, 2, 2, true),
(3, 24.50, 3, 3, false),
(4, 21.75, 4, 4, true),
(5, 18.00, 5, 5, true);

INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

INSERT INTO Reviews (order_id, review_rating, review_text) VALUES
(1, 5, 'Excellent book!'),
(2, 4, 'Very enjoyable read'),
(3, 5, 'Amazing storytelling'),
(4, 4, 'Very scary and engaging'),
(5, 5, 'Classic mystery, loved it');