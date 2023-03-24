---
lab:
    title: 'Lab 2.6: Bulk delete data'
    module: 'Module 2: Manage Microsoft Dataverse'
---

# Practice Lab 2.6 - Bulk delete data

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

In this practice lab, you will be creating a recurring bulk deletion rule to automatically delete stale data.

## Exercise 1 – Bulk Delete

In this exercise, you will create a bulk deletion operation that will delete all milestone rows with a completion date older than 12 months. You want this operation to run every month.

### Task 1.1 – Create Bulk Delete Operation

1. Navigate to the Power Platform admin center <https://admin.powerplatform.microsoft.com>.

1. Select **Environments** from the left navigation pane.

1. Select the **Development** environment.

1. Select **Settings**.

1. Expand **Data management**.

1. Select **Bulk deletion**.

1. Click **New**.

1. Click **Next**.

1. Select **Milestones** from the **Look for** drop-down.

1. Click **Select** and choose the **Estimated Completion Date** column.

1. Select **Older than X Months**.

1. Enter **12**.

1. Click **Select** and choose the **Milestone status** column.

1. Select **Equals**.

1. Click on the ellipses (...), select **Completed** and **Cancelled**, and click **OK**.

1. Click **Next**.

1. Enter **Delete Old Milestones** for **Name**.

1. Select **At Scheduled Time**.

1. Select today’s date for **Date** and select **9:00 PM** for **Time**.

1. Check the **Run this job after every** box.

1. Select **30 days**.

1. Click **Next**.

1. Click **Submit**.

1. Change the view to **Recurring Bulk Deletion System Jobs**.

1. Wait for the job to be created. This can take few minutes. Refresh the view as needed.
