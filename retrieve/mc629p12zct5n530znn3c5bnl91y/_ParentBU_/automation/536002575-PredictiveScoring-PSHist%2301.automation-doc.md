## 536002575-PredictiveScoring-PSHist#01

**Name** (not equal to External Key)**:** INRES S.C. - UNICOOP TIRRENO SOCIETA' -51096-536002575-PSHist#01

**Description:** This automation sends HISTORICAL data to the Data Scientists for scoring and is an important componentof the Einstein Engagement Scoring application.

**Folder:** my automations/Data Factory Utility Automations/

**Started by:** Schedule

**Status:** Ready

**Schedule:** Not defined

**Notifications:** _none_


| Step 1<br>_<small>Predictive Scoring historical #01 extract-upload task</small>_ | Step 2<br>_<small>Predictive Scoring historical #02 extract-upload task</small>_ | Step 3<br>_<small>Predictive Scoring historical #03 extract-upload task</small>_ | Step 4<br>_<small>Predictive Scoring historical #04 extract-upload task</small>_ | Step 5<br>_<small>Predictive Scoring historical #05 extract-upload task</small>_ | Step 6<br>_<small>Predictive Scoring historical #06 extract-upload task</small>_ | Step 7<br>_<small>Predictive Scoring historical #S_ExportDo extract-upload task</small>_ |
| --- | --- | --- | --- | --- | --- | --- |
| _1.1: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Click_H#01 into S3 | _2.1: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Click_H#02 into S3 | _3.1: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Click_H#03 into S3 | _4.1: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Click_H#04 into S3 | _5.1: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Click_H#05 into S3 | _6.1: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Click_H#06 into S3 | _7.1: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_ExportDone_Hist_Email into S3 |
| _1.2: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Open_H#01 into S3 | _2.2: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Open_H#02 into S3 | _3.2: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Open_H#03 into S3 | _4.2: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Open_H#04 into S3 | _5.2: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Open_H#05 into S3 | _6.2: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Open_H#06 into S3 | - |
| _1.3: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Send_H#01 into S3 | _2.3: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Send_H#02 into S3 | _3.3: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Send_H#03 into S3 | _4.3: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Send_H#04 into S3 | _5.3: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Send_H#05 into S3 | _6.3: dataFactoryUtility_<br>Extract-Upload C536002575.VPS_stats_Send_H#06 into S3 | - |
