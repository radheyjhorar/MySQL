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
VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

INSERT INTO committees(name)
VALUES('John'),('Mary'),('Amelia'),('Joe');


-- Third, query data from the tables members and committees:

SELECT * FROM members;

SELECT * FROM committees;


-- MySQL INNER JOIN clause
    -- syntex
        -- SELECT column_list
        -- FROM table_1
        -- INNER JOIN table_2 ON join_condition;

        SELECT 
            m.member_id, 
            m.name AS member, 
            c.committee_id, 
            c.name AS committee
        FROM
            members m
        INNER JOIN committees c ON c.name = m.name;

    -- If the join condition uses the equality operator (=) 
    -- and the column names in both tables used for matching are the same,
    -- and you can use the USING clause instead:
        SELECT 
            m.member_id, 
            m.name AS member, 
            c.committee_id, 
            c.name AS committee
        FROM
            members m
        INNER JOIN committees c USING(name);