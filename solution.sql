-- Employee table is already provided for you.
-- Do NOT modify the table structure.

DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- =========================================================
-- TASK
-- =========================================================
-- Create a trigger that automatically displays a message
-- after a new employee record is inserted into Employee.
--
-- Expected message format:
--
-- Employee inserted: <employee_name>
--
-- Example:
-- Employee inserted: Arun
--
-- Write your trigger below.
-- =========================================================


-- YOUR CODE STARTS HERE



-- YOUR CODE ENDS HERE
