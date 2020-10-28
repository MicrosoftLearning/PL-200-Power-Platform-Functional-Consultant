---
lab:
    title: 'Lab 4.4: Advanced business rules'
    module: 'Module 4: Build Power Automate flows'
---

Module 4: Build Power Automate flows
========================

## Lab 4.4: Practice Lab – Advanced business rules

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a model-driven Knowledge Admin app for your client Fabrikam and need
to add scoring functionality without code. In this lab, you will create a
calculated field, a rollup field, and a business rule.

Exercise 1 – Prepare the Solution 
----------------------------------

### Task 1 – Add Field to Knowledge Question

1.  Navigate to https://make.powerapps.com.

2.  Select the **Practice** environment you created.

3.  Select **Solutions**.

4.  Click to open the **Common Data Services Default Solution**.

5.  Click to open the **Knowledge Question** entity.

6.  Select the **Fields** tab and click **+ Add Field**.

7.  Enter **Question Points** for **Display Name** and select **Whole Number**
    for **Data Type**.

8.  Click **+ Add Calculation or Rollup** and select **+ Calculation**.

9.  Click **Save**.

10. On the **Set Question Points** popup, click **+ Add Action**.

11. Type **answer1points** and select the suggested field.

12. Type **+** , type **answer2points** and select the suggested field.

13. Repeat it for **answer3points** and **answer4points**. You action will look
    like the snippet below but with your unique organizational prefix. 

        cre7f_answer1points + cre7f_answer2points + cre7f_answer3points + cre7f_answer4points

1.  Save the action by clicking on the checkmark button.

2.  Click **Save and Close**.

3.  Click **Done**.

### Task 2 – Add Field to Knowledge Question Form

1.  Make sure you still have the **Knowledge Question** entity selected.

2.  Select the **Forms** tab and click to open the **Main** form.

3.  Drag the **Question Points** field from the fields explorer and drop it
    below the **Knowledge Assessment** field on the form.

4.  Click **Save**.

5.  Click **Publish**.

7.  Click the back button.

8.  Click on the solution name located in the
    navigation breadcrumbs.
    
9. Click **Publish all customizations.**

### Task 3 – Add Field to Knowledge Assessment

1.  Click on the **…** button located in the command bar and click **Switch to Classic**.

2.  Expand **Entities**, expand the **Knowledge Assessment** entity, select
    **Fields**, and click **New**.

3.  Enter **Total Points** for **Display Name**, select **Whole Number** for
    **Data Type**, select **Rollup** for **Field Type**, and click **Edit**.

4.  Click **+ Add Related Entity**.

5.  Select **Knowledge Questions** for **Related** and click the checkmark.

6.  Click **+ Add Aggregation**.

7.  Select **SUM** for **Aggregation Function**, select **Question Points** for
    **Aggregated Related Entity Filed**, and click the checkmark.

8.  Click **Save and Close**.

9.  Click **Save and Close** again.

10. Click **Publish All Customizations**.

11. Close the solution explorer.

### Task 4 – Add Field to Knowledge Assessment Form

1.  Select the **Knowledge Assessment** entity.

2.  Select the **Forms** tab and click on the Main form.

3.  Drag the **Total Points** field from the fields explorer and drop it below
    the **Difficulty** field on the form.

4.  Click **Save**.

5.  Click **Publish**.

6.  Click the back button.

8.  Click on the solution name located in the
    navigation breadcrumbs.

9.  Click **Publish all customizations**.

Exercise 2 – Create Business Rule
---------------------------------

### Task 1 – Create Question Points Business Rule

1.  Click to open the **Knowledge Question** entity.

2.  Select the **Business Rules** tab and click **Add Business Rule**.

3.  Click on the carrot button next to **Knowledge Question:New business rule.**

4.  Enter **Question Points Rule** for **Business Rule Name** and click on the carrot again to hide details.

5.  Select the **Condition** and enter **Check Question Points** for **Display
    Name.**

6.  Go to the **Rules** section, select **Answer 1 Points** for **Field**,
    select **Is Less Than or Equals to** for **Operator**, select **Value** for
    **Type**, enter **0** for **Value**, and click **Apply**.

7.  Click **+ New** rule.

8.  Go to the **Rule 2**, select **Answer 2 Points** for **Filed**, select **Is
    Less Than or Equals to** for **Operator**, select **Value** for **Type**,
    enter **0** for **Value**, and click **Apply**.

9.  Click **+ New** rule.

10. Go to the **Rule 3**, select **Answer 3 Points** for **Filed**, select **Is
    Less Than or Equals to** for **Operator**, select **Value** for **Type**,
    enter **0** for **Value**. And click **Apply**.

11. Go to the **Rule 4**, select **Answer 4 Points** for **Filed**, select **Is
    Less Than or Equals to** for **Operator**, select **Value** for **Type**,
    enter **0** for **Value**, and click **Apply**.

12. Click **+ New** rule.

13. Select the **Components** tab.

14. Drag **Show Error Message** action and place it in **True** side of the
    Condition.

15. Select the action, enter **Show Points Error Message** for **Display Name**,
    select **Question** for **Field**, enter **At least one answer must have
    points more than zero**, and click **Apply**.

16. Click **Save**.

17. Click **Activate**.

18. Confirm the activation.

19. Close the business rule designer.

20. Click **Done**.

### Task 2 – Test Business Rule

1.  Navigate to https://make.powerapps.com/ and ensure that you are in your **Practice**
    environment.

2.  Select **Apps** and click on the **Knowledge Admin** Model-Driven
    application.

3.  Select **Assessments** and click to open the **Test Assessment 4**.

4.  Select the **Questions** tab.

5.  Click **+ New Knowledge Question**.

6.  The error message for the points requirement will be displayed on the
    Question field.

7.  Select **Simple** for **Question Type**.

8.  Type **Test Two Question** for **Question**.

9.  Click **Save**. You will not be able to save because of the points
    requirement.

10. Scroll down to the **Answers** section, enter **Test Answer One** for
    **Answer 1**, enter **20** for **Answer 1 Points.** The points requirement
    error will go away.

11. Click Save. The record will now be saved.

12. Scroll down to the **Answers** section again, enter **Test Answer Two** for
    **Answer 2**, and **0** for **Answer 2 Points**.

13. Enter **Test Answer Three** for **Answer 3**, and **10** for **Answer 3
    Points**.

14. Enter **Test Answer Four** for **Answer 4**, and **50** for **Answer 4
    Points**.

15. Click **Save.** Scroll up and locate the **Question Point** field. The calculated points
    should show in this field.

16. Click **+ New**.

17. Select **Test Assessment 4** for **Knowledge Assessment**, select **Simple**
    for **Question Type**, and enter **Test Three Question** for **Question**.

18. Scroll down to the Answers section.

19. Enter **Test Three Answer One** for **Answer 1**, and **25** for **Answer 1
    Points**.

20. Enter **Test Three Answer Two** for **Answer 2**, and **80** for **Answer 2
    Points**.

21. Enter **Test Three Answer Three** for **Answer 3**, and **10** for **Answer
    3 Points**.

22. Enter **Test Three Answer Four** for **Answer 4**, and **0** for **Answer 4
    Points**.

23. Click **Save and Close**.

24. Locate the **Knowledge Assessment** field and click **Test Assessment 4**.

25. Scroll down to locate the **Total Points** field and click on the calculator
    icon.

26. Click **Recalculate**.

27. The field should now show the total points of all the questions.
