USE banking_system; 
-- 1. Display all customers
SELECT * FROM Customers;

-- 2. Display customer name, phone, and email
SELECT name, phone, email
FROM Customers;

-- 3. Customers from Hyderabad
SELECT *
FROM Customers
WHERE city = 'Hyderabad';

-- 4. Savings accounts
SELECT *
FROM Accounts
WHERE account_type = 'Savings';

-- 5. Accounts with balance greater than ₹50,000
SELECT *
FROM Accounts
WHERE balance > 50000;

-- 6. Credit transactions
SELECT *
FROM Transactions
WHERE transaction_type = 'credit';

-- 7. Employees earning more than ₹40,000
SELECT *
FROM Employees
WHERE salary > 40000;

-- 8. Customers born after 1 January 1998
SELECT *
FROM Customers
WHERE date_of_birth > '1998-01-01';

-- 9. Accounts ordered by balance, highest first
SELECT *
FROM Accounts
ORDER BY balance DESC;