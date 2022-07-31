-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;


SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
    retirement_titles.first_name,
    retirement_titles.last_name,
    retirement_titles.title
INTO unique_titles
FROM retirement_titles
ORDER BY retirement_titles.emp_no, retirement_titles.to_date DESC;
SELECT * FROM unique_titles


SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_title
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

SELECT e.emp_no,
       e.first_name,
       e.last_name,
	   e.birth_date,
       t.title,
       t.from_date,
       t.to_date
INTO mentorship
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by e.emp_no;

SELECT DISTINCT ON (mentorship.emp_no) mentorship.emp_no,
    mentorship.first_name,
    mentorship.last_name,
    mentorship.title,
	mentorship.birth_date,
	mentorship.from_date,
	mentorship.to_date
INTO mentorship_eligible
FROM mentorship
ORDER BY mentorship.emp_no, mentorship.to_date DESC;
SELECT * FROM mentorship_eligible
