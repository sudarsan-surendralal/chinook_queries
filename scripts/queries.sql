/* These are some of the queries used in the Coursera course */


/* 1. How many albums does the artist Led Zeppelin
have?  */

SELECT *
FROM Albums alb INNER JOIN Artists art ON art.ArtistID=alb.artistID
WHERE art.Name=="Led Zeppelin";

/*Create a list of album titles and the unit prices for the artist "Audioslave".*/

SELECT alb.Name, UnitPrice
FROM ((Tracks tra INNER JOIN Albums alb ON tra.AlbumId=alb.AlbumID)
alb INNER JOIN Artists art ON art.ArtistID=alb.artistID)
WHERE art.Name=="Audioslave";

/* Find the first and last name of any customer who
does not have an invoice. Are there any customers returned from the query? */

SELECT Test.FirstName, Test.LastName
FROM (Customers cust LEFT JOIN Invoices inv ON cust.CustomerId=inv.CustomerId) as Test
WHERE Test.InvoiceId IS NULL;

/* Find the total price for each album. */

SELECT alb.Title, tra.AlbumId, SUM(tra.UnitPrice)
FROM Albums alb INNER JOIN Tracks tra ON tra.AlbumId=alb.AlbumId GROUP BY tra.AlbumId;

/*How many records are created when you apply a Cartesian join to the invoice and invoice items table?*/

SELECT inv.invoiceid
FROM Invoices inv CROSS JOIN invoice_items;

/* Using a subquery, find the names of all the tracks for the album "Californication".*/

SELECT temp.Name
-- FROM Albums alb
FROM (Tracks tra INNER JOIN Albums alb ON
        alb.AlbumId = tra.AlbumId) AS temp
WHERE temp.Title="Californication";

/* Find the total number of invoices for each customer along with the customer's full name, city and email. */

SELECT temp.FirstName, temp.LastName, temp.City, temp.Email, COUNT(temp.InvoiceId) as TotalInvoice
FROM (Customers cust INNER JOIN Invoices inv ON cust.CustomerID=inv.CustomerId) as temp
GROUP BY temp.CustomerId;

/* Retrieve the track name, album, artistID, and trackID for all the albums. */

SELECT temp.Name, temp.Title, temp.ArtistId, temp.TrackId
FROM (Albums alb INNER JOIN Tracks tra ON alb.AlbumId=tra.AlbumId) AS temp;

/* Retrieve a list with the managers last name, and the last name of the employees who report to him or her. This does not work properly*/

SELECT temp.EmployeeId, temp.LastName, temp.ReportsTo
FROM (Employees emp1 CROSS JOIN Employees emp2) as temp
WHERE temp.EmployeeId!=temp.ReportsTo;

/* Find the name and ID of the artists who do not have albums. */

SELECT temp.Name, temp.ArtistID
FROM (Artists art LEFT JOIN Albums alb on art.ArtistID=alb.ArtistId) as temp
WHERE temp.AlbumId IS NULL;

/*Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.*/
SELECT FirstName, LastName
FROM Customers
UNION
SELECT FirstName, LastName
FROM Employees
ORDER BY LastName Desc;

/* See if there are any customers who have a different city listed in their billing city versus their customer city. */

SELECT *
FROM (Customers cust INNER JOIN Invoices inv
      ON cust.CustomerId=inv.CustomerId) AS temp
WHERE temp.City!=temp.BillingCity;
