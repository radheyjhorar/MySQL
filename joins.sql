--  First, create two tables called members and committees:
CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);
CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);
-- Second, insert some rows into the tables members and committees :
INSERT INTO members(name)
VALUES ('John'),
    ('Jane'),
    ('Mary'),
    ('David'),
    ('Amelia');
INSERT INTO committees(name)
VALUES ('John'),
    ('Mary'),
    ('Amelia'),
    ('Joe');
-- Third, query data from the tables members and committees:
SELECT *
FROM members;
SELECT *
FROM committees;
-- MySQL INNER JOIN clause
-- syntex
-- SELECT column_list
-- FROM table_1
-- INNER JOIN table_2 ON join_condition;
SELECT m.member_id,
    m.name AS member,
    c.committee_id,
    c.name AS committee
FROM members m
    INNER JOIN committees c ON c.name = m.name;
-- If the join condition uses the equality operator (=) 
-- and the column names in both tables used for matching are the same,
-- and you can use the USING clause instead:
SELECT m.member_id,
    m.name AS member,
    c.committee_id,
    c.name AS committee
FROM members m
    INNER JOIN committees c USING(name);
-- Left Join
-- The following example uses a left join clause to join the members with the committees table:
SELECT m.member_id,
    m.name AS Member,
    c.committee_id,
    c.name AS committees
FROM members m
    Left JOIN committees c USING(name);
-- Output
--     +-----------+--------+--------------+-----------+
--     | member_id | member | committee_id | committee |
--     +-----------+--------+--------------+-----------+
--     |         1 | John   |            1 | John      |
--     |         2 | Jane   |         NULL | NULL      |
--     |         3 | Mary   |            2 | Mary      |
--     |         4 | David  |         NULL | NULL      |
--     |         5 | Amelia |            3 | Amelia    |
--     +-----------+--------+--------------+-----------+
--To find members who are not the committee members, 
--you add a WHERE clause and IS NULL operator as follows:
SELECT m.member_id,
    m.name AS member,
    c.committee_id,
    c.name AS committee
FROM members m
    LEFT JOIN committees c USING(name)
WHERE c.committee_id IS NULL;
-- Output
-- +-----------+--------+--------------+-----------+
-- | member_id | member | committee_id | committee |
-- +-----------+--------+--------------+-----------+
-- |         2 | Jane   |         NULL | NULL      |
-- |         4 | David  |         NULL | NULL      |
-- +-----------+--------+--------------+-----------+
-- RIGHT JOIN
--Here is the syntax of the right join:
SELECT column_list
FROM table_1
    RIGHT JOIN table_2 ON join_condition;
--Similar to the left join clause, the right clause also supports the USING syntax:
SELECT column_list
FROM table_1
    RIGHT JOIN table_2 USING (column_name);
--To find rows in the right table that does not have corresponding rows in the left table,
-- you also use a WHERE clause with the IS NULL operator:
SELECT column_list
FROM table_1
    RIGHT JOIN table_2 USING (column_name)
WHERE column_table_1 IS NULL;
--This statement uses the right join to join the members and committees tables:
SELECT m.member_id,
    m.name AS member,
    c.committee_id,
    c.name AS committee
FROM members m
    RIGHT JOIN committees c on c.name = m.name;
-- Output
-- +-----------+--------+--------------+-----------+
-- | member_id | member | committee_id | committee |
-- +-----------+--------+--------------+-----------+
-- |         1 | John   |            1 | John      |
-- |         3 | Mary   |            2 | Mary      |
-- |         5 | Amelia |            3 | Amelia    |
-- |      NULL | NULL   |            4 | Joe       |
-- +-----------+--------+--------------+-----------+
-- CROSS JOIN
-- The following shows the syntax of the cross join clause:
SELECT select_list
FROM table_1
    CROSS JOIN table_2;
-- This example uses the cross join clause to join the members with the committees tables:
SELECT m.member_id,
    m.name AS member,
    c.committee_id,
    c.name AS committee
FROM members m
    CROSS JOIN committees c;
-- Output
-- +-----------+--------+--------------+-----------+
-- | member_id | member | committee_id | committee |
-- +-----------+--------+--------------+-----------+
-- |         1 | John   |            4 | Joe       |
-- |         1 | John   |            3 | Amelia    |
-- |         1 | John   |            2 | Mary      |
-- |         1 | John   |            1 | John      |
-- |         2 | Jane   |            4 | Joe       |
-- |         2 | Jane   |            3 | Amelia    |
-- |         2 | Jane   |            2 | Mary      |
-- |         2 | Jane   |            1 | John      |
-- |         3 | Mary   |            4 | Joe       |
-- |         3 | Mary   |            3 | Amelia    |
-- |         3 | Mary   |            2 | Mary      |
-- |         3 | Mary   |            1 | John      |
-- |         4 | David  |            4 | Joe       |
-- |         4 | David  |            3 | Amelia    |
-- |         4 | David  |            2 | Mary      |
-- |         4 | David  |            1 | John      |
-- |         5 | Amelia |            4 | Joe       |
-- |         5 | Amelia |            3 | Amelia    |
-- |         5 | Amelia |            2 | Mary      |
-- |         5 | Amelia |            1 | John      |
--+-----------+--------+--------------+-----------+
-- The cross join is useful for generating planning data. For example,
-- you can carry the sales planning by using the cross join of customers, products, and years.