--MVP---
--Q1-a-

SELECT 
e.first_name,
e.last_name,
t.name AS team_name 
FROM employees AS e
RIGHT JOIN teams AS t
ON e.team_id = t.id ;


--MVP---
--Q1-b-

SELECT 
e.first_name,
e.last_name, 
t.name AS team_name 
FROM employees AS e 
RIGHT JOIN teams AS t
ON e.team_id = t.id  
WHERE e.pension_enrol = TRUE;

---MVP--
---Q1-c--

SELECT 
e.first_name,
e.last_name, 
t.name AS team_name 
FROM employees AS e 
RIGHT JOIN teams AS t
ON e.team_id = t.id  
WHERE CAST(t.charge_cost AS INT) > 80;


--MVP---
--Q2-a-

SELECT 
e.*,
p.local_account_no,
p.local_sort_code 
FROM employees AS e
LEFT JOIN pay_details AS p 
ON e.pay_detail_id = p.id;

--MVP---
--Q2-b-

SELECT 
e.*,
p.local_account_no,
p.local_sort_code,
t.name AS team_name 
FROM (employees AS e
LEFT JOIN pay_details AS p 
ON e.pay_detail_id = p.id)
LEFT JOIN teams AS t 
ON e.team_id = t.id;

--MVP--
--Q3-a--

SELECT 
e.id,
t.name AS team_name 
FROM employees AS e
LEFT JOIN teams AS t 
ON e.team_id = t.id;


--MVP--
--Q3-b--

SELECT 
count(e.id),
t.name AS team_name 
FROM employees AS e
LEFT JOIN teams AS t 
ON e.team_id = t.id
GROUP BY t.name
ORDER BY t.name;

--MVP--
--Q3-c--

SELECT 
count(e.id),
t.name AS team_name 
FROM employees AS e
LEFT JOIN teams AS t 
ON e.team_id = t.id
GROUP BY t.name
ORDER BY count(e.id);


--MVP--
--Q4-a--

SELECT 
t.id AS team_id,
t.name AS team_name,
count(e.id)
FROM teams AS t
LEFT JOIN employees AS e
ON t.id = e.team_id
GROUP BY t.id;  

--MVP--
--Q4-b--

SELECT 
t.id AS team_id,
t.name AS team_name,
count(e.id),
CAST(t.charge_cost AS INT) * count(e.id) AS total_day_charge
FROM teams AS t
LEFT JOIN employees AS e
ON t.id = e.team_id
GROUP BY t.id;






