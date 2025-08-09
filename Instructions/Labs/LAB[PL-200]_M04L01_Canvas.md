---
lab:
    title: 'Lab 4.1: Enhance a canvas app'
    module: 'Learning Path 4: Create canvas apps'
---

# Practice Lab 4.1 – Enhance a canvas app

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
7. Click **Create app** to generate the app.
8. Select **File > Save as**.
9. Enter the name **Environmental Milestones App**.
10. Click **Save** again.

### Task 2: Configure Gallery
1. Expand **ScreenContainer1**.
2. Expand **BodyContainer1.**
3. Expand **SidebarContainer1.**
4. Select the default gallery named **RecordsGallery1**.
5. Rename it to **MilestoneGallery**.
6. In the **Properties** pane on the right, change the layout to **Title and Subtitle**.
7. Find the **Fields** and change the fields by selecting **X selected.**
8. Edit the fields shown in the gallery:
   - Subtitle2: Select **contoso_milestonecode**
   - Title2: Select **contoso_milestonetitle**
9. Verify the fields selected now read:
    - Subtitle2: **ThisItem.'Milestone Code'**
    - Title2: **ThisItem.'Milestone Title'**

### Task 3: Configure Form
1. Expand **BodyContainer1.**
2. Expand **RightContainer1.**
3. Expand **MainContainer1.**
5. Select the default form named **Form1**.
6. Rename it to **MilestoneForm**.
7. In the Properties pane, change the column layout to **1**.
8. Edit the fields shown in the form. Add, remove, and drag to reorder them so that they look like the list below:
   - **Milestone Code**
   - **Milestone Title**
   - **Milestone Description**
   - **Milestone Percentage Complete**
   - **Milestone Status**
9. Return to the tree view. Expand **RightContainer1** (if it is not already expanded).
10. Expand **SelectedRecordHeaderContainer1.**
12. Rename the submit button from **SubmitFormButton1** to **SaveBtn**.

### Task 4: Add App to Solution
1. In the left navigation pane, go to **Solutions**.
2. Open the **Fabrikam Environmental** solution.
3. Select **Add existing > App > Canvas app.**
4. Select the **Environmental Milestones App.**
5. Select **Add.**
6. Select **Publish all customizations.**