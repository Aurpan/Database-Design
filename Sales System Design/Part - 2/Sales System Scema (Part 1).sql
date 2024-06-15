CREATE TABLE "SaleDetail"(
    "DetailID" INT NOT NULL IDENTITY(1, 1),
    "ProductID" INT NOT NULL,
    "Quantity" INT NOT NULL,
    "UnitPrice" FLOAT NOT NULL,
    "SaleID" INT NOT NULL
);
ALTER TABLE
    "SaleDetail" ADD CONSTRAINT "saledetail_detailid_primary" PRIMARY KEY("DetailID");
CREATE TABLE "Employee"(
    "EmployeeID" INT NOT NULL IDENTITY(1, 1),
    "FirstName" NVARCHAR(255) NOT NULL,
    "LastName" NVARCHAR(255) NOT NULL,
    "DoB" DATE NOT NULL,
    "Email" VARCHAR(255) NOT NULL,
    "ContactNumber" VARCHAR(255) NOT NULL,
    "Address" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Employee" ADD CONSTRAINT "employee_employeeid_primary" PRIMARY KEY("EmployeeID");
CREATE TABLE "Product"(
    "ProductID" INT NOT NULL  IDENTITY(1, 1),
    "Code" VARCHAR(255) NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "MfgDate" DATE NOT NULL,
    "ExpDate" DATE NOT NULL,
    "UnitPrice" FLOAT NOT NULL,
    "PurchasePrice" FLOAT NOT NULL,
    "Discount" FLOAT NOT NULL,
    "BrandID" INT NOT NULL,
    "AvailableStock" INT NOT NULL
);
ALTER TABLE
    "Product" ADD CONSTRAINT "product_productid_primary" PRIMARY KEY("ProductID");
CREATE TABLE "Brand"(
    "BrandID" INT NOT NULL IDENTITY(1, 1),
    "Code" VARCHAR(255) NOT NULL,
    "Name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Brand" ADD CONSTRAINT "brand_brandid_primary" PRIMARY KEY("BrandID");
CREATE TABLE "Sale"(
    "SaleID" INT NOT NULL IDENTITY(1, 1),
    "EmployeeID" INT NOT NULL,
    "CustomerID" INT NOT NULL,
    "SaleDate" DATE NOT NULL,
    "TotalAmount" FLOAT NOT NULL
);
ALTER TABLE
    "Sale" ADD CONSTRAINT "sale_saleid_primary" PRIMARY KEY("SaleID");
CREATE TABLE "Customer"(
    "CustomerID" INT NOT NULL  IDENTITY(1, 1),
    "FirstName" NVARCHAR(255) NOT NULL,
    "LastName" NVARCHAR(255) NOT NULL,
    "DoB" DATE NOT NULL,
    "Email" VARCHAR(255) NOT NULL,
    "ContactNumber" VARCHAR(255) NOT NULL,
    "Address" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Customer" ADD CONSTRAINT "customer_customerid_primary" PRIMARY KEY("CustomerID");
ALTER TABLE
    "SaleDetail" ADD CONSTRAINT "saledetail_saleid_foreign" FOREIGN KEY("SaleID") REFERENCES "Sale"("SaleID");
ALTER TABLE
    "Sale" ADD CONSTRAINT "sale_customerid_foreign" FOREIGN KEY("CustomerID") REFERENCES "Customer"("CustomerID");
ALTER TABLE
    "Product" ADD CONSTRAINT "product_brandid_foreign" FOREIGN KEY("BrandID") REFERENCES "Brand"("BrandID");
ALTER TABLE
    "SaleDetail" ADD CONSTRAINT "saledetail_productid_foreign" FOREIGN KEY("ProductID") REFERENCES "Product"("ProductID");
ALTER TABLE
    "Sale" ADD CONSTRAINT "sale_employeeid_foreign" FOREIGN KEY("EmployeeID") REFERENCES "Employee"("EmployeeID");