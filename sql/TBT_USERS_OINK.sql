CREATE TABLE TBT_USERS_OINK AS
WITH vwData AS (
    SELECT  MIN(ROW_NUMBER) USER_PK,
            USER_ID,
            MAX(operation_value) DEPOSIT_MAX,
            MIN(operation_value) DEPOSIT_MIN,
            SUM(operation_value) DEPOSIT_SUM,
            AVG(operation_value) DEPOSIT_AVG,
            COUNT(1) DEPOSITS_COUNT,
            MIN(operation_date) FIRST_DEPOSIT,
            MAX(operation_date) LAST_DEPOSIT,
            CASE
                WHEN COUNT(1) > 1 THEN
                    CAST(julianday(MAX(operation_date)) - julianday(MIN(operation_date)) AS INTEGER)
                ELSE NULL
            END DAYS_BETWEEN_DEPOSITS,
            CAST(julianday(MIN(operation_date)) - julianday(MIN(user_createddate)) AS INTEGER) WAIT_FOR_FIRST_DEPOSIT,
            SUM(CASE
                WHEN maplocation_name LIKE '%CC%' THEN 1
                ELSE 0
            END) DEPOSITS_COMERCIAL_CENTERS,
            SUM(CASE
                WHEN maplocation_name LIKE '%univers%' THEN 1
                ELSE 0
            END) DEPOSITS_UNIVERSITYS,
            COUNT(DISTINCT maplocation_name) COUNT_LOCATIONS,
            MIN(user_createddate) CREATED_T
    FROM    TB_DEPOSITO_OINK
    GROUP BY user_id
)
SELECT  *
FROM    vwData;