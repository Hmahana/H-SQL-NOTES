CREATE DATABASE ASSIGN_3;
DROP TABLE BANK_CUSTOMER;
USE ASSIGN_3;
CREATE TABLE BANK_CUSTOMER (
    CUSTOMER_ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- UNSIGNED ensures only positive values
    NAME VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) UNIQUE NOT NULL,
    PHONE VARCHAR(15) UNIQUE NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    GENDER ENUM('M', 'F', 'O') NOT NULL,
    ADDRESS TEXT NOT NULL,
    ACCOUNT_TYPE ENUM('SAVINGS', 'CURRENT', 'LOAN') NOT NULL,
    BALANCE DECIMAL(15, 2) UNSIGNED DEFAULT 0 CHECK (BALANCE >= 0), -- UNSIGNED ensures non-negative balance
    CREDIT_CARD_NUMBER CHAR(16) UNIQUE, -- Credit card numbers are usually 16 digits
    CREDIT_CARD_TYPE ENUM('VISA', 'MASTERCARD', 'AMEX', 'DISCOVER') NOT NULL, -- Credit card type
    CREDIT_CARD_VALID_FROM DATE NOT NULL, -- Validity start date for the card
    CREDIT_CARD_EXPIRY DATE NOT NULL, -- Expiry date for the card
    CARD_VALIDITY BOOL DEFAULT TRUE, -- Indicates 1 if the card is valid
    CREATED_AT DATETIME DEFAULT CURRENT_TIMESTAMP,
    LAST_UPDATED DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CHECK (CREDIT_CARD_EXPIRY > CREDIT_CARD_VALID_FROM) -- Ensures expiry date is after valid date
);
INSERT INTO BANK_CUSTOMER 
(NAME, EMAIL, PHONE, DATE_OF_BIRTH, GENDER, ADDRESS, ACCOUNT_TYPE, BALANCE, CREDIT_CARD_NUMBER, CREDIT_CARD_TYPE, CREDIT_CARD_VALID_FROM, CREDIT_CARD_EXPIRY)
VALUES
-- Row 1
('Rajesh Kumar', 'rajesh.kumar@example.com', '9876543210', '1988-05-10', 'M', '123 MG Road, Delhi', 'SAVINGS', 5000.00, '4111111111111111', 'VISA', '2022-01-01', '2027-01-01'),
-- Row 2
('Priya Sharma', 'priya.sharma@example.com', '8765432109', '1992-08-15', 'F', '456 JP Nagar, Bengaluru', 'CURRENT', 3000.00, '5500000000000004', 'MASTERCARD', '2023-02-01', '2028-02-01'),
-- Row 3
('Anil Mehta', 'anil.mehta@example.com', '7654321098', '1985-11-23', 'M', '789 Salt Lake, Kolkata', 'LOAN', 150000.00, '340000000000009', 'AMEX', '2021-10-01', '2026-10-01'),
-- Row 4
('Sneha Patel', 'sneha.patel@example.com', '6543210987', '1995-04-05', 'F', '147 Viman Nagar, Pune', 'SAVINGS', 10000.00, '6011000000000004', 'DISCOVER', '2020-12-01', '2025-12-01'),
-- Row 5
('Vikram Singh', 'vikram.singh@example.com', '5432109876', '1990-09-10', 'M', '321 Nehru Place, Jaipur', 'CURRENT', 8000.00, '4111111111111112', 'VISA', '2023-03-01', '2028-03-01'),
-- Row 6
('Asha Reddy', 'asha.reddy@example.com', '4321098765', '1993-06-21', 'F', '678 Banjara Hills, Hyderabad', 'LOAN', 200000.00, '5500000000000005', 'MASTERCARD', '2022-05-01', '2027-05-01'),
-- Row 7
('Karan Gupta', 'karan.gupta@example.com', '3210987654', '1987-02-14', 'M', '999 Sector 18, Chandigarh', 'SAVINGS', 12000.00, '340000000000010', 'AMEX', '2021-08-01', '2026-08-01'),
-- Row 8
('Meera Das', 'meera.das@example.com', '2109876543', '1991-07-30', 'F', '404 Dalhousie, Kolkata', 'CURRENT', 6000.00, '6011000000000005', 'DISCOVER', '2020-11-01', '2025-11-01'),
-- Row 9
('Ravi Verma', 'ravi.verma@example.com', '1098765432', '1989-12-12', 'M', '505 Andheri West, Mumbai', 'SAVINGS', 2500.00, '4111111111111113', 'VISA', '2023-04-01', '2028-04-01'),
-- Row 10
('Divya Nair', 'divya.nair@example.com', '1987654321', '1996-03-08', 'F', '606 Aluva, Kochi', 'LOAN', 300000.00, '5500000000000006', 'MASTERCARD', '2022-06-01', '2027-06-01'),
-- Row 11
('Sanjay Pandey', 'sanjay.pandey@example.com', '9123456780', '1984-10-18', 'M', '707 Charni Road, Mumbai', 'CURRENT', 4500.00, '340000000000011', 'AMEX', '2021-09-01', '2026-09-01'),
-- Row 12
('Anjali Choudhary', 'anjali.choudhary@example.com', '8234567891', '1994-11-11', 'F', '808 Indiranagar, Bengaluru', 'SAVINGS', 3500.00, '6011000000000006', 'DISCOVER', '2020-10-01', '2025-10-01'),
-- Row 13
('Ramesh Iyer', 'ramesh.iyer@example.com', '7345678902', '1982-05-25', 'M', '909 Adyar, Chennai', 'LOAN', 250000.00, '4111111111111114', 'VISA', '2023-05-01', '2028-05-01'),
-- Row 14
('Neha Kapoor', 'neha.kapoor@example.com', '6456789013', '1990-02-19', 'F', '1010 Connaught Place, Delhi', 'CURRENT', 7000.00, '5500000000000007', 'MASTERCARD', '2022-04-01', '2027-04-01'),
-- Row 15
('Arjun Pillai', 'arjun.pillai@example.com', '5567890124', '1995-09-22', 'M', '2021 Vyttila, Kochi', 'SAVINGS', 9500.00, '340000000000012', 'AMEX', '2021-07-01', '2026-07-01'),
-- Row 16
('Isha Bansal', 'isha.bansal@example.com', '4678901235', '1998-01-14', 'F', '3032 Shastri Nagar, Kanpur', 'LOAN', 180000.00, '6011000000000007', 'DISCOVER', '2020-09-01', '2025-09-01'),
-- Row 17
('Nitin Aggarwal', 'nitin.aggarwal@example.com', '3789012346', '1986-08-09', 'M', '4043 Rajiv Chowk, Delhi', 'CURRENT', 5200.00, '4111111111111115', 'VISA', '2023-06-01', '2028-06-01'),
-- Row 18
('Pooja Jain', 'pooja.jain@example.com', '2890123457', '1993-04-12', 'F', '5054 Hauz Khas, Delhi', 'SAVINGS', 6800.00, '5500000000000008', 'MASTERCARD', '2022-03-01', '2027-03-01'),
-- Row 19
('Rahul Chatterjee', 'rahul.chatterjee@example.com', '1901234568', '1983-12-27', 'M', '6065 Ballygunge, Kolkata', 'LOAN', 220000.00, '340000000000013', 'AMEX', '2021-06-01', '2026-06-01'),
-- Row 20
('Swati Desai', 'swati.desai@example.com', '1230984567', '1997-07-07', 'F', '7076 Bandra West, Mumbai', 'CURRENT', 7500.00, '6011000000000008', 'DISCOVER', '2020-08-01', '2025-08-01');


select * from bank_customer;
-- (1) SELECT QUERIES
SELECT * FROM assign_3.bank_customer;
SELECT NAME, EMAIL FROM bank_customer;
SELECT NAME,BALANCE FROM bank_customer
WHERE BALANCE>10000;
SELECT CUSTOMER_ID, NAME, CREDIT_CARD_EXPIRY FROM bank_customer 
WHERE CREDIT_CARD_EXPIRY > current_date();
SELECT CUSTOMER_ID,NAME,ADDRESS FROM bank_customer
WHERE ADDRESS LIKE "%Mumbai";
SELECT * FROM bank_customer
WHERE GENDER="F" AND ACCOUNT_TYPE="CURRENT";
SELECT * FROM bank_customer
WHERE BALANCE>5000 AND CREDIT_CARD_TYPE="VISA";
SELECT * FROM bank_customer
WHERE ACCOUNT_TYPE="SAVINGS" OR ACCOUNT_TYPE="LOAN";
-- (2) UPDATE QUERIES
UPDATE bank_customer
SET BALANCE = BALANCE+5000 WHERE ACCOUNT_TYPE="SAVINGS";
UPDATE bank_customer
SET CREDIT_CARD_TYPE = "VISA" WHERE BALANCE>20000;
UPDATE bank_customer
SET CARD_VALIDITY=false WHERE CREDIT_CARD_EXPIRY< current_date();
UPDATE bank_customer
SET BALANCE = 0 WHERE (ACCOUNT_TYPE="LOAN" AND BALANCE<1000);
UPDATE bank_customer
SET ADDRESS="UPDATED BENGALURU ADDRESS" WHERE ADDRESS LIKE "%BENGALURU";
UPDATE bank_customer
SET BALANCE=(BALANCE+(0.1*BALANCE)) WHERE DATEDIFF(CURRENT_DATE(),DATE_OF_BIRTH)/365>30;
-- (3) ALTER TABLE QUERIES
ALTER TABLE bank_customer
ADD COLUMN STATUS ENUM('ACTIVE','INACTIVE') DEFAULT "ACTIVE";
ALTER TABLE bank_customer
MODIFY COLUMN BALANCE DECIMAL(18,2) UNSIGNED;
ALTER TABLE bank_customer
DROP COLUMN CARD_VALIDITY;
ALTER TABLE bank_customer
ADD COLUMN LAST_PAYMENT_DATE DATE;
-- (4) PERFORM DELETE QUERIES
DELETE FROM bank_customer
WHERE ACCOUNT_TYPE="LOAN" AND BALANCE<50000;
DELETE FROM bank_customer
WHERE CREDIT_CARD_EXPIRY<current_date();
DELETE FROM bank_customer
WHERE EMAIL = "pooja.jain@example.com";
DELETE FROM bank_customer
WHERE NAME LIKE "A%";
DELETE FROM bank_customer
WHERE ADDRESS LIKE"%Delhi";
-- (5) ADVANCE TASKS
SELECT*FROM bank_customer
WHERE ACCOUNT_TYPE="SAVINGS" AND CREDIT_CARD_TYPE="VISA";
SELECT*FROM bank_customer
WHERE BALANCE=(SELECT MAX(BALANCE) FROM bank_customer);
SELECT*FROM bank_customer
WHERE datediff(CREDIT_CARD_EXPIRY,CURRENT_DATE())/365<3;
SELECT*FROM bank_customer
WHERE ACCOUNT_TYPE="LOAN" AND ADDRESS LIKE "%Chennai";
SELECT*FROM bank_customer
WHERE BALANCE BETWEEN 5000 AND 15000;