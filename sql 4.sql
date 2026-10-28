USE banking_system;  

-- 10. Total number of customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 11. Total balance across all accounts
SELECT SUM(balance) AS total_balance
FROM Accounts;

-- 12. Average account balance
SELECT AVG(balance) AS average_balance
FROM Accounts;

-- 13. Highest and lowest account balance
SELECT
    MAX(balance) AS highest_balance,
    MIN(balance) AS lowest_balance
FROM Accounts;

-- 16. Customer name, account ID, type, and balance
SELECT
    c.name,
    a.account_id,
    a.account_type,
    a.balance
FROM Customers c
JOIN Accounts a
    ON c.customer_id = a.customer_id;

-- 17. Customer and transaction details
SELECT
    c.name,
    t.transaction_id,
    t.amount,
    t.transaction_type
FROM Customers c
JOIN Accounts a
    ON c.customer_id = a.customer_id
JOIN Transactions t
    ON a.account_id = t.account_id;

-- 18. Customer loan details
SELECT
    c.name,
    l.loan_type,
    l.loan_amount,
    l.interest_rate
FROM Customers c
JOIN Loans l
    ON c.customer_id = l.customer_id;

-- 19. Employee and branch details
SELECT
    e.name,
    e.designation,
    b.branch_name,
    b.location
FROM Employees e
JOIN Branches b
    ON e.branch_id = b.branch_id;
    
-- 20. Customers whose account balance is above the
-- average balance of all accounts
SELECT DISTINCT c.name
FROM Customers c
JOIN Accounts a
    ON c.customer_id = a.customer_id
WHERE a.balance > (
    SELECT AVG(balance)
    FROM Accounts
);    
    