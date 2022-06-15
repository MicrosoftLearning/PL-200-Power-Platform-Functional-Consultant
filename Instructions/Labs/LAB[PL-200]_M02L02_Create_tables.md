---
lab:
    title: 'Lab 2.2: Create tables and columns'
    module: 'Module 2: Work with Dataverse'
---

Module 2: Work with Dataverse
====================

## Lab 2.2: Practice Lab – Create tables and columns

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in
Microsoft Dataverse has been updated. For example, entity is now table and field
is now column.

While the application is in the process of updating its user experience, some
references to terminology like the Common Data Service (now **Dataverse**),
entity (now **table**), field (now **column**), and record (now **row**) may be
out of date. Please keep this in mind as you work through the labs. We expect to
have our content fully up to date very soon.

For more information and for a complete list of affected terms, please visit
[What is Microsoft
Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)


## Scenario

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. Fabrikam would like to encourage
their employees to continuously learn. They want to build an application that
allow a small set of employees to create knowledge assessments and then make
them available to all employees to test their knowledge. The employees need to
be able to pick an assessment and quickly complete it in just a few minutes. In
this practice, you will be creating a data model to support the applications.

Working with the client, you have determined the following basic needs for
storing data:

-   A Knowledge Assessment table will represent the actual assessment and
    contain one or more questions from a Knowledge Question table 

-   A Knowledge Test Result table will track when employees take an assessment

-   The employee who took the assessment will be tracked using the existing
    Common Data Model (CDM) User table

-   The existing Common Data Model (CDM) Feedback table will be used to allow employees to express their
    opinions on the assessment

After consulting with your Solution Architect, you have come up with the
following data model. When you are done with this module, you will have created
the tables, columns and relationships to implement the following data model, **as
shown in the Lab Resources as [Image[MB-200]_M02L02_Creating_Entities_Fields.png](https://github.com/MicrosoftLearning/PL-200-Power-Platform-Functional-Consultant/blob/master/Allfiles/Labs/LAB%5BPL-200%5D_Data_Model.png)

In this practice, you will be creating the tables and columns. Later, when we
discuss relationships you will come back and add the relationships between the
tables. Relationships in the above drawing are the lines connecting the tables
and labeled as 1:N and N:1. The tables that are white with black writing are
standard CDM tables that we will be re-using.

## Exercise 1 – Create the Knowledge Assessment Table

In this exercise, you will be creating the Knowledge Assessment table and its
columns. Knowledge Assessment will be a new custom table you create. You also
enable the feedback option for this table, this will cause the system to create
the relationship between Knowledge Assessment and the CDM Feedback table.

### Task 1 – Create a table

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Click to open the **Common Data Services Default Solution**.

5.  Click **+New** and select **Table**.

6.  Enter **Knowledge Assessment** for **Display Name** in the **Properties** section. Click on the **Primary Column** tab and enter **Title** for
    **Display Name**.

7.  Click to expand **Advanced options** under the **Properties** section and scroll to **Rows in this table** section.

8.  Check the **Can be linked to feedback** checkbox.

9.  Click **Save**. It may take a few minutes for your table to be created.

10. Once the table is created it will be listed in the **All** screen , Select the table **Knowledge Assessment** and click **+New column** from the top menu.

11. Enter **Start Date** for **Display Name** and select **Date Only** for
    **Data Type**.

12. Click **Advanced Options** and make sure **User Local** is selected for
    **Time zone adjustment**.

13. Click **Save**.

14. Click **+New column** again.

15. Enter **End Date** for **Display Name** and select **Date Only** for **Data
    Type**.

16. Click **Advanced Options** and make sure **User Local** is selected for
    **Time zone adjustment**.

17. Click **Save.**

18. You will now add an **Choice** type column. Click **+New column**.

19. Enter **Difficulty** for **Display Name** and select **Choice** for **Data
    Type**.

20. Select **+New choice** and enter Difficulty for Display Name.

21. Enter **Beginner** for **Item 1** and click **+New choice**.

22. Enter **Intermediate** for **Item 2** and click **+New choice**.

23. Enter **Advanced** for **Item 3** and click **Save**.

24. Select **Difficulty** from drop-down for Sync this choice with and then select **Beginner** for the **Default choice**.

25. Click **Save** at the bottom of the screen.

### Task 2 – Create a calculated column

1.  Click **+New column**.

2.  Enter **Days Remaining** for **Display Name** and select **Whole Number**
    for **Data Type**.

3.  Click **Advanced Options**.

4.  Enter **0** for **Minimum Value** and **1000** for **Maximum Value**.

5.  Select **Calculated** from Behavior drop-down.

6.  Click **Save**. A pop-up window should appear allowing you to configure the
    calculation. (You may need to disable a pop-up blocker.)

7.  A new browser opens click **+ Add Action**.

8.  Enter the following formula:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DIFFINDAYS(NOW(), crXXX_enddate)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

>   **Note:** That crXXX is environment-dependent and the name of your
>   environment will be different. To find your environment-specific
>   designation, type **cr** and wait for the field to auto-fill your
>   environment name.

9.  Click the check mark. (Depending on your window size, you may need to click
    out of the text box to see the check mark.)

10.  Click **Save and Close**.

## Exercise 2 – Create the Knowledge Question Table

In this exercise, you will be creating the Knowledge Question table and its
columns.

### Task 1 – Create a table

1.  Navigate to <https://make.powerapps.com> and make
    sure you are in your **Practice** environment.

2.  Select **Solutions**.

3.  Open the **Common Data Services Default Solution**.

4.  Click **+ New** and select **Table**.

5.  Enter **Knowledge Question** for Display Name.

6.  Go to the **Primary Column** section.

7.  Change the **Display Name** to **Question**. Click **Save**.

8.  Click the newly added table **Knowledge Question** from the tables list. Click **+ New column** from the top menu.

9.  Enter **Answer 1** for **Display Name**, select **Text** for **Data Type**
    and click **Save**.

10. Repeat the step 9 and create **3** more columns with the below values:

    -   Name: **Answer 2**, Data Type: **Text**.

    -   Name: **Answer 3**, Data Type: **Text**.

    -   Name: **Answer 4**, Data Type: **Text**.

11. Click **+New column**.

12. Enter **Answer 1 Points** for **Display Name**, select **Whole Number** for
    **Data Type** and click **Save**.

13. Repeat the step 12 and add 3 more filed with values below. These will store the points awarded if
    someone picks this answer.

    -   Name **Answer 2 Points** Data Type **Whole Number**.

    -   Name **Answer 3 Points** Data Type **Whole Number**.

    -   Name **Answer 4 Points** Data Type **Whole Number**.

**Note:** There are many ways you could model the answers depending on the
complexity of your requirements. The approach shown here is simplified for
practice purposes to focus on demonstrating how to work with the table creation
process.

## Exercise 3 – Create the Knowledge Test Result Table

In this exercise, you will be creating the Knowledge Test Result table and its
columns.

### Task 1 – Create a table

1.  On the navigation menu, click **Common Data Services Default Solution** to
    return to the solution.

2.  Click **+New** and select **Table**.

3.  Enter **Knowledge Test Result** for **Display Name** and click **Save**.

4.  Select the newly added table **Knowledge Test Result** from the table list and click **+New column**.

5.  Enter **Total Points** for **Display Name** and select **Whole Number** for
    **Data Type**.

6.  Click **Save**.

## Exercise 4 – Add existing tables to the solution

In this exercise, you will be adding the existing tables Feedback and User. This
ensures when relationships are created later between these tables, they will be
tracked as part of the solution.

### Task 1 – Add existing tables

1.  From the navigation menu, click **Common Data Services Default Solution** to
    return to the solution.

2.  Click **Add Existing** and select **Table**.

3.  Select the **Feedback** and **User** tables and click **Next**.

4.  Leave the **Include All Objects** and **Include Table Metadata**
    unchecked and click **Add**.

5.  Your solution will now have **5 tables** and **1 Choice** in addition to
    your apps.

6.  Click **Publish All Customizations**.
