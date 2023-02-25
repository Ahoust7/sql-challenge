-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

Drop Table "Departments"

CREATE TABLE "Departments" (
    "dept_no" Varchar (10)   NOT NULL,
    "dept_name" Varchar (30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

Drop Table "Department_Employee"

CREATE TABLE "Department_Employee" (
    "emp_no" Integer   NOT NULL,
    "dept_no" Varchar (10)   NOT NULL
);

Drop Table "Department_Manager"
CREATE TABLE "Department_Manager" (
    "dept_no" Varchar (10)   NOT NULL,
    "emp_no" Integer   NOT NULL
);

Drop Table "Employees" Cascade

CREATE TABLE "Employees" (
    "emp_no" Integer   NOT NULL,
    "emp_title" Varchar (30)  NOT NULL,
    "birth_date" Varchar (30)  NOT NULL,
    "first_name" Varchar (30)  NOT NULL,
    "last_name" Varchar (30)  NOT NULL,
    "sex" Varchar (2)  NOT NULL,
    "hire_date" Varchar (30)  NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

Drop Table "Salaries"

CREATE TABLE "Salaries" (
    "emp_no" Integer   NOT NULL,
    "salary" Integer   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);


Drop Table "Titles"

CREATE TABLE "Titles" (
    "title_id" Varchar (10)  NOT NULL,
    "title" Varchar (30)  NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_title_id" FOREIGN KEY("title_id")
REFERENCES "Employees" ("emp_title");

