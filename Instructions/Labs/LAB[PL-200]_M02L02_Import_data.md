---
lab:
    title: 'Lab 2.2: Import data'
    module: 'Module 2: Manage Microsoft Dataverse'
---

# Practice Lab 2.2 - Import data

## Scenario

You are a functional consultant working on the Fabrikam project. Your need to import some data in the your Dataverse environment. You choose to leverage Power Query to transform the data and complete the import.

## Exercise 1 – Import data

In this exercise, you will import Outcome rows into your Microsoft Dataverse environment using a dataflow.

### Task 1.1 – Load Excel file to OneDrive

1. Navigate to the Power Apps Maker portal `https://make.powerapps.com`

1. Select the **Waffle** button in the upper left corner to change applications and select **OneDrive**. (It may take a moment for your OneDrive to be set up. Click **Your OneDrive is ready** when you see it on the screen.)

1. Select **+ Add New** and select **Files upload**.

1. Locate and select the **Outcome data.xlsx** file and select **Open**.

    > This file should be located in the Documents\PL-200 folder on your machine.

### Task 1.2 – Create a dataflow

1. Navigate to the Power Apps Maker portal `https://make.powerapps.com`

1. Make sure you are in your **Development** environment.

1. Select **Tables** from the left navigation menu.

1. Select **Import** from the action menu, then select **Import data**.

1. In the **Choose data source** dialog, select **Excel workbook**.

1. Select **Browse OneDrive**. If prompted, sign in with your Microsoft 365 credentials.

1. Select the **Outcome data.xlsx** file you uploaded to OneDrive.

1. Select **Next**.

1. Check the box next to **Table1**.

1. Select **Next**. Do not navigate away from this page.

1. Select the first three **Do Not Modify** columns. Tip: You can hold **Ctrl** on the keyboard and select with the mouse to select multiple columns.

1. On the **Home** tab of the ribbon, select **Remove columns** to remove these three columns.

1. Select the **Estimated Completion Date** column.

1. Right-click on the **Estimated Completion Date** column and select **Replace values**.

1. Enter `null` for **Value to find**.

1. For **Replace with**, enter a date in three months time. Use date format **MM/DD/YYYY**. 

1. Select **OK**. The Estimated Completion Dates should show the date chosen.

1. Select **Next**.

1. Select **Load to existing table**.

1. Select **contoso_outcome** from the **Destination table** drop-down.

1. Under **Column mapping**, map **Estimated Completion Date**, **Goal**, **Outcome Description**, **Outcome status**, **Outcome Title**,  and **Target Aim** to their corresponding destination columns.

1. Select **Next**.

1. Select **Refresh manually**.

1. Select **Publish**.


### Task 1.3 – Test Your work

1. Navigate to the Power Apps Maker portal `https://make.powerapps.com`

1. Select **Tables**.

1. Locate and open the **Outcome** table.

1. You should see all the imported **Outcome** rows.

1. In the Maker portal, select **Apps**.

1. For the **Environmental Project Delivery** model-driven app, select the ellipses (...) and select **Play**, signing in with your Microsoft 365 credentials if prompted.

1. In the left-hand navigation of the app, select **Outcomes**.

1. The imported **Outcome** records should be in the view.

1. Select the title to open one of the imported **Outcome** records.

1. Verify the **Estimated Completion Date** column is set to the future date.

1. Verify the **Outcome Lifecycle** business process flow is visible at the top of the form.


