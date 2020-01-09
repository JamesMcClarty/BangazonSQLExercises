--1--
--SELECT Employee.FirstName, Employee.LastName, Employee.IsSupervisor, D.[Name]
--FROM Employee
--LEFT JOIN Department as D on D.Id = Employee.DepartmentId
--ORDER BY D.[Name], Employee.LastName, Employee.FirstName;

--2--
--SELECT Department.[Name], Department.Budget
--FROM Department
--ORDER BY Department.Budget DESC;

--3--
--SELECT Employee.FirstName, Employee.LastName
--FROM Employee
--WHERE Employee.IsSupervisor = 1;

--4--
--Select Department.[Name], Count(Employee.DepartmentId) as NumberofEmployees
--FROM Employee
--Left Join Department on Department.Id = Employee.DepartmentId
--Group by Department.Name;

--5--
--UPDATE Department
--Set Budget = Budget * 1.20;

--6--
--SELECT Employee.FirstName, Employee.LastName
--FROM Employee
--WHERE Employee.Id NOT IN (SELECT EmployeeId from EmployeeTraining);

--7--
--Select Employee.FirstName, Employee.LastName, Count(EmployeeTraining.EmployeeId) as NumberOfClasses
--FROM Employee
--Left Join EmployeeTraining on EmployeeTraining.EmployeeId = Employee.Id
--Group by Employee.FirstName, Employee.LastName
--HAVING COUNT(EmployeeTraining.EmployeeId)>0;

--8--
--SELECT TrainingProgram.[Name], COUNT(EmployeeTraining.EmployeeId) as NumberOfAttendees
--From TrainingProgram
--LEFT JOIN EmployeeTraining on EmployeeTraining.TrainingProgramId = TrainingProgram.Id
--Group by TrainingProgram.[Name];

--9--
--SELECT TrainingProgram.[Name], COUNT(EmployeeTraining.TrainingProgramId) as Attendees, TrainingProgram.MaxAttendees
--FROM TrainingProgram
--LEFT JOIN EmployeeTraining ON EmployeeTraining.TrainingProgramId = TrainingProgram.Id
--GROUP BY TrainingProgram.[Name], TrainingProgram.MaxAttendees
--HAVING COUNT(EmployeeTraining.TrainingProgramId) = TrainingProgram.MaxAttendees;

--10--
--SELECT TrainingProgram.[Name], TrainingProgram.StartDate
--FROM TrainingProgram
--WHERE TrainingProgram.StartDate > (SELECT GETDATE())
--ORDER BY TrainingProgram.StartDate ASC;

--11--
--INSERT INTO EmployeeTraining (EmployeeId, TrainingProgramId)
--Values(11,1);


--12--
--SELECT TOP 3 TrainingProgram.[Name], COUNT(EmployeeTraining.TrainingProgramId) As Attendees
--FROM TrainingProgram
--LEFT JOIN EmployeeTraining ON TrainingProgram.Id = EmployeeTraining.TrainingProgramId
--GROUP BY TrainingProgram.[Name]
--ORDER BY Attendees DESC;

--13-- 
--SELECT TOP 3 TrainingProgram.[Name], SUM(EmployeeTraining.TrainingProgramId) As Attendees
--FROM TrainingProgram
--INNER JOIN EmployeeTraining ON TrainingProgram.Id = EmployeeTraining.TrainingProgramId
--GROUP BY TrainingProgram.[Name]
--ORDER BY Attendees DESC;

--14--
--SELECT Employee.FirstName, Employee.LastName
--FROM Employee
--WHERE Employee.Id NOT IN (SELECT EmployeeId from ComputerEmployee);
