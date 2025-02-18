
CREATE DATABASE IF NOT EXISTS contact_form_db;
USE contact_form_db;


DROP TABLE IF EXISTS contacts;


CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL CHECK (phone REGEXP '^\+?27[0-9]{9}$'),
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO contacts (name, email, phone, message) VALUES
('John Doe', 'john.doe@example.com', '+27821234567', 'Hello, I would like to inquire about your services.'),
('Jane Smith', 'jane.smith@example.com', '+27839876543', 'Can you provide me with more details?'),
('Michael Brown', 'michael.brown@example.com', '+27765432109', 'Looking forward to working with you.');
