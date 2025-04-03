CREATE TABLE transactions (user_id INTEGER, spend DECIMAL(10, 2), transaction_date TIMESTAMP);
  INSERT INTO transactions (user_id, spend, transaction_date) VALUES
  (111, 100.50, '2022-01-08 12:00:00'),
  (111, 55.00, '2022-01-10 12:00:00'),
  (121, 36.00, '2022-01-18 12:00:00'),
  (145, 24.99, '2022-01-26 12:00:00'),
  (111, 89.60, '2022-02-05 12:00:00');


SELECT * FROM TRANSACTIONS


/*
Write a SQL query to obtain the third transaction of every user.
Output the user ID, spend, and transaction date
*/


WITH CTE AS (
    SELECT 
        USER_ID,
        SPEND,
        TRANSACTION_DATE,
        ROW_NUMBER() OVER (PARTITION BY USER_ID ORDER BY TRANSACTION_DATE ASC) AS RNK
    FROM TRANSACTIONS
)
SELECT USER_ID, SPEND, TRANSACTION_DATE
FROM CTE
WHERE RNK = 3;
