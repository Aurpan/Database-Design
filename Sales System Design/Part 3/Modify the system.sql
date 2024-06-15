
-- Make CustomerID column Nullable in Sale Table
ALTER TABLE Sale
ALTER COLUMN CustomerID INT NULL;


-- Add multiple Contact Number for Employee
CREATE TABLE EmployeeContact 
(
	ContactID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	EmployeeID INT NOT NULL,
	ContactNumber VARCHAR(15) NOT NULL
)

ALTER TABLE
    EmployeeContact ADD CONSTRAINT "employee_employeeid_foreign" 
	FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID);

-- Data migration
INSERT INTO EmployeeContact
SELECT
    e.EmployeeID, ltrim(value) AS SingleValue
FROM
    Employee e
CROSS APPLY
    STRING_SPLIT(e.ContactNumber, ',');


ALTER TABLE Employee
DROP COLUMN COntactNumber


