<p align="center">
  <img width="1980" height="250" src="https://github.com/leslievazquez/SQL_Challenge/blob/main/EmployeeSQL/resources/SQL.png">
</p>

<h1 align ="center"><span>Employee Database:<br/>A Mystery in Two Parts</span></h1>

The purpose of this data analysis was to create an employee SQL database using pgAdmin PostgreSQL Tools based on 6 CSV files from the mock company Pewlett-Hackard. The datasets provided included information on the employees of the corporation from the 1980s and 1990s.

### Data Modeling

The first step of this analysis involved creating an Entity Relationship Diagram (ERD) based on the headers of the data in the 6 CSV files. The ERD was created using the tool on the website [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com). 

### Data Engineering

The second step of this analysis involved creating a table schema for each of the 6 CSV Use the information you have to create a table schema for each of the six CSV files. The schema identifies primary keys vs foreign keys and includes other constraints. After creating the tables, each CSV file was imported into the corresponding SQL table. 

### Data Analysis

The third step of this analysis used the data collected from CSV files that was imported into the SQL database to answer the following questions using SQL queries:

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Data Visualization 

The last step of this data analysis involved using Pandas to create a histogram of the most common salary ranges for employees and a bar chart of the average salary by title. 

As part of this analysis, the SQL database was imported into Pandas using the code below. 

```
from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()
```

The data analysis/visualization in Jupyter Notebook includes a search for the employee ID number `499942` to identify the job title and the salary for this position. 
