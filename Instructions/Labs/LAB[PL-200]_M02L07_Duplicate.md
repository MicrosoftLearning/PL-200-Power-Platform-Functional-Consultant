---
lab:
    title: 'Duplicate detection (Optional)'
    module: 'Optional: Manage Microsoft Dataverse'
---

# Practice Lab - Duplicate detection

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

In this practice lab, you will implement duplicate detection rules so that duplicate projects cannot be created for the same program.

## Exercise 1 – Create new duplicate detection rule

In this exercise, you will create a new duplicate detection rule that will mark a Project as duplicate if it has the same project title and program.

### Task 1.1 – Create duplicate detection rule

1. Navigate to the Power Platform admin center <https://admin.powerplatform.microsoft.com>.

1. Select **Environments** from the left navigation pane.

1. Select the **Development** environment.

1. Select **Settings**.

1. Expand **Data management**.

1. Select **Duplicate detection rules**.

1. Select **New**.

1. Enter `Duplicate project` for **Name**.

1. Select **Project** for both **Base Record Type** and **Matching Record Type**.

1. Check the **Exclude inactive matching records** box.

1. Under **Field**, select **Project Title**.

1. Select **Exact Match** for **Criteria**.

1. Check the **Ignore Blank Values** box.

1. Add another field, select **Program**.

1. Select **Exact Match** for **Criteria**.

1. Check the **Ignore Blank Values** box.

1. Select **Save**.

1. Select **Publish**.

1. Select **OK**.

1. Select **Close**.
