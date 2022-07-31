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
