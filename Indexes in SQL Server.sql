CREATE TABLE Employee_Details
(
	Emp_Id INT PRIMARY KEY IDENTITY(1,1),
	DeptNo INT NOT NULL
);

ALTER TABLE Employee_Details ADD job VARCHAR(50);

SELECT * FROM Employee_Details;

INSERT INTO Employee_Details(DeptNo) VALUES
(5),(4),(3),(8),(4);

UPDATE Employee_Details SET job = 'HR' WHERE Emp_Id = 1;
UPDATE Employee_Details SET job = 'CTO' WHERE Emp_Id = 2;
UPDATE Employee_Details SET job = 'Senior Developer' WHERE Emp_Id = 3;
UPDATE Employee_Details SET job = 'Finance' WHERE Emp_Id = 4;

--Create Index (Simple Indexes)
create index DNoINdex on Employee_Details(DeptNo)


--Composite Indexes
create index dnotedxi on Employee_Details(deptno asc, job desc)



--Altering an Index
alter index DNoINdex on Employee_Details rebuild

--Getting a list of indexes
sp_helpindex 'Employee_Details'

--Deleting indexes
drop index dnotedxi on Employee_Details