---
lab:
    title: 'Lab 6.5: Import data'
    module: 'Module 6: Analyze data using Power BI'
---

Module 6: Analyze data using Power BI
=======================

## Lab 6.5: Practice Lab – Import data

Scenario
--------

You are a functional consultant working on the Fabrikam project. Your client
wants you to import some data in the their CDS environment. Specifically, they
have some data to import into an existing Knowledge Assessment entity. You
choose to leverage Power Query to transform the data and complete the import.


Exercise 1 – Import Data
------------------------

In this exercise, you will import Knowledge Assessment records into your CDS
environment.

**Important:** Before starting this lab, download the **Knowledge Assessment Import File** from the Allfiles folder (or provided directly by your instructor) and save it to your local desktop.

### Task 1 – Load Excel file to OneDrive

In this task, you will Load then Knowledge Assessments Excel file to your
OneDrive. You can choose many data sources to use with Power Query, but Excel
was the one you chose.

1.  Navigate to <https://make.powerapps.com/> and make sure you are in your **Practice** environment.

2.  Click on the **Waffle** button in the upper left corner to change
    applications and select **OneDrive**. (It may take a moment for your OneDrive to be set up. Click **Your OneDrive is ready** when you see it on the screen.)

3.  Click **Upload** from the top menu and select **Files**. (Depending on how your Excel file saved, you may need to change your browse function to search for all file types.)

4.  Select the **Knowledge Assessment Import File** file located in the resources folder
    and click **Open**.

### Task 2 – Create Data Integration Project

In this task, you will create a new data integration project and transform the
table

1.  Navigate to <https://make.powerapps.com/> and make sure you are in your **Practice** environment.

2.  Expand **Data** and select **Entities.**

3.  Click **Get data.**

4.  Select **Excel**.

5.  Click **Browse OneDrive**.

6.  Pick your account.

7.  Select the **Knowledge Assessment Import File** file you uploaded to OneDrive and click
    **Open**.

8.  Click **Next**.

9.  Select the **Knowledge Assessment Import File** table and click **Next**.

10. Check the box next to **Sheet1.** Click **Transform data** and select **Use First Row as Headers**.

### Task 3 – Manage and Transform Columns

In this task, you will remove unwanted columns, split the End Date column,
change the year from 2019 to 2020, and then merge back together.

3.  Select the **End Date** column.

4.  Right click, select click **Split Column**, and select **By
    Delimiter**.

5.  Select **Advanced**.

6.  Select **Custom** for **Separator**.

7.  Type **/** in the box.

8.  Enter **3** for **Number of Columns.**

9.  Click **OK**.

10. Select the **End Date.3** column.

11. Right click on the header and select **Replace Values**.

12. Enter **2021** for **Value to Find**.

13. Enter **2022** for **Replace with** and click **OK**.

14. Select all three **End Date** columns. Select **End Date.1 first**, then
    **End Date.2**, and then **End Date.3**.

15. Right click on the header and select **Merge Columns**.

16. Select **Custom** for **Separator**.

17. Enter **/** and click **OK**.

18. Double click on the **Merged** column and rename it **End Date**.

19. Click **Next**.

20. Select **Load to Existing Entity**.

21. Select **crXXX_Knowledge Assessment**, where crXXX is your unique prefix.

22. Map **Difficulty** to **cr123_Difficulty**.

23. Map **End Date**, **Start Date**, and **Title** to their corresponding
    fields.

25. Click **Create**.

### Task 4 – Test Your Work

1.  Select **Entities**.

2.  Locate and click to open the **Knowledge Assessment** entity.

3.  Select the **Data** tab.

4.  You should see all the imported **Knowledge Assessments**.

8.  Select **Apps** and click to open the **Knowledge Admin** application.

9.  Select **Knowledge Assessments**.

10. The imported **Knowledge Assessments** should be on this view.

11. Click to open one of the **Knowledge Assessments** you imported.

12. Locate the **Days Remaining** field in the header and make sure it has a
    calculated value.
