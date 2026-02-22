/******************************************************************
  Week 4 – Inner Joins Assignment
  Name: Patrick
******************************************************************/

/*===============================================================
  (13-3) Question 1 – (Show ALL rows)
===============================================================*/

--patrick
WITH table1 AS (
  SELECT 'Active' word FROM dual UNION ALL
  SELECT 'Busy' FROM dual UNION ALL
  SELECT 'Crafty' FROM dual UNION ALL
  SELECT 'Determined' FROM dual UNION ALL
  SELECT 'Eccentric' FROM dual
),
table2 AS (
  SELECT 'Cat' word FROM dual UNION ALL
  SELECT 'Dog' FROM dual UNION ALL
  SELECT 'Ape' FROM dual UNION ALL
  SELECT 'Fish' FROM dual UNION ALL
  SELECT 'Bird' FROM dual UNION ALL
  SELECT 'Rabbit' FROM dual
)
SELECT
  t1.word AS table1_word,
  t2.word AS table2_word
FROM table1 t1
FULL OUTER JOIN table2 t2
  ON SUBSTR(t1.word,1,1) = SUBSTR(t2.word,1,1)
ORDER BY t1.word, t2.word;





/*===============================================================
  (13-4) Question 2 – INNER JOIN (Many-to-One)
===============================================================*/

--patrick
WITH table1 AS (
  SELECT 'Active' word FROM dual UNION ALL
  SELECT 'Busy' FROM dual UNION ALL
  SELECT 'Crafty' FROM dual UNION ALL
  SELECT 'Determined' FROM dual UNION ALL
  SELECT 'Eccentric' FROM dual UNION ALL
  SELECT 'Blissful' FROM dual UNION ALL
  SELECT 'Careless' FROM dual UNION ALL
  SELECT 'Cautious' FROM dual UNION ALL
  SELECT 'Eerie' FROM dual
),
table2 AS (
  SELECT 'Cat' word FROM dual UNION ALL
  SELECT 'Dog' FROM dual UNION ALL
  SELECT 'Ape' FROM dual UNION ALL
  SELECT 'Eel' FROM dual UNION ALL
  SELECT 'Bird' FROM dual
)
SELECT
  t1.word AS table1_word,
  t2.word AS table2_word
FROM table1 t1
JOIN table2 t2
  ON SUBSTR(t1.word,1,1) = SUBSTR(t2.word,1,1)
ORDER BY t1.word, t2.word;





/*===============================================================
  (13-5) Question 3 – INNER JOIN (One-to-Many)
===============================================================*/

--patrick
WITH table1 AS (
  SELECT 'Active' word FROM dual UNION ALL
  SELECT 'Busy' FROM dual UNION ALL
  SELECT 'Crafty' FROM dual UNION ALL
  SELECT 'Determined' FROM dual UNION ALL
  SELECT 'Eccentric' FROM dual
),
table2 AS (
  SELECT 'Cat' word FROM dual UNION ALL
  SELECT 'Dog' FROM dual UNION ALL
  SELECT 'Ape' FROM dual UNION ALL
  SELECT 'Eel' FROM dual UNION ALL
  SELECT 'Bird' FROM dual UNION ALL
  SELECT 'Armadillo' FROM dual UNION ALL
  SELECT 'Butterfly' FROM dual UNION ALL
  SELECT 'Camel' FROM dual UNION ALL
  SELECT 'Crocodile' FROM dual
)
SELECT
  t1.word AS table1_word,
  t2.word AS table2_word
FROM table1 t1
JOIN table2 t2
  ON SUBSTR(t1.word,1,1) = SUBSTR(t2.word,1,1)
ORDER BY t1.word, t2.word;





/*===============================================================
  (13-6) Question 4 – INNER JOIN (Many-to-Many)
===============================================================*/

--patrick
WITH table1 AS (
  SELECT 'Active' word FROM dual UNION ALL
  SELECT 'Busy' FROM dual UNION ALL
  SELECT 'Crafty' FROM dual UNION ALL
  SELECT 'Determined' FROM dual UNION ALL
  SELECT 'Eccentric' FROM dual UNION ALL
  SELECT 'Blissful' FROM dual UNION ALL
  SELECT 'Careless' FROM dual UNION ALL
  SELECT 'Cautious' FROM dual UNION ALL
  SELECT 'Eerie' FROM dual
),
table2 AS (
  SELECT 'Cat' word FROM dual UNION ALL
  SELECT 'Dog' FROM dual UNION ALL
  SELECT 'Ape' FROM dual UNION ALL
  SELECT 'Eel' FROM dual UNION ALL
  SELECT 'Bird' FROM dual UNION ALL
  SELECT 'Armadillo' FROM dual UNION ALL
  SELECT 'Butterfly' FROM dual UNION ALL
  SELECT 'Camel' FROM dual UNION ALL
  SELECT 'Crocodile' FROM dual
)
SELECT
  t1.word AS table1_word,
  t2.word AS table2_word
FROM table1 t1
JOIN table2 t2
  ON SUBSTR(t1.word,1,1) = SUBSTR(t2.word,1,1)
ORDER BY t1.word, t2.word;





/*===============================================================
  (13-8) Question 5 – INNER JOIN (Show unmatched rows separately)
===============================================================*/

--patrick
WITH table1 AS (
  SELECT 'Active' word FROM dual UNION ALL
  SELECT 'Busy' FROM dual UNION ALL
  SELECT 'Crafty' FROM dual UNION ALL
  SELECT 'Determined' FROM dual UNION ALL
  SELECT 'Eccentric' FROM dual UNION ALL
  SELECT CAST(NULL AS VARCHAR2(20)) FROM dual
),
table2 AS (
  SELECT 'Cat' word FROM dual UNION ALL
  SELECT 'Dog' FROM dual UNION ALL
  SELECT 'Ape' FROM dual UNION ALL
  SELECT 'Fly' FROM dual UNION ALL
  SELECT 'Bird' FROM dual UNION ALL
  SELECT CAST(NULL AS VARCHAR2(20)) FROM dual
)
SELECT
  t1.word AS table1_word,
  t2.word AS table2_word
FROM table1 t1
JOIN table2 t2
  ON SUBSTR(t1.word,1,1) = SUBSTR(t2.word,1,1)
ORDER BY t1.word, t2.word;





/*===============================================================
  (13-9) Question 6 – INNER JOIN (Variation 1 syntax)
===============================================================*/

--patrick
WITH sec1309_table1 AS (
  SELECT 'Active' adjective FROM dual UNION ALL
  SELECT 'Busy' FROM dual UNION ALL
  SELECT 'Crafty' FROM dual UNION ALL
  SELECT 'Determined' FROM dual UNION ALL
  SELECT 'Eccentric' FROM dual UNION ALL
  SELECT CAST(NULL AS VARCHAR2(20)) FROM dual
),
sec1309_table2 AS (
  SELECT 'Cat' animal FROM dual UNION ALL
  SELECT 'Dog' FROM dual UNION ALL
  SELECT 'Ape' FROM dual UNION ALL
  SELECT 'Fly' FROM dual UNION ALL
  SELECT 'Bird' FROM dual UNION ALL
  SELECT CAST(NULL AS VARCHAR2(20)) FROM dual
)
SELECT
  t1.adjective,
  t2.animal
FROM sec1309_table1 t1,
     sec1309_table2 t2
WHERE SUBSTR(t1.adjective,1,1) = SUBSTR(t2.animal,1,1)
ORDER BY t1.adjective, t2.animal;
