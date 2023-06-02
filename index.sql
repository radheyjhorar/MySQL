CREATE TABLE persons (
    id int NOT NULL AUTO_INCREMENT,
    firstname varchar(20) NOT null,
    lastname varchar(20),
    age int,
    city varchar(20) DEFAULT 'Ellenabad',
    orderdate Date DEFAULT CURRENT_DATE(),
);

INSERT INTO persons (dob, adress)
VALUES ('01', 'basant vihar')

ALTER TABLE persons (
    ALTER city DROP DEFAULT;
)

ALTER TABLE persons (
    ALTER city SET DEFAULT 'Sirsa'; 
)

CREATE INDEX personsid 
ON persons (id);

CREATE UNIQUE INDEX pid
ON persons (id);

ALTER TABLE persons
DROP INDEX personsid;