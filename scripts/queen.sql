/* Set commands to print outputs */
.header ON
.mode column

/* Query all songs by the members of the Band :) */
SELECT * FROM Track
WHERE (Composer LIKE "%Mercury%")
      OR (Composer LIKE "%May%" and Composer LIKE "%Brian%")
      OR (Composer LIKE "%Taylor%" and Composer LIKE "%Roger%")
      OR (Composer LIKE "%Deacon%" and Composer LIKE "%John%")
ORDER BY Milliseconds DESC;
