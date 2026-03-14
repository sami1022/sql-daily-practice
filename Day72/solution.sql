-- 1. Basic recursive hierarchy
WITH RECURSIVE employee_hierarchy AS (
    
    -- Anchor query (top-level managers)
    SELECT employee_id, employee_name, manager_id, 1 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive query
    SELECT e.employee_id, e.employee_name, e.manager_id, eh.level + 1
    FROM employees e
    JOIN employee_hierarchy eh
    ON e.manager_id = eh.employee_id
)

SELECT *
FROM employee_hierarchy;

-- 2. Employees under a specific manager
WITH RECURSIVE subordinates AS (

    SELECT employee_id, employee_name, manager_id
    FROM employees
    WHERE manager_id = 1

    UNION ALL

    SELECT e.employee_id, e.employee_name, e.manager_id
    FROM employees e
    JOIN subordinates s
    ON e.manager_id = s.employee_id
)

SELECT *
FROM subordinates;

-- 3. Show hierarchy level
WITH RECURSIVE org_chart AS (

    SELECT employee_id, employee_name, manager_id, 1 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT e.employee_id, e.employee_name, e.manager_id, level + 1
    FROM employees e
    JOIN org_chart o
    ON e.manager_id = o.employee_id
)

SELECT *
FROM org_chart;

-- 4. Management chain for employee
WITH RECURSIVE manager_chain AS (

    SELECT employee_id, employee_name, manager_id
    FROM employees
    WHERE employee_id = 10

    UNION ALL

    SELECT e.employee_id, e.employee_name, e.manager_id
    FROM employees e
    JOIN manager_chain mc
    ON e.employee_id = mc.manager_id
)

SELECT *
FROM manager_chain;
