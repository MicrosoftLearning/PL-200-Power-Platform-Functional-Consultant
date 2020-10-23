---
lab:
    title: 'Lab: Modify forms'
    module: 'Module 3: Build Power Apps'
---

Module 3: Build Power Apps
============================================

## Lab 2: Practice Lab – Modifying forms

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. In this practice you will be
continuing your work on the model-driven Knowledge Admin app. In this practice,
you will be modifying the auto generated forms to add the new fields you added
in the data-modeling practice.

Exercise 1 – Edit the Knowledge Assessment Form 
------------------------------------------------

In this exercise, you will edit the form for the Knowledge Assessment entity.
There are two places you can edit this from, either from the Solutions > Entity > Forms list, or via the App Designer. If you are already in App
Designer start, there.

### Task 1 – Enable Notes on the Knowledge Assessment entity

Initially when the entity was created notes were not enabled. Since then the
client Fabrikam has determined that they like to be able to track notes against
the knowledge assessments. We are going to make this change before getting into
the form editor, because this is the easiest way to perform these configuration steps. The same is true, for
example, if you need to add any fields: you should always try to add the fields
before jumping into the editor.

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Open the **Common Data Service Default Solution**.

5.  Click on the **Knowledge Assessment** entity.

6.  Click **Settings** in the command bar.

7.  Check the **Enable Attachments** checkbox. This enables notes and files for
    the entity.

8.  Click **Done**. Confirm the changes by clicking **Okay.**

9.  Click **Save Entity**.

### Task 2 – Edit the Knowledge Assessment form

In this task, you will perform the following changes to the form: 

- Put fields in the header 
- Insert the Timeline control
- Add a tab that contains a list of related assessment questions

To customize your form:

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Open the **Common Data Service Default Solution**.

5.  Select the **Knowledge Assessment** model-driven app.

6.  Click **Edit**.

7.  Locate the **Knowledge Assessment** entity and select **Forms**.

8.  Go to the **Components** tab, hover over the **Main Information** form, and
    click **Edit**.

9.  Double click on the **Header** section of the form.

10. In the **Field Explorer**, uncheck the **Only Show Unused Fields** checkbox.

11. Drag the **Owner** field for the **Field Explorer** and place it in the
    right column of the **Header**.

12. Select the **General** tab by double clicking on it. Enter **General** in the **Name** field in the Properties pane.

13. Expand the **Formatting** section.

14. Select **Two Columns** for **Layout.**. Click **Save**.

15. Select **Switch to classic.**

16. Select the **Days Remaining** field and drag it to the left column of the **Header.** 

17. Select the new section of the **General** tab.

18. Select the **Insert** tab and then select **Control.**

19. Click **Timeline**. Timeline is located below the IFRAME.

20. Select the **Owner** field located in the General section.

21. Select the **Home** tab.

22. Click **Edit** and **Remove**. We are removing this field because we added a duplicate
    field to the header.

23. Add the **Start Date** field to the **General** section and place it below
    the **Title** field. You can add fields to the form by selecting the section
    you want to add the field to and double clicking on the field you want to
    add, or you can drag the field from the field explorer and drop it in the
    section you want to add the field to.

24. Add the **End Date** to the **General** section and place it below the
    **Start Date** field.

25. Add the **Difficulty** field to the **General** section and place it below
    the **End Date** field.

26. Select the **Insert** tab.

27. Click **1 Tab** and then click **1 column.** A new tab will be added to the form.

28. Double click on the new tab.

29. Change the **Label** to **Questions** and click **OK.**

30. Select the **Questions** tab.

31. Select the **Insert** tab and then select **Control.**

32. Click **Sub-Grid**.

33. Enter **KnowledgeQuestions** for **Name** and **Knowledge Questions** for label.

34. Select **Only Related Records** for **Records**.

35. Select **Knowledge Questions (Knowledge Assessment)** for **Entity**.

36. Click **OK**.

37. Select the **Home** tab and click **Save**.

38. Click **Publish** and wait for the publish to complete.

39. Close the form by clicking **Save and Close**.

40. **DON’T** close the app designer.

Exercise 2 – Edit the Knowledge Question Form 
----------------------------------------------

In this exercise, you will edit the form for the Knowledge Question entity.

### Task 1 – Edit the main form

1.  Make sure you are in the app designer.

2.  Click **+ Add** and select **Entities**.

3.  Locate the **Knowledge Question** entity and select it.

4.  After the **Knowledge Question** entity is added to the application, select
    **Forms**.

5.  Hover over the **Main Form** and click **Edit**.

6.  Select the **Header** by double clicking on it.

7.  Add the **Knowledge Assessment** field to **Header** and place it on the
    left column.

8.  Select the **General** tab by double clicking. In the right **Properties** tab, enter **General** for Name.

9.  Select **+Component** from the command bar.

10. Click **1-Column section.**

11. Double click on the new section.

12. Enter **Answers** for Label. Select the **Fields** tab on the left menu (it will look like a box with ABC in it).

14. Add **Answer 1** field to the **Answers** section.

15. Add **Answer 1 Points** after the **Answer 1**.

16. Repeat the two steps above for each Answer and Points.

18. Click **Save**.

19. Click **Publish** and wait for the publish to complete.

20. Close the form editor.

21. Click **Save** to save the changes to the application.

22. Click **Validate** and make sure there are no errors. You can ignore the
    warnings.

23. Click **Publish** to publish your changes.

24. **DON’T** close the app designer.

### Task 2 – Test Your Work

1.  Click **Play**.

2.  Click on the **Administration** area located in bottom left of the page and
    select the **Assessments** area.

3.  Select the **Knowledge Assessment** entity and click **+ New**.

4.  The form should have two tabs: **General** and **Questions**.

5.  The General tab should have two sections: **General** and **Timeline**.

6.  Enter **Assessment Three** for **Title**.

7.  Select today’s date for **Start Date** and select ten days into the future
    for **End Date**.

8.  Select **Beginner** for **Difficulty**.

9.  Click **Save**.

10. Make sure the **Days Remaining** value was calculated correctly.

11. Select the **Questions** tab

12. Click **+New Knowledge Question**.

13. Close the application without creating **Knowledge Question** record.

14. You should return to the app designer. Click **Save and Close** to close it.
