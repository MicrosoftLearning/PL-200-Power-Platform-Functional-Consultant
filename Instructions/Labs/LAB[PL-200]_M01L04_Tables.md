---
lab:
    title: 'Lab 1.4: Tables'
    module: 'Module 1: Work with Microsoft Dataverse'
---

# Practice Lab 1.4 – Tables

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

You need to familiarize yourself with the data model and then make changes to tables and their properties for this phase of the project.

The data model is available in your F:\Allfiles\Labs folder.

![Fabrikam Environment Data Model.](../media/Fabrikam_Environmental_ERD.png)

In this practice lab, you will be modifying table properties and creating a new custom table.

## Exercise 1 – Explore the data model

In this exercise, you will be examining the tables in the Fabrikam Environmental solution. Take some time to familiarize yourself with your client, Fabrikam's, data model and existing business rules. 

### Task 1.1 – Examine tables

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in your **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click to expand **Tables**.

1. Click and expand the **Project** table.

    ![Project table.](../media/project_table.png)

1. Under **Schema**, click on **Columns**. You will see columns including Project Title, Project Type, Estimated End, and Program.

1. In the **Objects** pane on the left, click on **Relationships**. You will see multiple One-to-many, Many-to-one, and a many-to-many relationships.

1. Click and expand the **Milestone** table and examine its columns and relationships.

1. Click and expand the **Project Funding** table and examine its columns and relationships.

1. Click on **Business rules** under the **Project Funding** table. There is a rule for the funding percentage. Open the business rule and examine how it works. 

1. Close the busisiness rule

1. Click and expand the **Project Resource** table and examine its columns and relationships.

## Exercise 2 – Change table properties

In this exercise, you will be updating the properties on the Project table to allow users to add attachments and use activities with project records. You will also enable audit and other search on other tables in the solution.

### Task 2.1 – Enable attachments and activities on the project table

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, click and expand **Tables**.

1. Select the **Project** table.

1. Click on **Properties**.

    ![Project table properties.](../media/table-properties.png)

> Note: If Properties is not shown, maximize your browser and/or zoom in until Properties appears.

1. In the Edit table pane that appears on the right-hand side of the screen, check the **Enable attachments (including notes and files)** box.

    ![Enable attachments.](../media/enable-attachments.png)

1. Expand **Advanced options** and scroll down.

1. Check the **Creating a new activity** box.

    ![Advanced table properties.](../media/advanced-table-properties.png)

1. Click **Save**.

### Task 2.2 – Enable audit and search on the Milestone table

1. Select the **Milestone** table.

1. Click on **Properties**.

1. In the Edit table pane that appears on the right-hand side of the screen, expand **Advanced options** and scroll down.

1. Check the **Audit changes to its data** box.

1. Check the **Appear in search results** box.

1. Click **Save**.

### Task 2.3 – Enable audit on the Outcome table

1. Select the **Outcome** table.

1. Click on **Properties**.

1. In the Edit table pane that appears on the right-hand side of the screen, expand **Advanced options** and scroll down.

1. Check the **Audit changes to its data** box.

1. Click **Save**.

### Task 2.4 – Enable audit on the Project Funding table

1. Select the **Project Funding** table.

1. Click on **Properties**.

1. In the Edit table pane that appears on the right-hand side of the screen, expand **Advanced options** and scroll down.

1. Check the **Audit changes to its data** box.

1. Click **Save**.

## Exercise 3 – Create a custom table

In this exercise, you will be creating a new custom table named Project Outcome. This table will link outcomes to projects. Currently there is a many-to-many relationship between Project and Outcome. This table will be used in place of this relationship.

In later labs you will be adding columns and relationships to this custom table.

### Task 3.1 – Create custom table

1. In the **Objects** pane on the left, click on **Tables**.

1. Click **+ New** and select **Table**.

1. Enter **Project Outcome** for **Display Name**. The plural name will be automatically populated.

1. Enter **Environmental outcomes for a project** for **Description**.

1. Expand **Advanced options**.

1. Uncheck the **Apply duplicate detection rules** box.

1. Uncheck the **Doing a mail merge** box.

1. Check the **Audit changes to its data** box.

1. Scroll up, and select the **Primary column** tab.

1. Enter **Title** for **Display Name**.

1. Expand **Advanced options**.

1. Change the **Column requirement** drop-down to **Optional**.

1. Change the **Maximum character count** to **200**.

1. Click **Save**.

### Task 3.2 – Publish changes

1. In the solution select the **Overview** page.

    ![Overview.](../media/solution-overview.png)

1. Click on **Publish all customizations**.
