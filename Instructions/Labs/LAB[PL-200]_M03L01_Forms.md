---
lab:
    title: 'Lab 3.1: Forms'
    module: 'Module 3: Create model-driven apps in Power Apps'
---

## Practice Lab 3.1 – Forms

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

In this practice lab, you will be modifying the forms for the Fabrikam Environment model-driven apps.

There are three model-driven apps in the solution:

- Environmental Administration
- Environmental Management
- Environmental Project Delivery

You will be:

- modifying columns on the project form
- adding the timeline control to the project form
- replacing the project outcomes sub-grid
- adding the columns you created in the earlier lab to the forms
- editing the project quick view form
- adding a filter to the contact lookup on Program
- adding a quick create form
- copying a form
- adding the table you created in the earlier lab to an app

## Exercise 1 – Edit Project forms

In this exercise, you will make changes to the forms for the Project table.

### Task 1.1 – Modify the Project main form

In this task, you will perform the following changes to the form:

- change the label for project description
- increase the size of project description field
- add columns to the form

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in your **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Project** table.

1. Under **Data experiences**, click **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit** > **Edit in new tab**.

1. Select the **Project Description** field.

1. In the properties pane on the right-hand side, change **Label** to **Description**.

1. In the properties pane on the right-hand side, increase **Form field height** to **4 rows**.

1. Select **Table columns** on the left-hand side of the form designer.

1. Drag the **Project Code** column into the **Header**.

1. Drag the **Project Lead** column below **Region**.

1. Drag the **Length of Project** column below **Estimated End**.

1. Select the **Funding** tab.

1. Drag the **Total Project Funding** column above the **Project Funding** sub-grid.

1. Click **Save**. Do not navigate away from this page.

### Task 1.2 – Add Timeline control to main form

In this task, you will perform the following changes to the form:

- change tab properties
- insert the Timeline control
- restrict the activities available on the Timeline

1. Select **Tree view** on the left-hand side of the form designer.

1. Select the **General** tab.

1. In the properties pane on the right-hand side, select **3 columns** in the **Layout** drop down.

1. Select the **Program** section and drag to the new right-hand column of the General tab.

1. Select the **New section** in the right-hand pane and click the **Delete** icon.

1. Select **Components** on the left-hand side of the form designer.

1. Expand **Display**.

1. Drag the **Timeline** control to the middle column of the General tab.

1. Select **Tree view** on the left-hand side of the form designer, expand **General** tab, and select the **New Section**.

1. In the properties pane on the right-hand side, enter **Timeline** for **Label** and **Name**.

1. Check the **Hide label** box.

1. In Tree View, select the **Note Text** control for the Timeline.

1. In the properties pane on the right-hand side, click on **Fax**, uncheck the **Enable** box, and click **Done**.

1. In the properties pane on the right-hand side, click on **Letter**, uncheck the **Enable** box, and click **Done**.

1. In the properties pane on the right-hand side, click on **Social Activity**, uncheck the **Enable** box, and click **Done**.

1. In the properties pane on the right-hand side, select **Date Created** in **Sort activities by** drop-down.

1. Click **Save**. Do not navigate away from this page.

### Task 1.3 – Sub-grids on main form

In this task, you will perform the following changes to the form:

- replace the sub-grid for the many-to-many relationship between Project and Outcome with a sub-grid for the Project Outcome table

1. Select the **Outcomes** tab.

1. Select the **Outcomes SubGrid**.

1. In the properties pane on the right-hand side, select **Project Outcomes (Project)** in the **Table** drop-down.

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

### Task 1.4 – Modify the Project quick view form

In this task, you will perform the following changes to the form:

- add a sub-grid of Outcomes to the quick view form

1. Select the **Quick View** form, click on the ellipses (...), and select **Edit in new tab**.

1. Select **Table columns** on the left-hand side of the form designer.

1. Drag the **Project Type** column below **Region**.

1. Click on the **Project Status** column to add to the form below **Project Type**.

1. Select the **Owner** field.

1. In the properties pane on the right-hand side, check the **Hide** box.

1. Select **Components** on the left-hand side of the form designer.

1. Click on the the **1-column section** control to add it to the form.

1. In the properties pane on the right-hand side, enter **Outcomes** for **Label** and **Name**.

1. Expand **Grid**.

1. Click **Subgrid** and check **Show related records**.

1. Select **Outcomes** for **Table**.

1. Select **Outcomes SubGrid** for **Default view**.

1. Click **Done**.

1. In the properties pane on the right-hand side, enter **Outcomes** for **Label** and **OutcomesSG** for **Name**.

1. Check **Hide Label**

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

## Exercise 2 – Edit Program form

In this exercise, you will add filtering on a lookup field on the Program table form.

### Task 2.1 – Add filtering to lookup

In this task, you will perform the following changes to the form:

- adding a filter to the contact lookup to only show contacts that belong to the selected account

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Program** table.

1. Under **Data experiences**, click on **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit in new tab**.

1. Select the **Sponsor Main contact** field.

1. In the properties pane on the right-hand side, expand **Filtering**.

1. Check the **Filter by related rows** box.

1. Select **Sponsor (Programs)** for **Relationship to current table**.

1. Select **Company name (Contacts)** for **Relationship to this lookup's table.

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

## Exercise 3 – Edit Program Funding form

In this exercise, you will add new columns to the Project Funding table form.

### Task 3.1 – Add columns to form

In this task, you will perform the following changes to the form:

- add columns to the form

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Project Funding** table.

1. Under **Data experiences**, click on **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit in new tab**.

1. Select **Table columns** on the left-hand side of the form designer.

1. Drag the **Currency** column below **Funding Percentage**.

1. Click on the **Funding amount** column to add to the form below **Currency**.

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

## Exercise 4 – Edit Region form

In this exercise, you will add the hierarchical relationship to the Region table form.

### Task 4.1 – Add parent lookup and child sub-grid to the form

In this task, you will perform the following changes to the form:

- add parent region lookup
- add a sub-grid for child regions

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Region** table.

1. Under **Data experiences**, click on **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit in new tab**.

1. Select **Table columns** on the left-hand side of the form designer.

1. Drag the **Parent Region** column below **Region Name**.

1. Select **Components** on the left-hand side of the form designer.

1. Click on the the **1-column section** control to add it to the form.

1. In the properties pane on the right-hand side, enter **Sub Regions** for **Label** and **ChildRegions** for **Name**.

1. Expand **Grid**.

1. Click **Subgrid** and check **Show related records**.

1. Select **Regions (Parent Region)** for **Table**.

1. Click **Done**.

1. In the properties pane on the right-hand side, enter **Sub Regions** for **Label** and **ChildRegionsSG** for **Name**.

1. Check the **Hide label** box.

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

## Exercise 5 – Project Resource Quick Create form

In this exercise, you will create a Quick Create form for the Project Resource table form.

### Task 5.1 – Enable Quick Create form

In this task, you will enable the table for quick create.

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Project Resource** table.

1. Under **Table Properties**, select on **Properties**.

1. In the Edit table pane that appears on the right-hand side of the screen, expand **Advanced options** and scroll down.

1. Check the **Leverage quick-create form if available** box.

1. Click **Save**.

### Task 5.2 – Create Quick Create form

In this task, you will perform create a quick create form.

1. Under **Data experiences**, click on **Forms**.

1. Click **+ New form** and select **+ Quick Create Form**.

1. Drag the **Project** column to add to the form in the first section.

1. Drag the **Resource** column to add to the form in the first section.

1. Drag the **Project Role** column to add to the form in the second section.

1. Drag the **Start** column to add to the form in the third section.

1. Drag the **End** column to add to the form in the third section.

1. Select the first section, and in the properties pane click **Hide label**.

1. Select the second section, and in the properties pane click **Hide label**.

1. Select the third section, and in the properties pane click **Hide label**.

1. Click **Save**.

1. Click **<- Back**.

## Exercise 6 – Edit Milestone form

In this exercise, you will add the status choice column to to the Milestone table form.

### Task 6.1 – Add columns to the form

In this task, you will perform the following changes to the form:

- add Milestone status to the form
- remove Status reason from the form

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Milestone** table.

1. Under **Data experiences**, click on **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit in new tab**.

1. Drag the **Milestone status** column below the **Status reason** field.

1. Select the **Status reason** field and click on **Delete**.

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

## Exercise 7 – Edit Outcome form

In this exercise, you will add the status choice column to to the Outcome table form.

### Task 7.1 – Add columns to the form

In this task, you will perform the following changes to the form:

- add Outcome status to the form
- remove Status reason from the form
- delete the Project tab

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Outcome** table.

1. Under **Data experiences**, click on **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit in new tab**.

1. Drag the **Outcome status** column below the **Status reason** field.

1. Select the **Status reason** field and click on **Delete**.

1. Select the **Projects** tab and click on **Delete**.

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

## Exercise 8 – Edit Project Outcome form

In this exercise, you will configure the default form for the Project  Outcome table form.

### Task 8.1 – Configure main form

In this task, you will perform the following changes to the Project Outcome form:

- change for layout
- add columns to the form
- hide the name on the form
- Add a quick view form

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Project Outcome** table.

1. Under **Data experiences**, click on **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit in new tab**.

1. Drag the **Owner** field from the body into the **Header**.

1. Select **Tree view** on the left-hand side of the form designer.

1. Select the **General** tab.

1. In the properties pane on the right-hand side, enter **General** for **Name**

1. Select **2 columns** in the **Layout** drop down.

1. Select the **New Section** section.

1. In the properties pane on the right-hand side, enter **Related** for **Label** and **Name**.

1. Click **Hide label**.

1. Select **Table columns** on the left-hand side of the form designer.

1. Drag the **Project** column below the **Title** field.

1. Click on the **Outcome** column to add to the form below **Project**.

1. Click on the **Comments** column to add to the form below **Outcome**.

1. Click on the **Outcome completed date** column to add to the form below **Comments**.

1. Click on the **Stakeholders notified** column to add to the form below **Outcome completed date**.

1. Select the **Title** field.

1. In the properties pane on the right-hand side, check **Hide**.

1. Select **Components** on the left-hand side of the form designer, and expand **Display**.

1. Drag the **Quick view** control to the Related section.

1. Select **Project** for **Lookup**.

1. Select **Information** for **Project**.

1. Click **Done**.

1. Click **Save**.

1. Close the form designer.

1. Click **Done**.

## Exercise 9 – Copy Outcome form

In this exercise, you will be copying a form and setting security on the forms.

### Task 9.1 – Copy Outcome form

In this task, you will perform the following changes to the form:

- Rename the main form
- Copy the main form to allow managers to view and edit columns
- Associate security roles with the forms
- set the form order

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Outcome** table.

1. Under **Data experiences**, click on **Forms**.

1. Select the **Main** form, click on the ellipses (...), and select **Edit in new tab**.

1. In the properties pane on the right-hand side, enter **User** for **Display Name**

1. Click **Save**.

1. Click the caret next to the **Save** button and select **Save as**.

1. Enter **Manager** for **Display Name** and **Form for managers** for **Description**.

1. Click **Save**.

1. Select **Tree view** on the left-hand side of the form designer.

1. Select the **General** tab.

1. In the properties pane on the right-hand side, enter **General** for **Name**

1. Select **2 columns** in the **Layout** drop down.

1. Select the **New Section** section.

1. In the properties pane on the right-hand side, enter **Details** for **Label** and **Name**.

1. Click **Hide label**.

1. Select **Table components** on the left-hand side of the form designer.

1. Drag the **Goal** column to the Details section.

1. Click on **Approver** to add to the Details section.

1. Click on **Approver Email** to add to the Details section.

1. Click on **Approved** to add to the Details section.

1. Click on **Target Aim** to add to the Details section.

1. Click on **Stakeholders identified** to add to the Details section.

1. Click on **Tasks created** to add to the Details section.

1. Click on **Tasks assigned** to add to the Details section.

1. Click on **Tasks completed** to add to the Details section.

1. Click on **Environmental impact assessment completed** to add to the Details section.

1. Click **Save**.

1. Click **Form Settings**.

1. Select the **Environmental manager** and **Environmental administrator** roles.

1. Select **Form Order**.

1. Drag **Manager** above **Information**.

1. Select **Fallback forms**.

1. Uncheck **Enable Manager form as a Fallback form**.

1. Click **Save and publish**.

1. Close the form designer.

1. Click **Done**.

1. Select the **User** form.

1. Click **Form Settings**.

1. Select the **Specific security roles** radio button.

1. Select the **Environmental user** role.

1. Click **Save and publish**.

### Task 9.2 – Publish changes

1. In the **Objects** pane on the left, select **All**.

1. Click on **Publish all customizations**.

## Exercise 10 – Modify model-driven apps

In this exercise, you will be adding the tables and forms to model-driven apps.

### Task 10.1 – Environmental Management app

In this task, you will perform the following changes to the app:

- Add Project Outcome table
- Use the Manager form

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Apps**.

1. Select the **Environmental Management** app, click on the ellipses (...), and select **Edit in new tab**.

1. Click **Add page**.

1. Select **Table based view and form**.

1. Click **Next**.

1. Search for and select **Project Outcome**.

1. Uncheck **Show in navigation**.

1. Click **Add**.

1. Click **Add page**.

1. Select **Table based view and form**.

1. Click **Next**.

1. Search for and select **Outcome**.

1. Uncheck **Show in navigation**.

1. Click **Add**.

1. Expand **Outcome** in the Pages pane on the left-hand side.

1. Select **Outcome form**.

1. In the Outcome form pane on the right-hand side, click **+ Add form**.

1. Select the **Manager** form.

1. Click **Save**.

1. Click **Publish**.

1. Click **Play**.

1. Close the app designer.

1. Click **Done**.

### Task 10.2 – Environmental Project Delivery app

In this task, you will perform the following changes to the app:

- Add Project Outcome table
- Use the User form

1. Select the **Environmental Project Delivery** app, click on the ellipses (...), and select **Edit in new tab**.

1. Click **Add page**.

1. Select **Table based view and form**.

1. Click **Next**.

1. Search for and select **Project Outcome**.

1. Uncheck **Show in navigation**.

1. Click **Add**.

1. Expand **Outcome** in the Pages pane on the left-hand side.

1. Select **Outcome form**.

1. In the Outcome form pane on the right-hand side, click **+ Add form**.

1. Select the **User** form.

1. Click **Save**.

1. Click **Publish**.

1. Click **Play**.

1. Close the app designer.

1. Click **Done**.
