---
lab:
    title 3.4: 'Lab: Build charts'
    module: 'Module 3: Build Power Apps'
---

Module 3: Build Power Apps
============================================

## Lab 3.4: Build charts

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this practice you will be
continuing your work on the model-driven Knowledge Admin app. In this practice,
you will be creating a chart to use as a leader board to show the top 5-point
earners based on the Knowledge Test Result data.


Exercise 1 – Create a chart 
----------------------------

In this exercise, you will create a chart using the Knowledge Test Result data.

### Task 1 – Edit the Knowledge Assessment active item view

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Open the **Common Data Services Default Solution**.

5.  Click on the **Knowledge Test Result** entity.

6.  Select the **Charts** tab.

7.  Click **Add Chart**.

8.  Enter **Leader Board** for **Name**.

9.  Click **Charts > Bar** to expand the dropdown and select **Bar**.

10. Click on the **Top/Bottom Rules > Top X Rule** and select **Top 5 Items**.

11. Select **Total Points** for **Legend Entities (Series).**

12. Select **Owner** for **Horizontal (Category) Axis Label**.

13. Click **Save > Save and Close**.

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

4.  Click on the **Knowledge Test Result** entity.

5.  Select the **Forms** tab.

6.  Open the **Information Main** form.

7.  Select the **General** tab of the form.

8.  Go to the **Field Explorer** and double click on the **Knowledge
    Assessment** field. The Knowledge Assessment field will be added to the form.

9.  From the **Field Explorer**, double click on the **Total Points** field.

10. Click **Save**.

11. Click **Publish** and wait for the publishing to complete.

12. Click **back** to close the form editor.

### Task 3 – Create Records and Test the Chart

1.  Make sure you are still on <https:/make.powerapps.com> and you are in the
    **Practice** environment.

2.  Select **Apps**.

3.  Select the **Knowledge Admin** model-driven application and click **Play**.

4.  Click on the **Administration** area and select **Assessments**.

5.  Select **Knowledge Test Results**.

6.  Click **+ New**.

7.  Enter **Result One** for **Name**, **180** for **Total Points**, and click
    **Save**.

8.  Click **+ New** again.

9.  Enter **Result Two** for **Name**, **250** for **Total Points**, and click
    **Save**.

10. Add four more records. You can provide any name you want but make sure you
    enter random total points.

11. Select **Knowledge Test Results** again. The **Active Knowledge Test
    Results** view will load.

12. Click **Show Chart**.

13. The chart will show your user's aggregated points.
