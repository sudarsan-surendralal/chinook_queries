# Some sql keywords you need to know

- SELECT - select one or multiple columns
- FROM - specify the table from which you would like to select the columns
- LIMIT - number of entries requested (eg. LIMIT 5)
- CREATE TABLE - Create a table
  ```sql
  CREATE TABLE Shoes
    (
    Id    char(10)      PRIMARY KEY
    Brand char(10)      NOT NULL
    Price decimal(8, 2) NOT NULL
    Description  Vachar(750)   NULL
    );
  ```
- CREATE TEMPORARY TABLE - Create temporary tables (faster, simplifies complex queries, and are deleted when a session is ended)
  ```sql
  CREATE TEMPORARY TABLE Gucci AS
    (
    SELECT * 
    FROM Shoes
    WHERE Brand="Gucci"
    );
  ```
  Note that "=" is used rather than "==".

- INSERT INTO - Insert entries into table
  ```sql
  INSERT INTO Shoes
  VALUES  
    (
    '0000000001',
    'Gucci',
    '695.00',
    NULL
    );
  ```
  But the recommended way is
  
  ```sql
  INSERT INTO Shoes
    (
    Id,
    Brand,
    Price,
    Description
    );
  VALUES  
    (
    '0000000001',
    'Gucci',
    '695.00',
    NULL
    );
  ```
- GROUP BY - Helps group entries based on a list of column names
- HAVING -  Used at the end. Used for filtering based on some criteria (after GROUP BY)
- ORDER BY - Used at the end. Used for ordering based on some criteria (after GROUP BY)

# Other things

- Column names must be separated by ","
- End of a statement must end with ";"
- Generally commmands don't have underscores
- Different flavours of SQL have slightly different syntax
- Wildcards represented by "%". Wildcards take longer to process
 
