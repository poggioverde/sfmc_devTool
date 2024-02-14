SELECT
    JobID,
    CAST(Unsubscribes AS DECIMAL(18, 2)) / CAST(Sent AS DECIMAL(18, 2)) * 100 AS 'UnsubRate',
    CAST(Opens AS DECIMAL(18, 2)) / CAST(Sent AS DECIMAL(18, 2)) * 100 AS 'OpenRate',
    CAST(Clicks AS DECIMAL(18, 2)) / CAST(Sent AS DECIMAL(18, 2)) * 100 AS 'CTR',
    CAST(Bounces AS DECIMAL(18, 2)) / CAST(Sent AS DECIMAL(18, 2)) * 100 AS 'BounceRate'
FROM
    Email_Performance_Sched
