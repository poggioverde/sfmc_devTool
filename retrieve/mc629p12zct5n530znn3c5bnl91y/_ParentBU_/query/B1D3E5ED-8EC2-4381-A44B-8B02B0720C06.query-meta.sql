SELECT
    e.JobID,
    g.Clicks,
    r.Opens,
    a.Bounces,
    y.Unsubscribes
FROM
    Email_Performance_Sched e
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Clicks
        FROM
            _Click
        GROUP BY
            JobID
    ) g ON e.JobID = g.JobID
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Opens
        FROM
            _Open
        GROUP BY
            JobID
    ) r ON e.JobID = r.JobID
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Bounces
        FROM
            _Bounce
        GROUP BY
            JobID
    ) a ON e.JobID = a.JobID
    LEFT JOIN (
        SELECT
            JobID,
            COUNT(JobID) AS Unsubscribes
        FROM
            _Unsubscribe
        GROUP BY
            JobID
    ) y ON e.JobID = y.JobID
