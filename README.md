# Employee-Portal
Employee portal to add , modify , display employee details using shell scripting.

This portal can be used to 
1. Add employee details like employee ID , employee name , employee designation and employee salary and validate it.
2. Display the details in the portal by providing the employee ID.
3. Modify the existing employee details with the help op Employee ID.

The entries are stored in a file in the specified format :
<Employee ID>:<Employee name>:<Employee salary>:<Employee designation>
  
Validation criteria :
  1. Employee name can only contain alphabets and should be max 25 characters long.
  2. Employee salary can only contain digits from [0-9] and (.) decimal point.
  3. Employee designation can only contain 3 characters ( mgr , dev etc ).

Employee ID will be assigned on an incremental manner starting from 1000.

