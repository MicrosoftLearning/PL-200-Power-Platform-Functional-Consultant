---
lab:
    title: 'Lab 3.5: Build dashboards'
    module: 'Module 3: Build Power Apps'
---

Module 3: Build Power Apps
============================================

Lab 3.5: Practice Lab – Build dashboards

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You will be continuing your work
on the model-driven Knowledge Admin app. In this practice, you will be creating
a dashboard and modifying the app to include it.

    
Exercise 1 – Create a dashboard 
--------------------------------

In this exercise, you will create a dashboard using existing charts and views.

### Task 1 – Create the dashboard

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Open the **Common Data Services Default Solution**.

5.  Click **+ New** and select **Dashboard** and **2-Column Overview**. *Note:* Always
    pick the template that best fits what you plan to build. You can always
    remove some of the cells you are not using or adjust their sizes.

6.  Enter **Results Overview** for Name.

7.  Click the **Insert Chart** icon (the chart with a plus sign) in the left top section.

8.  Select **Knowledge Test Result** for **Record Type**.

9.  Select **Active Knowledge Test Results** for **View**.

10. Select **Leader Board** for **Chart**.

11. Click **Add**.

12. Click the **Insert List** icon (the bulleted list) for the right top section.

13. Select **Knowledge Assessments** for **Record Type**.

14. Select **Active Knowledge Assessments** for **View**.

15. Click **Add**.

16. Click **Save** to save the dashboard.

17. Click **Close**.

18. Click **Done**.

### Task 2 – Edit the Knowledge Admin App

For your dashboard to show up in the model-driven app you must edit the app
module and added to the definition

1.  Make sure you are still in <https://make.powerapps.com> and you have your
    **Practice** environment selected.

2.  Open **Common Data Services Default Solution**.

3.  Click on the **Knowledge Admin** model-driven application. The app designer
    should open.

4.  Select **Dashboards**.

5.  Uncheck the **All** checkbox if it is checked.

6.  Check the **Results Overview** checkbox.

7.  Uncheck any other checked dashboards.

8.  Go to the **Entity View** area and see if any other entities were added. If
    yes, select each and click **Remove**.

9.  Click **Save**.

10.  Click the **edit** (the pencil) icon next to Site Map.

11.  Select the **Assessments** area.

12.  Select the **Configuration** group.

13.  Click **+ Add** and select **Subarea**.

14.  Select **Dashboard** for **Type**.

15.  Select **Results Overview** for **Default Dashboard**.

16. Drag the **Dashboards** subarea you just added and drop it above the
    **Knowledge Assessments** subarea.

17. Drag the **Assessments** area and drop it to the left of the
    **Administration** area to switch the order.

18. Click **Save**.

19. Click **Publish** to publish the sitemap.

20. Click **Save and Close** to close the site map designer.

21. Click **Validate** to validate your changes. You can ignore the warnings.

22. Click **Publish** to publish the application.

23. Click **Save and Close** to close the close the app designer.

24. Click **Done**. Deselect the Knowledge Admin model-driven app.

25. Click **Publish All Customizations**.

### Task 3 – Test Your Changes

1.  Make sure you are still in <https://make.powerapps.com> and you have the
    **Practice** environment selected.

2.  Select **Apps**.

3.  Select the **Knowledge Admin Model-Driven application** and click **Play**.

5.  The Dashboard will load and **Results Overview** will be selected by
3.  Select the **Knowledge Admin Model-Driven application** and click **Play**. (If your dashboard does not load immediately, click the **Home** button in the left menu to refresh the app.) 

5.  The Dashboard will load and **Results Overview** will be selected by
    default.
