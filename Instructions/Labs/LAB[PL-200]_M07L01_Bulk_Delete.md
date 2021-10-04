---
lab:
    title: 'Lab 7.1: Bulk delete'
    module: 'Module 7: Analyze data with Power BI'
---

Module 7: Analyze data with Power BI
=======================

## Lab 7.1: Practice Lab – Bulk delete

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant working on the Fabrikam project. Your client
wants you implement some automatic data cleanup of stale data. You have been
asked to delete any Knowledge Assessment that is over 6 months past its end
date. You will be using the Bulk Delete feature of Microsoft Dataverse.

## Exercise 1 – Bulk Delete

In this exercise, you will create a bulk deletion operation that will delete all
Knowledge Assessment rows with an End Date older than 6 months, this operation
will run every 7 days.

### Task 1 – Create Bulk Delete Operation

In this task, you will create a bulk deletion operation.

1.  Navigate to [Power Platform admin
    center](https://admin.powerplatform.microsoft.com).

2.  Select your **Practice** environment.

3.  Click **Settings**.

4.  Go to the **Data Management** section and click **Bulk Deletion**.

5.  Click **New**.

6.  Click **Next**.

7.  Select **Knowledge Assessments** from the **Look for** dropdown.

8.  Click **Select** and choose the **End date** column.

9.  Select **Older than X Months**.

10. Enter **6** and click **Next**.

11. Change the **Name** to **Delete Old Assessments**.

12. Select to run **At Scheduled Time.**

13. Select today’s date for **Date** and select **10 Minutes** in to the future
    for **Time**.

14. Check the **Run this Job After Every** checkbox.

15. Select **7 Days**.

16. Check the **Send an Email…** checkbox and click **Next**.

17. Click **Submit**.

18. Wait for the job to be created. This can take few minutes. Refresh the view
    as needed.

### Task 2 – Test Bulk Deletion

In this task, you will test the bulk delete operation you created.

1.  Navigate to [Power Apps maker portal](https://make.powerapps.com/) and make
    sure you are in your **Practice** environment.

2.  Select **Apps**.

3.  Locate and click to open the **Knowledge Admin** application.

4.  Select **Knowledge Assessments.**

5.  Click to open one of the **Knowledge Assessment** records.

6.  Change the **End Date** to **Seven Months** in the past.

7.  Click **Save**.

8.  Wait for the bulk delete job to complete at the designated time. The row
    will be deleted.
