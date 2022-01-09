---
lab:
    title: 'Lab 12.5: Build an Excel template'
    module: 'Module 12: Putting it all together'
---


Module 12: Putting it all together
=================================

### Lab 12.5: Build an Excel template

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for Contoso building a knowledge assessment
application for your client Fabrikam. You need to configure a template so that
managers without much experience in Excel or the knowledge assessment
application can generate an Excel report of test scores. In this lab, you will
create an Excel template from a view, upload the template and use it against
data about knowledge test results.

**Note:** This lab assumes you are using the latest version of Microsoft Excel.
If you are working with an older version, your user experience may not exactly
match the instructions as written.

## Exercise 1 – Build an Excel template

In this exercise, you will build an Excel template for the Knowledge Test Result
table.

### Task 1 – Create View

In this task, you will create a new view for the Knowledge Test Result table.

1.  Navigate to <https://make.powerapps.com>. Ensure
    you are in your Practice environment.

2.  Expand **Solutions** on the left navigation.

3.  Click to open the **Common Data Services Default Solution.**

4.  Locate and click to open the **Knowledge Test Result** table.

5.  Select the **Views** tab and click **+ Add View**.

6.  Enter **Excel Template View** for Name and click **Create**.

7.  Change the **Table columns** pane to show **All** columns using the dropdown
    next to the Search box.

8.  Select the columns listed below:

    -   Knowledge Assessment

    -   Total Points

    -   Created On

    -   Owner

9.  Click **Save**.

10. Click **Publish**.

11. Close the view editor window.

### Task 2 – Create the Excel Template

In this task, you will be creating an Excel worksheet with a Pivot Chart on
Knowledge Test Results.

1.  Navigate to <https://make.powerapps.com> and
    ensure you are in your **Practice** environment. Select **Apps**.

2.  Locate and click on the **Knowledge Admin** model-driven application and click **Play**.

3.  Select **Knowledge Test Results**.

4.  Click on the **Excel Template** button located on the command bar and select
    **Download Template**.

5.  Make sure **Knowledge Test Result** is selected for **Entity** and select
    **Excel Template View** for **View**.

6.  Click **Download**.

7.  Wait for the template to be downloaded and then click **Open**.

8.  Click **Enable Editing**.

9.  Select the **Insert** tab and click **Pivot Table**.

10. The data should be selected. Click **OK** in the pop-up window.

11. Click **Pivot Chart** in the command bar.

12. Select **Column** and click **OK**.

13. Go to the **PivotChart Fields** pane and select **Total Points** and
    **Owner**.

14. Right click on the Pivot table and select **Pivot Table Options**.

15. Select the **Data** tab.

16. Check the **Refresh data when opening the file** checkbox and click **OK**.

17. Click **File** and click **Save As**.

18. Save the file on your machine and name it **Knowledge Test Result
    Template**.

19. Close the Excel file.

## Exercise 2 – Upload and Use Excel Template

In this exercise, you will upload the template you created and test it.

### Task 1 – Upload Template

In this task, you will upload the template you created

1.  Go to your **Knowledge Admin** Model-Driven application and click **Play**.

2.  Select **Knowledge Test Results**.

3.  Click on the **Excel Template** button located on the command bar and select
    **Upload Template**.

4.  Click **Choose File**.

5.  Select the template you created and click **Open**. (**Note:** Depending on
    the way your file was saved, you may need to expand the browse function to
    **all file types** to see your template.)

6.  Click **Upload**.

### Task 2 – Use Excel Template

In this task, you will create a new Knowledge Test Result row and test the
template you created.

1.  Click **+ New**.

2.  Enter **New Test Result** for **Name**, select one of the available
    Knowledge Assessments **Knowledge Assessment**, enter **980** for **Total
    Points** and click **Save and Close**.

3.  Click on the **Excel Template** button located on the command bar and select
    the **Knowledge Test Result Template** you uploaded.

4.  Click **Download Knowledge Test Result Template.**

5.  Wait for the download to complete and click **Open**.

6.  Select **Sheet1** and make sure the new record is in the table.
