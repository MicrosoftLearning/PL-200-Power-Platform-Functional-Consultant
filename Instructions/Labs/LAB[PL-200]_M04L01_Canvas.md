---
lab:
    title: 'Lab 4.1: Enhance a canvas app'
    module: 'Learning Path 4: Create canvas apps'
---

# Practice Lab 4.1 – Enhance a canvas app

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

You have been assigned to continue work on the Fabrikam Environmental Work Delivery canvas app.

In this practice lab, you will examine the app to see how it works and make some user interface changes.

If your browser is not set to English, the syntax of Power Fx formulas might change. See Build global support into canvas apps <https://learn.microsoft.com/power-apps/maker/canvas-apps/global-apps> for more information.

# Module Lab: Create Canvas App for Milestones Table

**Learning Path**: Build Power Apps  
**Lab Title**: Create Canvas App for Milestones Table  

## Scenario  
You are a Power Platform functional consultant working with the Contoso team. You’ve been asked to create a simple Canvas app that allows users to view and update milestone records stored in Microsoft Dataverse.

## Exercise 1: Create Canvas App from Milestones Table

### Task 1: Create Canvas App
1. Navigate to [Power Apps Maker Portal](https://make.powerapps.com).
2. Ensure you are in the **Dev One** environment.
3. In the **Objects** pane on the left, select **Apps**.
4. Select **Start with data**.
5. Choose **Existing tables**.
6. Search for and select the **Milestone** table.
7. Click **Create** to generate the app.
8. Select **File > Save**.
9. Enter the name **Environmental Milestones App**.
10. Click **Save** again.

### Task 2: Configure Gallery
1. Select the default gallery named **RecordsGallery1**.
2. Rename it to **MilestoneGallery**.
3. Change the layout to **Title and Subtitle**.
4. Edit the fields shown in the gallery:
   - **Milestone Code**
   - **Milestone Title**

### Task 3: Configure Form
1. Select the default form named **Form1**.
2. Rename it to **MilestoneForm**.
3. Change the column layout to **1**.
4. Edit the fields shown in the form:
   - **Milestone Code**
   - **Milestone Title**
   - **Milestone Description**
   - **Milestone Percentage Complete**
   - **Milestone Status**
5. Rename the submit button from **SubmitFormButton1** to **SaveBtn**.

### Task 4: Add App to Solution
1. In the left navigation pane, go to **Solutions**.
2. Open or create a solution (e.g., **Contoso Milestone Solution**).
3. Add the newly created **Environmental Milestones App** to the solution.
