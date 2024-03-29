SELECT
    e.JobID,
    g.Clicks AS [UniqueClicks],
    r.Opens AS [UniqueOpens],
    a.Bounces AS [UniqueBounces],
    y.Unsubscribes AS [UniqueUnsubs]
FROM
    Email_Performance_Sched e
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Clicks
        FROM
            _Click
        WHERE
            IsUnique = 1
        GROUP BY
            JobID
    ) g ON e.JobID = g.JobID
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Opens
        FROM
            _Open
        WHERE
            IsUnique = 1
        GROUP BY
            JobID
    ) r ON e.JobID = r.JobID
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Bounces
        FROM
            _Bounce
        WHERE
            IsUnique = 1
        GROUP BY
            JobID
    ) a ON e.JobID = a.JobID
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Unsubscribes
        FROM
            _Unsubscribe
        WHERE
            IsUnique = 1
        GROUP BY
            JobID
    ) y ON e.JobID = y.JobID
