USE banking_system;
INSERT INTO Customers
(name, phone, email, city, date_of_birth)
VALUES
('Rahul', '9876543210', 'rahul@gmail.com',
 'Hyderabad', '2000-05-15'),
('Priya', '9876543211', 'priya@gmail.com',
 'Chennai', '1997-08-20'),
('Arjun', '9876543212', 'arjun@gmail.com',
 'Hyderabad', '2001-12-10'),
('Sneha', '9876543213', 'sneha@gmail.com',
 'Bangalore', '1999-03-25'),
('Kiran', '9876543214', 'kiran@gmail.com',
 'Mumbai', '1996-07-18');

INSERT INTO Branches (branch_name, location)
VALUES
('Hyderabad Main', 'Hyderabad'),
('Chennai Central', 'Chennai'),
('Bangalore Branch', 'Bangalore');

INSERT INTO Employees
(name, designation, salary, branch_id)
VALUES
('Ramesh', 'Manager', 60000, 1),
('Suresh', 'Cashier', 35000, 1),
('Meena', 'Accountant', 45000, 2),
('Anil', 'Clerk', 30000, 3);

INSERT INTO Accounts
(customer_id, account_type, balance)
VALUES
(1, 'Savings', 75000),
(1, 'Current', 40000),
(2, 'Savings', 90000),
(3, 'Savings', 25000),
(4, 'Current', 120000),
(5, 'Savings', 55000);

INSERT INTO Transactions
(account_id, amount, transaction_type)
VALUES
(1, 10000, 'credit'),
(1, 2000, 'debit'),
(2, 5000, 'credit'),
(3, 15000, 'credit'),
(4, 3000, 'debit'),
(5, 20000, 'credit');

INSERT INTO Loans
(customer_id, loan_type, loan_amount, interest_rate)
VALUES
(1, 'Home Loan', 1500000, 8.50),
(2, 'Personal Loan', 200000, 12.00),
(3, 'Car Loan', 500000, 9.25),
(5, 'Education Loan', 300000, 7.50);