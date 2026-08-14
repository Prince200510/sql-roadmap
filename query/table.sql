CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    manager_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    budget DECIMAL(12,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE employee_projects (
    employee_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO departments VALUES
(1, 'IT', 'Mumbai'),
(2, 'HR', 'Pune'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Delhi'),
(5, 'Sales', 'Bangalore');

INSERT INTO employees VALUES
(101, 'Prince', 'prince@gmail.com', 60000, '2022-01-15', 1, NULL),
(102, 'Priya', 'priya@gmail.com', 75000, '2021-06-10', 1, 101),
(103, 'Amit', 'amit@gmail.com', 50000, '2023-03-20', 2, NULL),
(104, 'Sneha', 'sneha@gmail.com', 90000, '2020-11-05', 3, NULL),
(105, 'Rohit', 'rohit@gmail.com', 65000, '2022-08-12', 3, 104),
(106, 'Neha', 'neha@gmail.com', 55000, '2024-01-10', 4, NULL),
(107, 'Vikas', 'vikas@gmail.com', 80000, '2021-09-18', 5, NULL),
(108, 'Pooja', 'pooja@gmail.com', 70000, '2023-07-25', 5, 107),
(109, 'Karan', 'karan@gmail.com', 45000, '2024-05-01', 2, 103),
(110, 'Anjali', 'anjali@gmail.com', 95000, '2019-02-14', 1, 101);

INSERT INTO projects VALUES
(201, 'Website Development', 500000, 1),
(202, 'Mobile App', 800000, 1),
(203, 'Recruitment System', 300000, 2),
(204, 'Financial Dashboard', 600000, 3),
(205, 'Marketing Campaign', 400000, 4),
(206, 'Sales Analytics', 700000, 5);

INSERT INTO employee_projects VALUES
(101, 201, 120),
(101, 202, 80),
(102, 201, 150),
(102, 202, 100),
(103, 203, 120),
(104, 204, 180),
(105, 204, 140),
(106, 205, 100),
(107, 206, 160),
(108, 206, 120),
(110, 202, 200);

