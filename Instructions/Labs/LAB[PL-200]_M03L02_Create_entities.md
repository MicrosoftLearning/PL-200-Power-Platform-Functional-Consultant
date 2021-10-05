---
lab:
    title: 'Lab 3.2: Creating entities and fields'
    module: 'Module 3: Work with Dataverse'
---

Module 3: Work with Dataverse
====================

## Lab 3.2: Practice Lab – Creating entities and fields

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. Fabrikam would like to encourage
their employees to continuously learn.  They want to build an application that
allow a small set of employees to create knowledge assessments and then make
them available to all employees to test their knowledge.  The employees need to
be able to pick an assessment and quickly complete it in just a few minutes. In
this practice, you will be creating a data model to support the applications.

Working with the client, you have determined the following basic needs for
storing data:

-   A Knowledge Assessment entity will represent the actual assessment and
    contain one or more questions in an entity Knowledge Question

-   A Knowledge Test Result entity will track when employees take an assessment

-   The employee who took the assessment will be tracked using the existing
    Common Data Model (CDM) User entity

-   The CDM Feedback entity will be used to allow employees to express their
    opinions on the assessment

After consulting with your Solution Architect, you have come up with the
following data model. When you are done with this module, you will have created
the entities, fields and relationship to implement the following data model, **as shown in the Lab Resources as Image[MB-200]_M02L02_Creating_Entities_Fields.png**.

In this practice, you will be creating the entities and fields. Later, when we
discuss relationships you will come back and add the relationships between the
entities. Relationships in the above drawing are the lines connecting the
entities and labeled as 1:N and N:1. The entities that are white with black
writing are standard CDM entities that we will be re-using.

Exercise 1 – Create the Knowledge Assessment Entity
---------------------------------------------------

In this exercise, you will be creating the Knowledge Assessment entity and its
fields. Knowledge Assessment will be a new custom entity you create.

### Task 1 – Create an entity

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Click to open the **Common Data Services Default Solution**.

5.  Click **+New** and select **Table**.

6.  Enter **Knowledge Assessment** for **Display Name**. Enter **Title** for **Display Name** in the Primary Column section. 

8.  Click **Save**. It may take a few minutes for your table to be created.

9. With the **Columns** tab selected, click **+Add column**.

10. Enter **Start Date** for **Display Name** and select **Date Only** for
    **Data Type**.

11. Click **Advanced Options** and make sure **User Local** is selected for
    **Behavior**.

12. Click **Done**.

13. Click **+Add column** again.

14. Enter **End Date** for **Display Name** and select **Date Only** for **Data Type**.

15. Click **Advanced Options** and make sure **User Local** is selected for
    **Behavior**.

16. Click **Done.**

17. You will now add an **Choice** type field. Click **+Add column**.

18. Enter **Difficulty** for **Display Name** and select **Choice** for
    **Data Type**.

19. Click on the **Choice** dropdown and select **+New choice**.

20. Enter **Beginner** for **Item 1** and click **Add New Item**.

21. Enter **Intermediate** for **Item 2** and click **Add New Item**.

22. Enter **Advanced** for **Item 3** and click **Save**.

23. Select **Beginner** for the **Default Value** and click **Done**.

25. Click **Save Table** at the bottom of the screen.

### Task 2 – Create a calculated field

1.  Click **+Add column**.

2.  Enter **Days Remaining** for **Display Name** and select **Whole Number**
    for **Data Type**.

3.  Click **Advanced Options**.

4.  Enter **0** for **Minimum Value** and **1000** for **Maximum Value**.

5.  Click **+Add** next to **Calculated or Rollup**. Click **+Calculation.**

6.  Click **Save**. A pop-up window should appear allowing you to configure the calculation. (You may need to disable a pop-up blocker.)

9.  Click **Add Action**.

10. Enter the following formula:

        DIFFINDAYS(NOW(), crXXX_enddate)
 
    **Note:** That crXXX is environment-dependent and the name of your environment will be different. To find your environment-specific designation, type **cr** and wait
    for the field to auto filter to your environment.

11. Click the check mark. (Depending on your window size, you may need to click out of the text box to see the check mark.)

12. Click **Save and Close**.

13. Click **Done**.

Exercise 2 – Create the Knowledge Question Entity
-------------------------------------------------

In this exercise, you will be creating the Knowledge Question entity and its
fields.

### Task 1 – Create an entity

1.  Go back to <https://make.powerapps.com> and make sure you are in your
    **Practice** environment.

2.  Select **Solutions**.

3.  Open the **Common Data Services Default Solution**.

4.  Click **+New** and select **Table**.

5.  Enter **Knowledge Question** for Display Name.

6.  Navigate to the **Primary Name Column** section.

7.  Change the **Display Name** to **Question**. The **Name** field should also automatically update to **Question.** Click **Create**.

8.  Make sure the **Columns** tab is selected and click **+Add column**.

9.  Enter **Answer 1** for **Display Name**, select **Text** for **Data Type**
    and click **Done**.

10. Add **3** more with values below:

    - Name: **Answer 2**, Data Type: **Text**.

    - Name: **Answer 3**, Data Type: **Text**.

    - Name: **Answer 4**, Data Type: **Text**.

14. Click **+Add column**.

15. Enter **Answer 1 Points** for **Display Name**, select **Whole Number** for
    **Data Type** and click **Done**.

16. Add 3 more filed with values below. These will store the points awarded if
    someone picks this answer.

    - Name **Answer 2 Points** Data Type **Whole Number**.

    - Name **Answer 3 Points** Data Type **Whole Number**.

    - Name **Answer 4 Points** Data Type **Whole Number**.

    - Click **Save Table**.

**Note:** There are many ways you could model the answers depending on the complexity of your requirements. The approach shown here is simplified for practice purposes to focus on demonstrating how to work with the entity creation process.

Exercise 3 – Create the Knowledge Test Result Entity
----------------------------------------------------

In this exercise, you will be creating the Knowledge Test Result entity and its
fields.

### Task 1 – Create an entity

1.  On the navigation menu, click **Common Data Services Default Solution** to return to the solution.

2.  Click **+New** and select **Table**.

3.  Enter **Knowledge Test Result** for **Display Name** and click **Create**.

4.  Click **+Add column**.

5.  Enter **Total Points** for **Display Name** and select **Whole Number** for
    **Data Type**.

6.  Click **Done**.

7.  Click **Save Table**.

Exercise 4 – Add existing entities to the solution
--------------------------------------------------

In this exercise, you will be adding the existing entities Feedback and User.
This ensures when relationships are created later between theses entities they
will be tracked as part of the solution.

### Task 1 – Add existing entities

1.  From the navigation menu, click **Common Data Services Default Solution** to return to the solution.

2.  Click **Add Existing** and select **Table**.

3.  Select the **Feedback** and **User** entities and click **Next**.

4.  Leave the **Include All Components** and **Include Table Metadata**
    unchecked and click **+Add**.

5.  Your solution will now have **5 tables** and **1 Choice** in addition to your apps.

6.  Click **Publish All Customizations**.
