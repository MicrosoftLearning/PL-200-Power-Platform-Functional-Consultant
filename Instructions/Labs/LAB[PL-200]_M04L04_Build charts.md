---
lab:
    title: 'Lab 4.4: Build charts'
    module: 'Module 4: Build Power Apps'
---

Module 4: Build Power Apps
============================================

## Lab 4.4: Build charts

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this practice,
you will be creating a chart to use as a leader board to show the top 5-point
earners based on the Knowledge Test Result data.

## Exercise 1 – Create a chart

In this exercise, you will create a chart using the Knowledge Test Result data.

### Task 1 – Edit the Knowledge Assessment active item view

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Open the **Common Data Services Default Solution**.

5.  Click on the **Knowledge Test Result** table.

6.  Select the **Charts** tab.

7.  Click **Add Chart**.

8.  Enter **Leader Board** for name.

9.  Click **Charts \> Bar** to expand the dropdown and select **Bar**.

10. Click on the **Top/Bottom Rules \> Top X Rule** and select **Top 5 Items**.

11. Select **Total Points** for **Legend Entities (Series).**

12. Select **Owner** for **Horizontal (Category) Axis Label**.

13. Click **Save \> Save and Close**.

14. Click **Done**.

15. From the navigation breadcrumbs, click on the solution name **Common Data
    Service Default Solution**.

16. Click **Publish All Customizations** located in the command bar.

### Task 2 – Modify Knowledge Test Result form

In this task, you will be modifying the Knowledge Test Result form, so you can
input some data to test your chart.

1.  Make sure you are still on <https://make.powerapps.com> and you are in your
    **Practice** environment.

2.  Select **Solutions**.

3.  Open **Common Data Services Default Solution**.

4.  Click on the **Knowledge Test Result** table.

5.  Select the **Forms** tab.

6.  Open the **Information Main** form.

7.  Select the **General** tab of the form.

8.  Go to the **Table columns** and click on the **Knowledge Assessment**
    column. The Knowledge Assessment column will be added to the form.

9.  From the **Table columns**, click on the **Total Points** column. The Total
    Points column will be added to the form.

10. Click **Save**.

11. Click **Publish** and wait for the publishing to complete.

12. Click **back** to close the form editor.

### Task 3 – Create Rows and Test the Chart

1.  Make sure you are still on <https://make.powerapps.com> and you are in your
    **Practice** environment.

2.  Select **Apps**.

3.  Select the **Knowledge Admin** model-driven application and click **Play**.

4.  Click on the **Administration** area and select **Assessments**.

5.  Select **Knowledge Test Results**.

6.  Click **+ New**.

7.  Enter **Result One** for **Name**, **180** for **Total Points**, and click
    **Save**.

8.  Click **+New** again.

9.  Enter **Result Two** for **Name**, **250** for **Total Points**, and click
    **Save**.

10. Add four more records. You can provide any name you want but make sure you
    enter random total points.

11. Select **Knowledge Test Results** again. The **Active Knowledge Test
    Results** view will load.

12. Click **Show Chart**.

13. The chart will show your user's aggregated points.
