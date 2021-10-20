/*
This script has some basic sql queries to find more info about the band  Queen!
*/

/* Set commands to print outputs */
.header ON
.mode column

/* Query all songs by the members of the Band :) */
SELECT t.Name, t.Composer, t.Milliseconds FROM Track t
WHERE (Composer LIKE "%Mercury%")
      OR (Composer LIKE "%May%" and Composer LIKE "%Brian%")
      OR (Composer LIKE "%Taylor%" and Composer LIKE "%Roger%")
      OR (Composer LIKE "%Deacon%" and Composer LIKE "%John%")
ORDER BY Milliseconds DESC;
