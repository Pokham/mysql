CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
    );
    
INSERT INTO employees(first_name, last_name,age) VALUES
('Dora', 'Smith', 58);
    
    
CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY_KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255),
    );