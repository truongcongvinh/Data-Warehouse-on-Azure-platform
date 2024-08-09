CREATE TABLE DimProductIncre(
ProductKey INT PRIMARY KEY IDENTITY(1,1),
ProductID INT, 
ProductSubcategoryID INT, 
Name NVARCHAR(50), 
Color NVARCHAR(15), 
Size NVARCHAR(5), 
Weight DECIMAL(8,2), 
Class NVARCHAR(2), 
Style NVARCHAR(2)
)

CREATE TABLE DestProductIncre(
ProductKey INT PRIMARY KEY IDENTITY(1,1),
ProductID INT, 
ProductSubcategoryID INT, 
Name NVARCHAR(50), 
Color NVARCHAR(15), 
Size NVARCHAR(5), 
Weight DECIMAL(8,2), 
Class NVARCHAR(2), 
Style NVARCHAR(2)
)



create table watermarktable
(
WatermarkValue int,
)
INSERT INTO watermarktable
VALUES ('504')

Select MAX(ProductKey) as ProductKey from DimProductIncre

create schema desti

create proc desti.ProductIncre (
	@oldwatermark int,
	@newwatermark int)
as 
begin
	select * from DimProductIncre
	where (ProductKey > @oldwatermark) and (ProductKey <= @newwatermark)
end






CREATE PROCEDURE update_watermark @ProductKey int
AS
BEGIN
    UPDATE watermarktable
    SET [WatermarkValue] = @ProductKey 
END

select *
from DestProductIncre

INSERT INTO DimProductIncre ( ProductID, ProductSubcategoryID, Name, Color, Size, Weight, Class, Style) 
VALUES (1000,6,'Multiverse-2002 Blue 50','Blue','50',20.42,'L','U')
INSERT INTO DimProductIncre ( ProductID, ProductSubcategoryID, Name, Color, Size, Weight, Class, Style) 
VALUES (1001,6,'Multiverse-2002 Red 40','Red','40',27.77,'L','W')

select *
from watermarktable

INSERT INTO watermarktable
VALUES ('504')