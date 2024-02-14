SELECT
    e.jobtype,
    e.jobstatus,
    e.testemailaddr,
    e.iswrapped,
    e.category,
    e.sendtype,
    e.EmailName,
    e.SchedTime AS [SentTime],
    e.JobID,
    COUNT(d.JobID) AS [Sent],
    e.FromName AS [SendClassification],
    e.TriggererSendDefinitionObjectID AS [TriggererSendDefinitionObjectID],
    e.TriggeredSendCustomerKey AS [TriggeredSendCustomerKey]
FROM
    _Job e
    JOIN _Sent d ON d.JobId = e.JobId
GROUP BY
    e.EmailName,
    e.SchedTime,
    e.JobId,
    e.FromName,
    e.TriggererSendDefinitionObjectID,
    e.TriggeredSendCustomerKey,
    e.jobtype,
    e.jobstatus,
    e.testemailaddr,
    e.iswrapped,
    e.category,
    e.sendtype
HAVING
    e.JobID != ''
    AND COUNT(d.JobId) > 10
    AND e.category != 'Test Send Emails'
