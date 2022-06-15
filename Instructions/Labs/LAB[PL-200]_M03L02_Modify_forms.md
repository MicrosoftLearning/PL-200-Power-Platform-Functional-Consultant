---
lab:
    title: 'Lab 3.2: Modify forms'
    module: 'Module 3: Make model-driven apps with Power Apps'
---

Module 3: Make model-driven apps with Power Apps
============================================

## Lab 3.2: Practice Lab – Modify forms

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)


Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this practice you will be
continuing your work on the model-driven Knowledge Admin app. In this practice,
you will be modifying the auto generated forms to add the new columns you added
in the data-modeling practice.

## Exercise 1 – Edit the Knowledge Assessment Form

In this exercise, you will edit the form for the Knowledge Assessment table.

### Task 1 – Enable Notes on the Knowledge Assessment table

Initially when the table was created notes were not enabled. Since then, the
client Fabrikam has determined that they would like to be able to track notes against
the knowledge assessments. We are going to make this change before getting into
the form editor, because this is the easiest way to perform these configuration
steps. The same is true, for example, if you need to add any columns: you should
always try to add the columns before jumping into the editor.

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Open the **Common Data Service Default Solution**.

5.  Open the **Knowledge Assessment** table.

6.  Click **Properties**.

7.  Check the **Enable Attachments** checkbox. This enables notes and files for
    the table.

8.  Click **Save**.

9.  Click **Overview** for **Common Data Service Default Solution** and select **Publish all customizations**.

### Task 2 – Edit the Knowledge Assessment form

In this task, you will perform the following changes to the form:

-   Put columns in the header

-   Insert the Timeline control

-   Add a tab that contains a list of related assessment questions

To customize your form:

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Open the **Common Data Service Default Solution**.

5.  Select the **Knowledge Admin** model-driven app. Click **Switch to classic**.

6.  Locate the **Knowledge Assessment** table and select **Forms**.

7.  Go to the **Components** tab, hover over the **Information** form in the
    **Main Forms** section, and click **edit** (the pencil icon).

8.  Click on the **Header** section of the form. (This is the top section of the
    form that says **New Knowledge Assessment.**) 
    
    **Note:** If the screen size is too small to view the content, on the bottom of the page, Screen resizing option is available. 

9. Select the **Table columns** from the left control tab and uncheck the **Show only unused
    columns** checkbox.

10. Drag the **Owner** column from the list and place it in the **header** on the
    right side of the form. You should now have two **Owner** columns on the
    form: one in the **General** section, and one in the **header.**

11. Select the **General** tab by clicking on it. Enter **General** in the
    **Name** field in the Properties pane.

12. Expand the **Formatting** section.

13. Select **Two Columns** for **Layout.**. Click **Save**.

14. Select the **Days Remaining** column and drag it to the header next to
    **Owner.**

15. Select the new section of the **General** tab.

16. Select the **Component** tab.

17. Click **Timeline** from the **Related data** section in the Components pane
    and drag it to the New Section. 
    
18. After the timeline is filled into the New
    Section, select the **New Section** that the timeline was just added to.
    Change the **Label** to **Timeline** and change the **Name** to
    **Timeline.**

19. Select the **Owner** column from the **General** section.

20. Click the **trash** button from the top menu. We are removing this column
    because we added a duplicate column to the header.

21. Add the **Start Date** column to the **General** section and place it below
    the **Title** column. You can add columns to the form by dragging the column
    from the Table columns and dropping it in the section you want to add the
    column to.

22. Add the **End Date** to the **General** section and place it below the
    **Start Date** column.

23. Add the **Difficulty** column to the **General** section and place it below
    the **End Date** column.

24. Select the **Component** tab.

25. Click **1 column tab**. A new tab will be added to the form.

26. Click on the new tab.

27. Change the **Label** to **Questions**.

28. Select the **Questions** tab.

29. Click the **Components** tab.

30. Click **Subgrid** from the **Related data** section. Check the **Show
    related records** check box and select **Knowledge Questions** for Table.
    Then click **Done.**

31. In the right properties tab, enter **Knowledge Questions** for **Label** and **KnowledgeQuestions** for **Name**.
    .
32. Make sure that **Show related records** is checked.

33. Make sure **Knowledge Questions (Knowledge Assessment)** is selected for
    **Table.**

34. Select the **New Section** that the subgrid was added to. In the Properties
    tab, enter **Knowledge Questions** for **Label** and **KnowledgeQuestions** for
    **Name**. 
    
35. Click **Save**.

36. Click **Publish** and wait for the publishing to complete.

37. Close the form designer tab. You should return to the model-driven app
    designer.

38. **DON’T** close the model-driven app designer.

## Exercise 2 – Edit the Knowledge Question Form

In this exercise, you will edit the form for the Knowledge Question table.

### Task 1 – Edit the main form

1.  Make sure you are in the model-driven app designer page of **Knowledge Admin**.

2.  Click **+Add** and select **Entities**.

3.  Locate the **Knowledge Question** table and select it.

4.  After the **Knowledge Question** table is added to the application, select
    **Forms** for the **Knowledge Question** table.

5.  Hover over the **Information** form in the **Main Form** section and click
    **edit** (the pencil icon).

6.  Select the **Header** by double clicking on it.

7.  Add the **Knowledge Assessment** from the **Table column** to **Header** (the top part of the
    form) and place it on the right side of the header.

8.  Select the **General** tab by double clicking. In the right **Properties**
    tab, enter **General** for Name.

9.  Select **+ Component** from the command bar.

10. Click **1-Column section.**

11. Double click on the new section.

12. Enter **Answers** for Label. Select the **Table columns** tab on the left
    menu.

13. Add **Answer 1** column to the **Answers** section.

14. Add **Answer 1 Points** after the **Answer 1**.

15. Repeat the two steps above for each Answer and Points.

16. Click **Save**.

17. Click **Publish** and wait for the publish to complete.

18. Close the form editor. You should return to the model-driven app designer.

19. Click **Save** to save the changes to the application.

20. Click **Validate** and make sure there are no errors. You can ignore the
    warnings.

21. Click **Publish** to publish your changes.

22. **DON’T** close the model-driven app designer.

### Task 2 – Test Your Work

1.  Click **Play**.

2.  Switch from the **Administration** area to the **Assessments** area in the bottom left.
    Select the **Knowledge Assessment** table and click **+ New**.

3.  The form should have two tabs: **General** and **Questions**.

4.  The General tab should have two sections: one with General information (Title, Start Date, End Date, and Difficulty) and one with the **Timeline**.

5.  Enter **Test Assessment Three** for **Title**.

6.  Select today’s date for **Start Date** and select ten days into the future
    for **End Date**.

7.  Select **Beginner** for **Difficulty**.

8.  Click **Save**.

9.  Make sure the **Days Remaining** value was calculated correctly.

10. Select the **Questions** tab.

11. Click **+ New Knowledge Question**.

12. Close the application without creating **Knowledge Question** record.

13. You should return to the model-driven **Knowledge Admin** app designer. Click **Save and Close** to close it.
