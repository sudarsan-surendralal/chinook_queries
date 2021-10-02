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
  

# Other things

- Column names must be separated by ","
- End of a statement must end with ";"
- Generally commmands don't have underscores
- Different flavours of SQL have slightly different syntax
