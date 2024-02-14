SELECT
    EmailName,
    Sent,
    Unsubscribes,
    UnsubRate,
    SentTime,
    JobID,
    Opens,
    OpenRate,
    Clicks,
    CTR,
    Bounces,
    BounceRate,
    SendClassification,
    TriggererSendDefinitionObjectID,
    TriggeredSendCustomerKey,
    UniqueOpens,
    UniqueClicks,
    UniqueBounces,
    UniqueUnsubs,
    CASE
        WHEN TriggeredSendCustomerKey IS NULL THEN 'Newsletter'
        ELSE 'MarketingJourney'
    END AS Tipo,
    (sent - bounces) AS [Delivered],
    CAST((sent - bounces) AS DECIMAL(18, 2)) / CAST(Sent AS DECIMAL(18, 2)) * 100 AS [DeliveredRate]
FROM
    Email_Performance_Sched
WHERE
    SentTime >= DATEADD(DAY, -30, CONVERT(DATE, GETDATE()))
