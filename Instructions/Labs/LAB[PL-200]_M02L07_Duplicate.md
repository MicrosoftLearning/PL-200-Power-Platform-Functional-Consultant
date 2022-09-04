---
lab:
    title: 'Lab 2.7: Duplicate detection'
    module: 'Module 2: Manage Microsoft Dataverse'
---

# Practice Lab 2.7 - Duplicate detection (Optional)

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

In this practice lab, you will implement duplicate detection rules so that duplicate projects cannot be created for the same program.

> NOTE: This practice lab is optional.

## Exercise 1 – Create new duplicate detection rule

In this exercise, you will create a new duplicate detection rule that will mark a Project as duplicate if it has the same project title and program.

### Task 1.1 – Create duplicate detection rule

1. Navigate to the Power Platform admin center <https://admin.powerplatform.microsoft.com>.

1. Select **Environments** from the left navigation pane.

1. Select the **Practice** environment.

1. Select **Settings**.

1. Expand **Data management**.

1. Select **Duplicate detection rules**.

1. Click **New**.

1. Enter **Duplicate project** for **Name**.

1. Select **Project** for both **Base Record Type** and **Matching Record Type**.

1. Check the **Exclude inactive matching records** box.

1. Under Field, click **Select**.

1. Locate and select the **Project Title** column.

1. Select **Exact Match** for **Criteria**.

1. Check the **Ignore Blank Values** box.

1. Click **Select** again.

1. Locate and select the **Program** column.

1. Select **Exact Match** for **Criteria**.

1. Check the **Ignore Blank Values** box.

1. Click **Save**.

1. Click **Publish**.

1. Click **OK**.

1. Click **Close**.
