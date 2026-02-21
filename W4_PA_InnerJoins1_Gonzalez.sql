-- Patrick Gonzalez
-- W4 Performance Assessment: Inner Joins Part 1
-- ======================================================


-- ======================================================
-- Question 1: FULL OUTER JOIN (Show all rows)
-- ======================================================

SELECT
    f.fruit,
    c.color
FROM sec1303_fruits f
FULL OUTER JOIN sec1303_colors c
    ON SUBSTR(f.fruit, 1, 1) = SUBSTR(c.color, 1, 1)
ORDER BY f.fruit, c.color;



-- ======================================================
-- Question 2: INNER JOIN (Many-to-One)
-- ======================================================

SELECT
    f.fruit,
    c.color
FROM sec1304_fruits f
INNER JOIN sec1304_colors c
    ON SUBSTR(f.fruit, 1, 1) = SUBSTR(c.color, 1, 1)
ORDER BY f.fruit, c.color;



-- ======================================================
-- Question 3: INNER JOIN (One-to-Many)
-- ======================================================

SELECT
    f.fruit,
    c.color
FROM sec1305_fruits f
INNER JOIN sec1305_colors c
    ON SUBSTR(f.fruit, 1, 1) = SUBSTR(c.color, 1, 1)
ORDER BY f.fruit, c.color;



-- ======================================================
-- Question 4: INNER JOIN (Many-to-Many)
-- ======================================================

SELECT
    f.fruit,
    c.color
FROM sec1306_fruits f
INNER JOIN sec1306_colors c
    ON SUBSTR(f.fruit, 1, 1) = SUBSTR(c.color, 1, 1)
ORDER BY f.fruit, c.color;



-- ======================================================
-- Question 5A: Unmatched Fruits (Dropped by INNER JOIN)
-- ======================================================

SELECT f.fruit
FROM sec1308_fruits f
LEFT JOIN sec1308_colors c
    ON SUBSTR(f.fruit, 1, 1) = SUBSTR(c.color, 1, 1)
WHERE c.color IS NULL
ORDER BY f.fruit;



-- ======================================================
-- Question 5B: Unmatched Colors (Dropped by INNER JOIN)
-- ======================================================

SELECT c.color
FROM sec1308_colors c
LEFT JOIN sec1308_fruits f
    ON SUBSTR(c.color, 1, 1) = SUBSTR(f.fruit, 1, 1)
WHERE f.fruit IS NULL
ORDER BY c.color;



-- ======================================================
-- Question 6: INNER JOIN (Variation 1 - Old Style)
-- ======================================================

SELECT
    t1.adjective,
    t2.animal
FROM sec1309_table1 t1,
     sec1309_table2 t2
WHERE SUBSTR(t1.adjective, 1, 1) = SUBSTR(t2.animal, 1, 1)
ORDER BY t1.adjective, t2.animal;