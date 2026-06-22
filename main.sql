CREATE TABLE BANK(
    bank_ID numeric primary key,
    bank_name varchar(20) not null,
    bank_address varchar(100),
    next_due_date DATE,
    amount_received numeric,
    total_amount_for_due numeric
); 
INSERT INTO BANK VALUES(001, 'SBI', 'New York Street, Downtown', '2025-03-25', 50000, 200000);
INSERT INTO BANK VALUES(002, 'PNB', 'Freedom Park, Sector 19', '2025-04-15', 75000, 150000);
INSERT INTO BANK VALUES(003, 'MET', 'Sunset Boulevard, Hollywood', '2025-05-05', 120000, 300000);
INSERT INTO BANK VALUES(004, 'SWISS', 'Ocean Drive, Miami', '2025-06-10', 60000, 250000);
INSERT INTO BANK VALUES(005, 'NXI', 'Palm Beach, California', '2025-07-20', 90000, 350000);

INSERT INTO BANK VALUES(006, 'SBI', 'Lakeside Avenue, Chicago', '2025-03-20', 85000, 230000);
INSERT INTO BANK VALUES(007, 'PNB', 'East End Road, London', '2025-04-10', 115000, 210000);
INSERT INTO BANK VALUES(008, 'MET', 'City Center, Paris', '2025-05-15', 100000, 280000);
INSERT INTO BANK VALUES(009, 'SWISS', 'Bay Street, Toronto', '2025-06-25', 110000, 230000);
INSERT INTO BANK VALUES(010, 'NXI', 'Shoreline, Dubai', '2025-07-30', 130000, 340000);

SELECT * FROM BANK;

CREATE TABLE BRANCH(
    bank_ID numeric,
    branch_ID numeric primary key,
    branch_name varchar(20) not null,
    branch_address varchar(100),
    next_due_date DATE,
    amount_received numeric,
    total_amount_for_due numeric,
    FOREIGN KEY(bank_ID) REFERENCES BANK
); 
INSERT INTO BRANCH VALUES(001, 101, 'Delhi', 'Gandhi Nagar, Near Metro Station', '2025-02-20', 20000, 50000);
INSERT INTO BRANCH VALUES(002, 102, 'Punjab', 'Sector 17, Chandigarh', '2025-03-30', 30000, 80000);
INSERT INTO BRANCH VALUES(003, 103, 'M.P', 'Vijay Nagar, Bhopal', '2025-04-10', 25000, 70000);
INSERT INTO BRANCH VALUES(004, 104, 'Bangalore', 'Thullianadammm, Bangalore', '2025-05-25', 50000, 150000);
INSERT INTO BRANCH VALUES(005, 105, 'Assam', 'Kaziranga, Assam', '2025-06-15', 40000, 120000);

SELECT * FROM BRANCH;

CREATE TABLE ACCOUNT(
    account_ID numeric primary key,
    branch_ID numeric,
    name varchar(20) not null,
    account_type varchar(20) not null,
    next_due_date DATE,
    amount_received numeric,
    total_amount_for_due numeric,
    FOREIGN KEY(branch_ID) REFERENCES BRANCH
); 
INSERT INTO ACCOUNT VALUES(201, 101, 'Rajeev', 'Salary account', '2025-03-01', 5000, 20000);
INSERT INTO ACCOUNT VALUES(202, 102, 'Ravnish', 'Saving account', '2025-03-05', 10000, 25000);
INSERT INTO ACCOUNT VALUES(203, 103, 'Naseeb', 'Fixed deposit account', '2025-04-01', 15000, 40000);
INSERT INTO ACCOUNT VALUES(204, 104, 'Ashish', 'Recurring deposit account', '2025-04-10', 20000, 50000);
INSERT INTO ACCOUNT VALUES(205, 105, 'Tanmay', 'NRI account', '2025-04-20', 30000, 70000);

SELECT * FROM ACCOUNT;

CREATE TABLE LOAN(
    account_ID numeric,
    loan_ID numeric primary key,
    name varchar(20) not null,
    loan_type varchar(20) not null,
    loan_amount numeric,
    next_due_date DATE,
    amount_received numeric,
    total_amount_for_due numeric,
    FOREIGN KEY(account_ID) REFERENCES ACCOUNT
); 
INSERT INTO LOAN VALUES(201, 301, 'Rajeev', 'Personal loan', 10000, '2025-02-28', 5000, 15000);
INSERT INTO LOAN VALUES(202, 302, 'Ravnish', 'Home loan', 20000, '2025-03-15', 8000, 18000);
INSERT INTO LOAN VALUES(203, 303, 'Naseeb', 'Car loan', 15000, '2025-04-05', 10000, 22000);
INSERT INTO LOAN VALUES(204, 304, 'Ashish', 'Education loan', 25000, '2025-05-01', 12000, 25000);
INSERT INTO LOAN VALUES(205, 305, 'Tanmay', 'Business loan', 30000, '2025-06-10', 15000, 30000);

SELECT * FROM LOAN;

CREATE TABLE CLIENT(
    account_ID numeric,
    client_ID numeric primary key,
    name varchar(20) not null,
    client_address varchar(500) not null,
    next_due_date DATE,
    amount_received numeric,
    total_amount_for_due numeric,
    FOREIGN KEY(account_ID) REFERENCES ACCOUNT
); 
INSERT INTO CLIENT VALUES(201, 401, 'Rajeev', '21, Gandhi Nagar, Delhi', '2025-03-01', 10000, 25000);
INSERT INTO CLIENT VALUES(202, 402, 'Ravnish', '16, Vijay Nagar, Bhopal', '2025-03-10', 12000, 30000);
INSERT INTO CLIENT VALUES(203, 403, 'Sumit', '13, Geeta Colony, Mumbai', '2025-04-01', 8000, 20000);
INSERT INTO CLIENT VALUES(204, 404, 'Naseeb', '11, Savedh Nagar, Pune', '2025-04-15', 5000, 15000);
INSERT INTO CLIENT VALUES(205, 405, 'Tanmay', '07, Godha Colony, Jaipur', '2025-05-01', 7000, 17000);

SELECT * FROM CLIENT;
