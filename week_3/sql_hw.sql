--MVP--
--Q1--

SELECT*
FROM employees 
WHERE department = 'Human Resources';

--Q2--

SELECT
  first_name,
  last_name,
  country,
  department
FROM employees 
WHERE department = 'Legal';

--Q3--

SELECT 
  count(employees)
  FROM employees 
  WHERE country = 'Portugal';
  
  --Q4--
  
SELECT
  count(employees)
  FROM employees 
  WHERE (country = 'Portugal' OR country = 'Spain');
  
  --Q5--
  SELECT 
    count(id)
    FROM pay_details
    WHERE local_account_no IS NULL; 

--Q6--
SELECT 
    count(id)
    FROM pay_details
    WHERE iban IS NULL AND local_account_no IS NULL; 

--Q7--
SELECT 
first_name,
last_name
FROM employees
ORDER BY last_name ASC NULLS LAST;

--Q8--
SELECT
first_name,
last_name,
country
FROM employees 
ORDER BY country ASC NULLS LAST,
last_name ASC NULLS LAST;
 
---Q9---
  
SELECT*
FROM employees 
ORDER BY salary DESC NULLS LAST
LIMIT 10

---Q10---

SELECT 
first_name,
last_name,
salary
FROM employees
WHERE country = 'Hungary'
ORDER BY salary DESC;

---Q11--

SELECT
count(employees)
FROM employees 
WHERE first_name LIKE 'F%'


--Q12--
SELECT *
FROM employees
WHERE email LIKE '%yahoo%'


--Q13--

SELECT
count(employees)
FROM employees 
WHERE pension_enrol = TRUE AND country NOT IN ('France', 'Germany');

-- Q14--

SELECT
max (salary)
FROM employees 
WHERE pension_enrol = TRUE AND country NOT IN ('France', 'Germany') AND
department = 'Engineering' AND fte_hours = 1;

--Q15--

SELECT 
  first_name,
  last_name,
  fte_hours,
  salary,
  fte_hours * salary AS effective_yearly_salary
FROM employees


  