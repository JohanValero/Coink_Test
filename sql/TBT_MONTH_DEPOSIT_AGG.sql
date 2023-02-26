-- SQLite
-- SQLite
--DROP TABLE TBT_MONTH_DEPOSIT_AGG;
CREATE TABLE TBT_MONTH_DEPOSIT_AGG AS
WITH vwData AS (
    SELECT  CAST(strftime('%Y', operation_date) AS INTEGER) YEAR,
            CAST(strftime('%m', operation_date) AS INTEGER) MONTH,
            MAX(operation_date) MAX_OPERATION_DATE,
            COUNT(DISTINCT USER_ID) COUNT_USERS,
            MIN(OPERATION_VALUE) DEPOSIT_MIN,
            MAX(operation_value) DEPOSIT_MAX,
            SUM(operation_value) DEPOSIT_SUM,
            AVG(operation_value) DEPOSIT_AVG,
            COUNT(1) COUNT_DEPOSITS,
            MIN(user_createddate) MIN_USER_CREATED_DATE,
            COUNT(DISTINCT CASE
                WHEN julianday(operation_date) - julianday(user_createddate) >= 365*2 THEN USER_ID
            END) TWO_YEAR_USERS,
            COUNT(DISTINCT CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365*2 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365
                THEN USER_ID
            END) ONE_YEAR_USERS,
            COUNT(DISTINCT CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365   AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/2
                THEN USER_ID
            END) SIX_MONTHS_USERS,
            COUNT(DISTINCT CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365/2 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/4
                THEN USER_ID
            END) THREE_MONTH_USERS,
            COUNT(DISTINCT CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365/4 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/6
                THEN USER_ID
            END) TWO_MONTH_USERS,
            COUNT(DISTINCT CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365/6 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/12
                THEN USER_ID
            END) ONE_MONTH_USERS,
            COUNT(DISTINCT CASE
                WHEN julianday(operation_date) - julianday(user_createddate) <= 365/12
                THEN USER_ID
            END) RECENT_USERS,
            SUM(CASE
                WHEN julianday(operation_date) - julianday(user_createddate) >= 365*2 THEN operation_value
                ELSE 0
            END) SUM_TWO_YEAR_USERS,
            SUM(CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365*2 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365
                THEN operation_value
                ELSE 0
            END) SUM_ONE_YEAR_USERS,
            SUM(CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365   AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/2
                THEN operation_value
                ELSE 0
            END) SUM_SIX_MONTHS_USERS,
            SUM(CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365/2 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/4
                THEN operation_value
                ELSE 0
            END) SUM_THREE_MONTH_USERS,
            SUM(CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365/4 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/6
                THEN operation_value
                ELSE 0
            END) SUM_TWO_MONTH_USERS,
            SUM(CASE
                WHEN julianday(operation_date) - julianday(user_createddate) < 365/6 AND
                    julianday(operation_date) - julianday(user_createddate) >= 365/12
                THEN operation_value
                ELSE 0
            END) SUM_ONE_MONTH_USERS,
            SUM(CASE
                WHEN julianday(operation_date) - julianday(user_createddate) <= 365/12
                THEN operation_value
                ELSE 0
            END) SUM_RECENT_USERS
    FROM    TB_DEPOSITO_OINK t
    GROUP BY strftime('%Y', operation_date),
             strftime('%m', operation_date)
    ORDER BY YEAR DESC, MONTH DESC
)
SELECT  d.*,
        (   SELECT  COUNT(DISTINCT USER_ID)
            FROM    TB_DEPOSITO_OINK t
            WHERE   d.MAX_OPERATION_DATE >= t.operation_date
        ) REGISTERED_USERS
FROM    vwData d;