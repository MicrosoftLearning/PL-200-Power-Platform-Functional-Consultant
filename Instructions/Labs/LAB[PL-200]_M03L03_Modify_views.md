---
lab:
    title: 'Lab 3.3: Modify views'
    module: 'Module 3: Make model-driven apps with Power Apps'
---

Module 3: Make model-driven apps with Power Apps
============================================

## Lab 3.3: Practice Lab – Modify views

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this practice you will be
continuing your work on the model-driven Knowledge Admin app. In this practice,
you will be modifying the auto generated views to add the new columns you added
in the data-modeling practice.

## Exercise 1 – Edit the Knowledge Assessment View

In this exercise, you will edit the view for the Knowledge Assessment table. By
default, the auto generated views only show the primary column and created on
date.

### Task 1 – Edit the Knowledge Assessment active item view

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Open the **Common Data Services Default Solution**.

5.  Open the **Knowledge Assessment** table.

6.  Select the **Views** tab.

7.  Click to open the **Active Knowledge Assessments** view.

### Task 2 – Add and Remove Columns from View

1.  The **Active Knowledge Assessment** view currently has two columns **Title** and **Created On**.

2.  Click on the **Status Reason** column to add it to the View.

3.  Click on the **Owner** column to add it to the View.

4.  Click on the **Modified By** column to add it to the View.

5.  Click on the **Modified By** column header, select **+ Insert view column**.

6.  Select **Modified On** to add this column before the Modified By column. The view should now have six columns.

7.  You will now remove the **Created On** column. Click on the header of the
    **Created On** column.

8.  Click **Remove**. The **Created On** column will be removed from the view.

9. You will now add a column from a related table to the view. From the **Table
    columns** side bar, select the **Related** tab.

10. All the tables that the **Knowledge Assessment** table has a **N:1**
    relationship with will be listed here. Expand **Owning User (User).**

11. Enter **Email** on the search box and enter.

12. Select **Primary Email**. The **Primary Email** will be added to the view.

13. Click **Save**.

14. **Do not** close this window.

### Task 3 – Reorder View Columns and Change Column Width

Generally, you will always want to have the order of the columns in view be the
highest value to lowest unless you have other specific needs.

1.  You will now reorder the columns in the **Active Knowledge Assessment** view. Select the **Owner** column header and
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

The View is now sorted by the **Title (A-Z).** You will configure the sorting to
be based on the Modified On column first.

1.  In the **Active Knowledge Assessment** view, locate the **Sort By...** area in the view properties.

2.  Remove the default value. We want to sort **Modified On**.

3.  Click **Sort By** and select **Modified On**.

4.  Click **Then Sort By** and select **Owner**.

5.  Click **Save**.

### Task 5 – Use Save as to create a copy

In this task, you will use the Save As feature to create a template for new
views. An easy way to create views is to create the first one with all the
columns you want, then **Save As** the view and change the filter to what the new
view needs.

1.  In the **Active Knowledge Assessment** view, add **Days Remaining** from the **Knowledge Assessments Table columns** as the last column in the view. 

2.  Then click the **dropdown** button next to the Save button and select **Save As**.

3.  Enter **Created This Month** for Name and click **Save**.

4.  Locate the **Filter By** section of the **View** property. You should have
    **Status is ‘Active’**. All records have a status column; if you don’t
    filter to only show active, you may have records showing in your list that
    are not editable or meant to be inactive. Inactive is used in Microsoft
    Dataverse to mark records as soft deleted as an alternate to physically
    deleting the records.

5.  You will add the Created On column back to the view. Select **Created On** from the **Table columns**.

6.  In the **Properties** pane, select **Edit filters.**

7.  In the pop-up, click **+ Add** and select **+ Add row.**

8.  In the first dropdown of the newly added row, select **Created on**. In the second dropdown, select
    **This Month**. Make sure the checkbox for both **Status** and **Created on** are checked.

9.  Click **OK**.

10. Click **Save**.

11. Click **Publish**.

12. Click the **back** button.

13. From the navigation breadcrumbs, click on the solution name **Common Data
    Services Default Solution**.

14. Click **Publish All Customizations**.

### Task 6 – Test your Views

1.  While still on <https://make.powerapps.com>, select
    **Apps**.

2.  Click on the **Knowledge Admin** model-driven application and select
    **Play.** Switch from **Administration** to **Assessments.**

3.  The **Active Knowledge Assessments** view will be loaded. Make sure the
    columns you selected are there in the order you selected. (You may need to
    use the view drop-down to re-select the view and cause it to refresh.)

4.  Click the **Select a view** dropdown next to the **Active Knowledge
    Assessments** view title and choose the **Created This Month** view.

5.  Make sure the columns are showing in the order you selected.
