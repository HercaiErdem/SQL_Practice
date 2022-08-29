CREATE TABLE workers
(
  id int,
  name varchar(20),
  title varchar(60),
  manager_id int
);

INSERT INTO workers VALUES(1, 'Ali Can', 'Dev', 2);
INSERT INTO workers VALUES(2, 'John Davis', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'Dev Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5);

select * from workers;

-- 1)Tabloya company_industry isminde sütun ekleyiniz
ALTER TABLE workers 
ADD COLUMN company_industry varchar (20);

-- 2)TABLOYA worker_address sütunu ve defaullt olarakta 'Miami, FL, USA' adresini ekleyiniz.
ALTER TABLE workers
ADD COLUMN worker_address varchar (50)
DEFAULT 'Miami, FL, USA' ;

--3)tablodaki worker_address sütununu siliniz
alter table workers
DROP COLUMN worker_address; --DELETE COLUMN da olur.

-- Tablodaki company_industry sütununu, company_profession olarak değiştiriniz.
ALTER TABLE workers
RENAME COLUMN company_industry TO company_profession ;

-- 4)Tablonun ismini employees olarak değişitiriniz.
ALTER TABLE workers RENAME TO employees ;

SELECT * FROM employees;

-- 5)Tablodaki title sütununa data tipini VARCHAR(50) olarak değiştiriniz.
ALTER TABLE employees
ALTER COLUMN title 
TYPE varchar (50);

-- Tablodaki title sütununa "UNIQUE" kıstlaması ekleyiniz.
ALTER TABLE employees
ADD CONSTRAINT title UNIQUE (title) ; --syntax i bu sekilde






