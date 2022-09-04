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

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Click on the **Waffle** button in the upper left corner to change applications and select **OneDrive**. (It may take a moment for your OneDrive to be set up. Click **Your OneDrive is ready** when you see it on the screen.)

1. Click **Upload** from the top menu and select **Files**.

1. Select the **Outcome data.xlsx** file located in the D:\PL200\Labs folder and click **Open**.

### Task 1.2 – Create a dataflow

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Expand **Dataverse** from the left navigation menu and select **Tables**.

1. Click **Import** from the action menu and then select **Import data**.

1. In the Choose data source dialog. Select **Excel workbook**.

1. Click **Browse OneDrive**. If prompted, sign in with your Microsoft 365 credentials.

1. Select the **Outcome data.xlsx** file you uploaded to OneDrive and click **Select**.

1. Click **Next**.

1. Check the box next to **Table1**.

Click **Next**. Do not navigate away from this page.

1. Select the first three **Do Not Modify** columns. You can use Ctrl on your keyboard with the mouse to select multiple columns.

1. In the Home tab of the ribbon, click **Remove columns**.

1. Select the **Estimated Completion Date** column.

1. Right click on the **Estimated Completion Date** column and select **Replace values**.

1. Enter **null** for **Value to find**.

1. Enter a date in three month's time for **Replace with**.

1. Click **Next**.

1. Select **Load to existing table**.

1. Select **contoso_outcome** in the **Destination table** drop-down.

1. Map **Estimated Completion Date**, **Goal**, **Outcome Description**, **Outcome status**, **Outcome Title**,  and **Target Aim** to their corresponding destination columns.

1. Click **Next.**

1. Select **Refresh manually**.

1. Click **Publish**.

### Task 1.3 – Test Your work

1. Under Dataverse in the Maker portal, select **Tables**.

1. Locate and click to open the **Outcome** table.

1. You should see all the imported **Outcome** records.

1. In the Maker portal, select **Apps**.

1. For the **Environmental Project Delivery** app, Click on the ellipses (...) and select **Play** and sign in with your Microsoft 365 credentials if prompted.

1. In the left-hand navigation of the app, select **Outcomes**.

1. The imported **Outcome** records should be in the view.

1. Click to open one of the **Outcome** records you imported.

1. Verify the **Estimated Completion Date** column is set to a future date.

1. Verify that the business process flow is running at the top of the form.
