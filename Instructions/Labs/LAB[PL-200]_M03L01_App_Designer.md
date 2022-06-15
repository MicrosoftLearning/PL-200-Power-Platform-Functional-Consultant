---
lab:
    title: 'Lab 3.1: Use app designer'
    module: 'Module 3: Make model-driven apps with Power Apps'
---

Module 3: Make model-driven apps with Power Apps
============================================

## Lab 3.1: Practice Lab – Use app designer

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this lab you will be
continuing your work on the model-driven Knowledge Admin app. Previously, all
you have done is set up the basic app. Now that you have the data model defined,
you can add the other tables to the app navigation.

## Exercise 1 – Edit the site map

In this exercise, you will use the site map designer to add the other tables to
the app navigation.

### Task 1 – Edit the site map

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Open **Common Data Services Default Solution**.

5.  Select the **Knowledge Admin** model-driven application. Click **Switch to classic** and then the **edit**
    (the pencil) next to **Site map.**

6.  Drag **Area** from the **Components** tab and place it directly to the right
    of the **Administration** area, in the gray top bar.

7.  Select the new area, click the **Edit** button, and enter **Assessments**
    for **Title**.

8.  Make sure the **Assessments** group you created is selected.

9.  Select the **Components** tab.

10. Drag **Group** and place it in the **Assessments** area.

11. Enter **Configuration** for **Title**.

12. Select the **Configuration** group you just added.

13. Select the **Components** tab.

14. Drag a **Subarea** to the **Configuration** group.

15. Select the **New Subarea**.

16. Select **Entity** for **Type**.

17. Select **Knowledge Assessment** for **Entity**.

18. Select the **Configuration** group.

19. Select the **Components** tab.

20. Drag **Subarea** to the **Configuration** group.

21. Select **Entity** for **Type** and **Knowledge Test Result** for **Entity**.

22. Click **Save**.

23. Click **Publish**.

24. Click **Save and Close** it will close the sitemap page and redirect to the Model-driven app designer.

25. The tables you added to the sitemap are now referenced in the app designer.

26. **Do not** close the Model-Driven app designer.

## Exercise 2 – Other app designer changes

In this exercise, you will use the app designer to filter what is visible.

### Task 1 – Add and remove components

Components can easily be added and removed from an app. Remember an app is just
a view into the tables that exist in your environment. Removing them from an app
does not physically remove the table.

1.  With the app designer still open, click **+ Add**.

2.  Select **Entities**.

3.  Select the **Account** table. The Account will be added to the app.

4.  Uncheck the **Account** table. The Account entity will be removed from the
    application.

### Task 2 – Validate and adjust what forms and views show

Validating your app will alert you if you are missing any dependencies or other
issues. We will also adjust what forms and views are available to the app. By
limiting them now we won’t be surprised if somebody adds a view in CDS later. We
can then specifically choose which forms and views will show in our app you can
do this for the other components as well.

1.  Select **Forms** for the **Knowledge Assessment** table.

2.  By default, all available components are selected. Uncheck the **All**
    checkbox.

3.  Check the **All** checkbox. Both forms will be selected.

4.  Select the **Views** of the **Knowledge Test Result**.

5.  All the **Views** are currently selected. Uncheck the **All** checkbox.

6.  All but one Public View will be unchecked. You are required to have at least
    one view.

7.  Check the All checkbox. All the views will be selected.

8.  You don’t have Dashboards or Charts yet. Click **Save**.

9.  Click **Validate**.

10. You will get warnings letting you know you that application users will see
    all forms and views.

11. Click **Publish**.

### Task 3 – Run the Application

1.  Make sure you still have the **Knowledge Admin** model-driven app selected.

2.  Click **Play**.

3.  The application will load. The current area is shown on the bottom-left of
    the page (**Administration**). The **Enabled users** view will load and you
    will see a list of enabled users. 
    **Hint:** If current area is not shown on the bottom-left of the page, click **Home** from the left navigation. 

4.  Click on the **Administration** area and switch to the **Assessments** area.

5.  The **Active Knowledge Assessments** view will load.

6.  Click **+ New**.

7.  Enter **Test Assessment One** for **Title** and click **Save.**

8.  Click **+ New** Again.

9.  Enter **Test Assessment Two** for **Title** and click **Save and Close.**

10. Select on **Knowledge Assessments** in the left bar.

11. The two rows you created will be visible in the view.

12. Select the **Knowledge Test Results**.

13. The view will load but you won’t have any rows.

14. Click on the **Assessments** area at the bottom of the screen and click
    **Administration** to return to the Administration area.

15. You can close the model-driven app.
