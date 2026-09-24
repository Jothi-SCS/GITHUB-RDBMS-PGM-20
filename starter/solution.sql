DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE OR REPLACE FUNCTION employee_insert_message()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Employee inserted: %', NEW.emp_name;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employee_after_insert
AFTER INSERT ON Employee
FOR EACH ROW
EXECUTE FUNCTION employee_insert_message();
