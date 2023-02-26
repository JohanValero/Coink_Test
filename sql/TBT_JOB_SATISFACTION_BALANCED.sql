-- SQLite
CREATE TABLE TBT_JOB_SATISFACTION_BALANCED AS
WITH vwSatisfactionLow AS (
    SELECT  ROW_NUMBER() OVER (
                PARTITION BY WorkLifeBalance,
                            JobSatisfaction,
                            CAST(Age/10 AS INTEGER),
                            CAST(MonthlyIncome/3000 AS INTEGER)
                ORDER BY 1
            ) NUM_REG, t.*
    FROM    TB_JOB_SATISFACTION t
    WHERE   JobSatisfaction = 1
), vwSatisfactionMedium AS (
    SELECT  ROW_NUMBER() OVER (
                PARTITION BY WorkLifeBalance,
                            JobSatisfaction,
                            CAST(Age/10 AS INTEGER),
                            CAST(MonthlyIncome/3000 AS INTEGER)
                ORDER BY 1
            ) NUM_REG, t.*
    FROM    TB_JOB_SATISFACTION t
    WHERE   JobSatisfaction = 2
), vwSatisfactionHigh AS (
    SELECT  ROW_NUMBER() OVER (
                PARTITION BY WorkLifeBalance,
                            JobSatisfaction,
                            CAST(Age/10 AS INTEGER),
                            CAST(MonthlyIncome/3000 AS INTEGER)
                ORDER BY 1
            ) NUM_REG, t.*
    FROM    TB_JOB_SATISFACTION t
    WHERE   JobSatisfaction = 3
), vwSatisfactionVeryHigh AS (
    SELECT  ROW_NUMBER() OVER (
                PARTITION BY WorkLifeBalance,
                            JobSatisfaction,
                            CAST(Age/10 AS INTEGER),
                            CAST(MonthlyIncome/3000 AS INTEGER)
                ORDER BY 1
            ) NUM_REG, t.*
    FROM    TB_JOB_SATISFACTION t
    WHERE   JobSatisfaction = 4
), vwResult AS (
    SELECT  *
    FROM    vwSatisfactionLow
UNION
    SELECT  *
    FROM    vwSatisfactionMedium
UNION
    SELECT  *
    FROM    vwSatisfactionHigh
UNION
    SELECT  *
    FROM    vwSatisfactionVeryHigh
)
SELECT  *
FROM    vwResult r
WHERE   NUM_REG <= 2