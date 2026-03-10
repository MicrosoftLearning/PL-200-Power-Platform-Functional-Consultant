---
lab:
    title: 'Bulk delete data (Optional)'
    module: 'Optional: Manage Microsoft Dataverse'
---

# Practice Lab - Bulk delete data

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

In this practice lab, you will be creating a recurring bulk deletion rule to automatically delete stale data.

This lab will take approximately **10** minutes to complete. 

## Exercise 1 – Bulk Delete

In this exercise, you will create a bulk deletion operation that will delete all milestone rows with a completion date older than 12 months. You want this operation to run every month.

### Task 1.1 – Create Bulk Delete Operation

1. Navigate to the Power Platform admin center `https://aka.ms/ppac`

1. Select **Manage** and then select **Environments** from the left navigation pane.

1. Select the **Dev One** environment.

1. Select **Settings**.

1. Expand **Data management**.

1. Select **Bulk deletion**.

1. Select **+ New Job**.

1. Select **Milestones** from the **Look for entity** drop-down.

1. Select **Estimated Completion Date** for **Field**.

1. Select **Older than X Months** for **Operator**.

1. Enter **12** for **Value**.

1. Select **+ Add** drop-down.

1. Select **Add row**.

1. Select **Milestone Status** column for **Field**.

1. Select **Equals** for **Operator**.

1. Select the **Value** drop-down, and then select **Completed** and **Cancelled**.

1. Enter `Delete Old Milestones` for **Job name**.

1. Select today’s date and select **9:00 PM** for **Select time**.

1. Check the **Run job after every** checkbox.

1. Select **30 days**.

1. Select **Save and close**.

1. Change the view to **Recurring Bulk Deletion System Jobs**.

1. Wait for the job to be created. This can take few minutes. **Refresh** the view as needed.
