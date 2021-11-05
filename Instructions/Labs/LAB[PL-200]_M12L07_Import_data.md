---
lab:
    title: 'Lab 12.7: Import data'
    module: 'Module 12: Putting it all together'
---

Module 12: Putting it all together
=======================

## Lab 12.7: Practice Lab – Import data

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant working on the Fabrikam project. Your client
wants you to import some data in the their Dataverse environment. Specifically, they
have some data to import into an existing Knowledge Assessment table. You choose
to leverage Power Query to transform the data and complete the import.

## Exercise 1 – Import Data

In this exercise, you will import Knowledge Assessment rows into your Microsoft
Dataverse environment.

**Important:** Before starting this lab, download the **Knowledge Assessment
Import File** from the Allfiles folder (or provided directly by your
instructor) and save it to your local desktop.

### Task 1 – Load Excel file to OneDrive

In this task, you will Load then Knowledge Assessments Excel file to your
OneDrive. You can choose many data sources to use with Power Query, but Excel
was the one you chose.

1.  Navigate to <https://make.powerapps.com> and make
    sure you are in your **Practice** environment.

2.  Click on the **Waffle** button in the upper left corner to change
    applications and select **OneDrive**. (It may take a moment for your
    OneDrive to be set up. Click **Your OneDrive is ready** when you see it on
    the screen.)

3.  Click **Upload** from the top menu and select **Files**. (Depending on how
    your Excel file saved, you may need to change your browse function to search
    for all file types.)

4.  Select the **Knowledge Assessment Import File** file located in the
    resources folder and click **Open**.

### Task 2 – Create Data Integration Project

In this task, you will create a new data integration project and transform the
table

1.  Navigate to <https://make.powerapps.com> and make
    sure you are in your **Practice** environment.

2.  Expand **Data** and select **Tables.**

3.  Click **Data**

4.  Click **Get data.**

5.  Select **Excel workbook**.

6.  Click **Browse OneDrive**.

7.  Pick your account.

8.  Select the **Knowledge Assessment Import File** file you uploaded to
    OneDrive and click **Select**.

9.  Click **Next**.

10. Check the box next to **Table1.** Click **Next**. Do not navigate away from
    this page.

### Task 3 – Manage and Transform Columns

In this task, you will remove unwanted columns, split the End Date column,
change the year from 2019 to 2020, and then merge back together.

1.  Select the **End Date** column.

2.  Right click, select click **Split Column**, and select **By Delimiter**.

3.  Select **Advanced**.

4.  Select **Custom** for **Separator**.

5.  Type **/** in the box.

6.  Enter **3** for **Number of Columns.**

7.  Click **OK**.

8.  Select the **End Date.3** column.

9.  Right click on the header and select **Replace Values**.

10. Enter **2021** for **Value to Find**.

11. Enter **2022** for **Replace with** and click **OK**.

12. Select all three **End Date** columns. Select **End Date.1 first**, then
    **End Date.2**, and then **End Date.3**.

13. Right click on the header and select **Merge Columns**.

14. Select **Custom** for **Separator**.

15. Enter **/** and click **OK**.

16. Double click on the **Merged** column and rename it **End Date**.

17. Click **Next**.

18. Select **Load to Existing Table.**

19. Select **crXXX_Knowledge Assessment**, where crXXX is your unique prefix.

20. Map **Difficulty** to **crXXX_Difficulty**.

21. Map **End Date**, **Start Date**, and **Title** to their corresponding
    columns.

22. Click **Next.**

23. Select **Refresh manually** and then click **Publish**.

### Task 4 – Test Your Work

1.  Select **Tables**.

2.  Locate and click to open the **Knowledge Assessment** table.

3.  Select the **Data** tab.

4.  You should see all the imported **Knowledge Assessments**.

5.  Select **Apps** and click to open the **Knowledge Admin** application.

6.  Select **Knowledge Assessments**.

7.  The imported **Knowledge Assessments** should be on this view. (Refresh if
    needed.)

8.  Click to open one of the **Knowledge Assessments** you imported.

9.  Locate the **Days Remaining** field in the header and make sure it has a
    calculated value.
