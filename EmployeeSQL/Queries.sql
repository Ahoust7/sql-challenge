--Data Analysis 
--1: List the employee number, last name, first name, sex, and salary of each employee.

Select "Employees".emp_no, 
"Employees".last_name, 
"Employees".first_name,
"Employees".sex,
"Salaries".salary
From "Employees"
Left Join "Salaries" ON
"Employees".emp_no = "Salaries".emp_no
Order by emp_no;

--2: List the first name, last name, and hire date for the employees who were hired in 1986.
Select emp_no,
first_name,
last_name,
hire_date
From "Employees"
Where hire_date Like '%1986'
Order by emp_no;

--3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select "Departments".dept_no,
"Departments".dept_name,
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name
from "Department_Manager"
Left Join "Departments" On
"Department_Manager".dept_no = "Departments".dept_no
Left Join "Employees" On
"Department_Manager".emp_no = "Employees".emp_no

--4:List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select "Department_Employee".dept_no,
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
from "Department_Employee"
Left Join "Departments" On
"Department_Employee".dept_no = "Departments".dept_no
Left Join "Employees" On
"Department_Employee".emp_no = "Employees".emp_no
Order by dept_no;

--5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name,
last_name,
sex
From "Employees"
Where first_name = 'Hercules'
AND last_name Like 'B%'
Order by Last_name;

--6:List each employee in the Sales department, including their employee number, last name, and first name.
Select "Departments".dept_name,
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name
From "Departments"
Left Join "Department_Employee" On
"Departments".dept_no = "Department_Employee".dept_no
Left Join "Employees" On
"Department_Employee".emp_no = "Employees".emp_no
Where dept_name = 'Sales'
Order by emp_no;


--7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select "Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
From "Employees" 
Left Join "Department_Employee" ON
"Department_Employee".emp_no = "Employees".emp_no
Left Join "Departments" On
"Departments".dept_no = "Department_Employee".dept_no
Where dept_name in ('Sales', 'Development')

--8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, Count (last_name)
From "Employees"
Group By last_name
Order by count DESC


