---
lab:
    title: 'Lab 4.3: Modify views'
    module: 'Module 4: Build Power Apps'
---

Module 4: Build Power Apps
============================================

## Lab 4.3: Practice Lab – Modify views

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this practice you will be
continuing your work on the model-driven Knowledge Admin app. In this practice,
you will be modifying the auto generated views to add the new fields you added
in the data-modeling practice.

Exercise 1 – Edit the Knowledge Assessment View 
------------------------------------------------

In this exercise, you will edit the view for the Knowledge Assessment entity. By
default, the auto generated views only show the primary attribute and created on
date.

### Task 1 – Edit the Knowledge Assessment active item view

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Open the **Common Data Services Default Solution**.

5.  Open the **Knowledge Assessment** entity.

6.  Select the **Views** tab.

7.  Click to open the **Active Knowledge Assessments** view.

### Task 2 – Add and Remove Columns from View

1.  The **Active Knowledge Assessment** view currently has two columns. In the **Fields** menu on the left, expand the dropdown menu and change to **All.**

2.  Click on the **Status Reason** field.

3.  The **Status Reason** field will be added to view. Click on the **Owner**
    field.

4.  The **Owner** field will be added to the view. Click on the **Modified By**
    field.

5.  Click on the **Modified By** column header, select **Insert Column**, and expand the dropdown to **All** again.

6.  Select **Modified On**. The view should now have six columns.

7.  You will now remove the **Created On** field. Click on the dropdown button of
    the **Created On** column.

8.  Click **Remove**.

9.  The **Created On** column will be removed from the view.

10. You will now add a field from a related entity to the view. From the
    **Fields** side bar, select the **Related** tab.

11. All the entities that the **Knowledge Assessment** entity has a **N:1** relationship with
    will be listed here. Expand **Owning User (User).**

12. Enter **Email** on the search box and enter.

13. Select **Primary Email**. The **Primary Email** will be added to the view.

14. Click **Save**.

### Task 3 – Reorder View Columns and Change Column Width

Generally, you will always want to have the order of the fields in view be the
highest value to lowest unless you have other specific needs.

1.  You will now reorder the columns. Select the **Owner** column header and
    click **Move Left**.

2.  You can also reorder columns by drag/drop. Drag the **Primary Email** column
    header and drop it to the left of the **Status Reason** column.

3.  Move the **Modified On** column to right of the **Modified By** column.

4.  The columns order should now be **Title**, **Owner**, **Primary Email**,
    **Status Reason**, **Modified By**, and **Modified On**.

5.  You will now make the **Title** and **Primary Email** columns wider. Select
    the **Title** column header and drag the right edge to the right. The
    **Title column** should get wider.

6.  Select the **Primary Email** column header and drag the right edge to the
    right until the entire email addresses are visible.

7.  Click **Save**.

### Task 4 – Sorting

The View is now sorted by the **Title (A-Z).** You will configure the sorting to be
based on the Modified On field first.

1.  Locate the **Sort By...** area located in the view properties.

2.  Remove the default value. We want to sort **Modified On**.

3.  Click **Sort By** and select **Modified On**.

4.  Click **Then Sort By** and select **Owner**.

5.  Click **Save**.

### Task 5 – Use Save as to create a copy

In this task, you will use the Save As feature to create a template for new
views. An easy way to create views is to create the first one with all the
fields you want, then save as the view and change the filter to what the new
view needs.

1.  Add **Days Remaining** as the last column in the view. Then click the **dropdown** button next to the
    **Save** button.

2.  Select **Save As**.

3.  Enter **Created This Month** for Name and click **Save**.

4.  Locate the **Filter By** section of the **View** property. You should have
    **Status is ‘Active’**. All records have a status field; if you don’t filter
    to only show active, you may have records showing in your list that are not
    editable or meant to be inactive. Inactive is used in the Common Data Service to mark records as
    soft deleted as an alternate to physically deleting the records.

5.  You will add the Created On field back to the view. Click on the **+ Add Column**
    button located on the top right of the view.

6.  Select All and then select **Created On**.

7.  In the **Properties** pane, select **Edit filters.**

8.  In the pop-up, click **+Add** and select **+Add row.**

9.  In the first dropdown, select **Created on**. In the second dropdown, select **This Month**. Make sure the box for both rows are checked.

10. Click **OK**.

11. Click **Save**.

12. Click **Publish**.

13. Click the **back** button.

15. From the navigation breadcrumbs, click on the solution name **Common Data Services Default Solution**.

16. Click **Publish All Customizations**.

### Task 6 – Test the View

1.  While still on <https://make.powerapps.com>, select **Apps**.

2.  Click on the **Knowledge Admin** model-driven application and select **Play.** Switch from **Administration** to **Assessments.**

4.  The **Active Knowledge Assessments** view will be loaded. Make sure the
    columns you selected are there in the order you selected. (You may need to use the view drop-down to re-select the view and cause it to refresh.) 

5.  Click the **Select a view** dropdown next to the **Active Knowledge Assessments** view title and choose the **Created This Month** view.

6.  Make sure the columns are showing in the order you selected.
