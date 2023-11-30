---
lab:
    title: 'Lab 2.3: Users and Teams'
    module: 'Learning Path 2: Manage Microsoft Dataverse'
---

# Practice Lab 2.3 – Users and Teams

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

In this practice lab, you will be adding users and assigning security roles.

You will create a Team and adding users to the Team.

You will add the users and team to column security profiles.

> IMPORTANT: These labs are designed for use with a Microsoft 365 tenant provisioned with Microsoft 365 licenses and users. If you are not using an Authorized Lab Hoster (ALH) lab environment, you will need to create the users in Microsoft 365.

## Exercise 1 – Add users to your environment

### Task 1.1 – Create Users

1. Navigate to the Power Platform admin center `https://aka.ms/ppac`

1. Select **Environments** from the left navigation pane.

1. Select the **Dev One** environment.

1. Select **Settings**.

1. Expand **Users + permissions**.

1. Select **Users**.

1. Select **+ Add user**.

1. Enter `Alex` in **Enter a name or an email address** and select **Alex Wilber**.

1. Select **Add**.

1. Select the **Environmental user** role.

1. Select **Save**.

1. Select **+ Add user**.

1. Enter `Megan` in **Enter a name or an email address** and select **Megan Bowen**.

1. Select **Add**.

1. Select the **Environmental User** and **Environmental manager** roles.

1. Select **Save**.

1. Select **+ Add user**.

1. Enter `Patti` in **Enter a name or an email address** and select **Patti Fernandez**.

1. Select **Add**.

1. Select the **Environmental User** and **Environmental administrator** roles.

1. Select **Save**.

1. Select **Refresh** to view the updated list of users.

## Exercise 2 – Create a team

### Task 2.1 – Create Team

1. Navigate to the Power Platform admin center `https://aka.ms/ppac`

1. Select **Environments** from the left navigation pane.

1. Select the **Dev One** environment.

1. Select **Settings**.

1. Expand **Users + permissions**.

1. Select **Teams**.

1. Select **+ Create team**.

1. Enter `Fabrikam Managers` for **Team name**.

1. Select the root business unit.

1. Enter `MOD` in **Administrator** and select **MOD Administrator**.

1. Select **Owner** in the **Team type** drop-down.

1. Select **Next**.

1. Enter `Megan` in **Enter a name or an email address** and select **Megan Bowen**.

1. Select **Next**.

1. Select the **Environmental user** and **Environmental manager** roles.

1. Select **Save**.

## Exercise 3 – Column security profile

### Task 3.1 – Add user to column security profile

1. Navigate to the Power Platform admin center <https://admin.powerplatform.microsoft.com>.

1. Select **Environments** from the left navigation pane.

1. Select the **Dev One** environment.

1. Select **Settings**.

1. Expand **Users + permissions**.

1. Select **Column security profiles**.

1. Select **Outcome Approval Read-Only**.

1. Select the **Users** tab.

1. Select **+ Add Users**.

1. Enter `Alex` in **Enter a name or an email address** and select **Alex Wilber**.

1. Select **Add**.

### Task 3.2 – Add team to column security profile

1. Select **Column Security Profiles** in the breadcrumb at the top of the screen.

1. Select **Outcome Approval**.

1. Select the **Users** tab.

1. Select **+ Add Users**.

1. Enter `Patti` in **Enter a name or an email address** and select **Patti Fernandez**.

1. Select **Add**.

1. Select the **Teams** tab.

1. Select **+ Add Teams**.

1. Enter `Fabrikam` in **Search for a team by team name** and select **Fabrikam Managers**.

1. Select **Add**.
