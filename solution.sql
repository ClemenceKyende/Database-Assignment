SET @next_customer_id := (SELECT IFNULL(MAX(customer_id), 0) + 1 FROM Customers);

INSERT INTO Customers (customer_id, name, city)
VALUES (@next_customer_id, 'Alice Smith', 'New York City');

ALTER TABLE Customers MODIFY COLUMN customer_id INT AUTO_INCREMENT;

SET @john_doe_id := (SELECT customer_id FROM Customers WHERE name = 'John Doe');

UPDATE Customers
SET city = 'New York City'
WHERE customer_id = @john_doe_id;

SELECT *
FROM Customers
WHERE city = 'Chicago';

DELETE FROM Customers
WHERE customer_id = 1;
