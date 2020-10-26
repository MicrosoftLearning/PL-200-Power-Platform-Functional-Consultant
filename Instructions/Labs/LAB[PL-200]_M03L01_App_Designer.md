---
lab:
    title: 'Lab 3.1: App designer'
    module: 'Module 3: Build Power Apps'
---

Module 3: Build Power Apps
============================================

## Lab 3.1: Practice Lab – App designer

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this lab you will be
continuing your work on the model-driven Knowledge Admin app. Previously, all
you have done is set up the basic app. Now that you have the data model defined,
you can add the other entities to the app navigation.

Exercise 1 – Edit the site map 
-------------------------------

In this exercise, you will use the site map designer to add the other entities
to the app navigation.

### Task 1 – Edit the site map

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Open **Common Data Services Default Solution**.

5.  Select the **Knowledge Admin** model-driven application. Click the **edit** (the pencil) next to **Site map.**

7.  Drag **Area** from the **Components** tab and place it directly to the right of the
    **Administration** area, in the gray top bar.

8.  Select the new area, click the **Edit** button, and enter **Assessments** for **Title**.

9.  Make sure the **Assessments** group you created is selected.

10. Select the **Components** tab.

11. Drag **Group** and place it in the **Assessments** area.

12. Click **Edit.** Enter **Configuration** for **Title**.

13. Select the **Configuration** group you just added.

14. Select the **Components** tab.

15. Drag a **Subarea** to the **Configuration** group.

16. Select the **New Subarea**.

17. Select **Entity** for **Type**.

18. Select **Knowledge Assessment** for **Entity**.

28. Select the **Configuration** group.

29. Select the **Components** tab.

30. Drag **Subarea** to the **Configuration** group.

31. Select **Entity** for **Type** and **Knowledge Test Result** for **Entity**.

32. Click **Save**.

33. Click **Publish**.

34. Click **Save and Close**.

35. The entities you added to the sitemap are now referenced in the app
    designer.

36. **Do not** close the app designer.

Exercise 2 – Other app designer changes
---------------------------------------

In this exercise, you will use the app designer to filter what is visible.

### Task 1 – Add and remove components

Components can easily be added and removed from an app. Remember an app is just
a view into the entities that exist in your environment. Removing them from an
app does not physically remove the entity.

1.  With the app designer still open, click **+ Add**.

2.  Select **Entities**.

3.  Select the **Account** entity. The Account will be added to the app.

4.  Uncheck the **Account** entity. The Account entity will be removed from the
    application.

### Task 2 – Validate and adjust what forms and views show

Validating your app will alert you if you are missing any dependencies or other
issues. We will also adjust what forms and views are available to the app. By
limiting them now we won’t be surprised if somebody adds a view in CDS later. We
can then specifically choose which forms and views will show in our app you can
do this for the other components as well.

1.  Select **Forms** for the **Knowledge Assessment** entity.

2.  By default, all available components are selected. Uncheck the **All**
    checkbox.

4.  Check the **All** checkbox. Both forms will be selected.

5.  Select the **Views** of the **Knowledge Test Result**.

6.  All the **Views** are currently selected. Uncheck the **All** checkbox.

7.  All but one Public View will be unchecked. You are required to have at least
    one view.

8.  Check the All checkbox. All the views will be selected.

9.  You don’t have Dashboards or Charts yet. Click **Save**.

10. Click **Validate**.

11. You will get warnings letting you know you that application users will see
    all forms and views.

12. Click **Publish**.

13. Click **Save and Close**.

14. Click **Done.**

### Task 3 – Run the Application

1.  Make sure you still have the **Knowledge Admin** model-driven app
    selected.

2.  Click **Play**.

3.  The application will load. The current area is shown on the bottom-left of
    the page (**Administration**).

4.  Click on the **Administration** area and switch to the **Assessments** area.

5.  The **Active Knowledge Assessments** view will load.

6.  Click **+ New**.

7.  Enter **Test Assessment One** for **Title** and click **Save.**

8.  Click **+ New** Again.

9.  Enter **Test Assessment Two** for **Title** and click **Save and Close.**

10. Select on **Knowledge Assessments** in the left bar.

11. The two records you created will be visible in the view.

12. Select the **Knowledge Test Results**.

13. The view will load but you won’t have any records.

14. Click on the **Assessments** area and switch to the **Administration** area.

15. The **Enabled Users** view will load.
