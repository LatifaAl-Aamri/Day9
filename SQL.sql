#SELECT * FROM Customers;
#SELECT CustomerName, City FROM Customers;
#SELECT * FROM Customers LIMIT 5;
#SELECT CustomerID, CustomerName, City FROM Customers WHERE Country='USA';
#SELECT CustomerID, CustomerName FROM Customers WHERE Country='USA' AND city='Portland';
#SELECT CustomerID, CustomerName, City, Country FROM Customers WHERE Country='USA' OR Country='Germany';

#SELECT CustomerID, CustomerName, City, Country 
#FROM Customers 
#WHERE Country='USA' OR Country='Germany' 
#ORDER BY Country desc, City asc;

#SELECT DISTINCT  Country FROM Customer;

#SELECT COUNT(*) FROM Customers
#WHERE Country='USA' OR Country='Germany' 
#ORDER BY Country desc, City asc;

#SELECT * FROM northwind.orders;
#SELECT SUM(Quantity) FROM orderdetails
#where ProductID=11;

#SELECT Country, COUNT(*) as Number_of_customers
#FROM Customers
#group by Country
#order by Number_of_customers desc;

#SELECT Country, COUNT(*) as Number_of_customers FROM Customers group by Country having Number_of_customers > 5 order by Number_of_customers desc;

#SELECT Orders.OrderID, Customers.CustomerName FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

#SELECT  Customers.CustomerName, Orders.OrderID
#FROM Customers
#LEFT JOIN Orders
#ON Customers.CustomerID = Orders.CustomerID ;

#select CustomersID
	#FROM Orders
    #where ShipperID = 3;

#SELECT CustomerName
#FROM Customers
#where CustomersID
#IN (select CustomersID
#	FROM Orders
 #   where ShipperID = 3);

SELECT CustomerName
FROM Customers
WHERE CustomerID
IN (select distinct CustomerID
	FROM Orders
    where ShipperID = 300);

















