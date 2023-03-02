# Employee Management System

- The Employee Management System is a console-based program that allows an admin to create and manage two types of employees - Engineers and Managers. The system enables the admin to add, edit, and delete employees from the system.

## Functionalities
- Calculate salary of the employees (based on their salary structure [Basic, HRA, Travel Allowance, Special Allowance] & total present days)
- Export the employee details onto your computer (by default the data file is created at Desktop)

## Run
1. Clone/Download the zip folder & extract all files [FranConnectCoding.jar, SnapShot, Readme.md].
2. Open terminal & cd to where you extracted the file
3. To run the .jar file, type : java -jar FranConnectCoding.jar

## Program Flow
- An Admin object is created
- This Admin object then creates an Accountant object to perform Salary calculations.
- User is prompted to create new Employees [Engineer / Manager] & provide their Salary strucutre.
- User is prompted to display Employee details, Calculate salary, Export Employee data.

#### Admin  
- Admin has the following privileges:
  - Add new Employees [Engineer, Manager] to the company
  - Provide unique employee id to each Employee
  - Calculate salary of Employee
  - Export the details of the Employee
  
 #### Accountant
- Accountant object is created by Admin to perform salary calculations
- Salary is calculated for each Employee according to their Salary structure [BASIC, HRA, Travel Allowance, Special Allowance] & Total number of Present days.
