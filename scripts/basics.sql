/* Set commands to print outputs */
.header ON
.mode column

-- Query all songs by Freddie Mercury or Brian May :)
SELECT * FROM Track
WHERE Composer LIKE "%Mercury%"
      OR Composer LIKE "%May%";
