
INSERT INTO "Brand" ("Code", "Name") VALUES
('BR001', 'Brand A'),
('BR002', 'Brand B'),
('BR003', 'Brand C');

INSERT INTO Product ("Code", "Name", "MfgDate", "ExpDate", "UnitPrice", "PurchasePrice", "Discount", "BrandID", "AvailableStock") VALUES
('P001', 'Product 1', '2023-01-01', '2024-01-01', 10.0, 8.0, 0.1, 1, 100),
('P002', 'Product 2', '2023-02-01', '2024-02-01', 15.0, 12.0, 0.15, 2, 200),
('P003', 'Product 3', '2023-03-01', '2024-03-01', 20.0, 16.0, 0.2, 3, 150);


INSERT INTO "Customer" ("FirstName", "LastName", "DoB", "Email", "ContactNumber", "Address") VALUES
('John', 'Doe', '1985-05-15', 'john.doe@example.com', '1234567890', '123 Main St'),
('Jane', 'Smith', '1990-08-20', 'jane.smith@example.com', '0987654321', '456 Elm St'),
('Alice', 'Johnson', '1975-12-05', 'alice.johnson@example.com', '5678901234', '789 Oak St');


INSERT INTO "Employee" ("FirstName", "LastName", "DoB", "Email", "ContactNumber", "Address") VALUES
('Mike', 'Brown', '1980-07-10', 'mike.brown@example.com', '1112223333', '101 Pine St'),
('Sarah', 'Davis', '1987-11-25', 'sarah.davis@example.com', '2223334444', '202 Maple St'),
('Tom', 'Wilson', '1992-03-17', 'tom.wilson@example.com', '3334445555', '303 Cedar St');


INSERT INTO "Sale" ("EmployeeID", "CustomerID", "SaleDate", "TotalAmout") VALUES
(1, 1, '2024-06-01', 100.0),
(2, 2, '2024-06-05', 150.0),
(3, 3, '2024-06-10', 200.0);


INSERT INTO "SaleDetail" ("ProductID", "Quantity", "UnitPrice", "SaleID") VALUES
(1, 5, 10.0, 1),
(2, 3, 15.0, 2),
(3, 10, 20.0, 3),
(1, 5, 20.0, 3),
(2, 7, 20.0, 3);

