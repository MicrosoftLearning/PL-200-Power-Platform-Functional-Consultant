---
lab:
    title: 'Lab 6.4: Advanced business rules'
    module: 'Module 6: Introduction to automation'
---

Module 6: Introduction to automation
========================

## Lab 6.4: Practice Lab – Advanced business rules

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a model-driven Knowledge Admin app for your client Fabrikam and need
to add scoring functionality without code. In this lab, you will create a
calculated column, a rollup column, and a business rule.

## Exercise 1 – Prepare the Solution

### Task 1 – Add Field to Knowledge Question

1.  Navigate to <https://make.powerapps.com>.

2.  Select the **Practice** environment you created.

3.  Select **Solutions**.

4.  Click to open the **Common Data Services Default Solution**.

5.  Click to open the **Knowledge Question** table.

6.  Select the **Columns** tab and click **+ Add Column**.

7.  Enter **Question Points** for **Display Name** and select **Whole Number**
    for **Data Type**.

8.  Click **+ Add** next to **Calculation or Rollup** and select **+
    Calculation**.

9.  Click **Save**.

10. If you receive the **Set Question Points** popup >> click **+ Add Action**, else on the **Currently editing the calculated coulmn** popup message >> click **Done**. Then click the newly added column **Question Points** from the column list and in the property pane click the **Open Calculation** >> click **" Add Action**.

11. Type **answer1points** and select the suggested column from the drop-down list.

12. Type **+** , type **answer2points** and select the suggested column from the drop-down list.

13. Repeat it for **answer3points** and **answer4points**. You action will look
    like the snippet below but with your unique organizational prefix.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cre7f_answer1points + cre7f_answer2points + cre7f_answer3points + cre7f_answer4points
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

14.  Save the action by clicking on the checkmark button.

15.  Click **Save and Close**.

16.  Click **Done**.

### Task 2 – Add column to Knowledge Question Form

1.  Make sure you still have the **Knowledge Question** table selected.

2.  Select the **Forms** tab and click to open the **Main** form.

3.  Drag the **Question Points** column from the **Table Column** and drop it below the **Knowledge
    Assessment** column on the form.

4.  Click **Save**.

5.  Click **Publish**.

6.  Click the back button.

7.  Click on the solution name located in the navigation breadcrumbs.

8.  Click **Publish all customizations.**

### Task 3 – Add Column to Knowledge Assessment

1.  Select **Solutions** >> click on the **Common Data Services Default Solution** >> Click to open the **Knowledge Assessment** table.

2.  Select the **Columns tab** and click **+ Add column**

3.  Enter **Total Points** for **Display Name** and select **Whole Number** for
    **Data Type**.

4.  Click **+ Add** next to **Calculation or Rollup** and select **+ Rollup**.

5.  Click **Save**.

6.  On the **Currently editing the calculated coulmn** popup message >> click **Done**. Then click the newly added column **Total Points** from the column list and in the property pane click the **Open Calculation** >> Click **+ Add Related Entity**.

7.  Select **Knowledge Questions(Knowledge Assessment)** for **Related** and click the checkmark.

8.  Click **+ Add Aggregation**.

9.  Select **SUM** for **Aggregation Function**, select **(Knowledge Questions)Question Points** for
    **Aggregated Related Entity Field**, and click the checkmark.

10. Click **Save and Close**.

11. Click **Done**.

12. Click on the solution name.

13. Click **Publish all customizations**.

### Task 4 – Add Column to Knowledge Assessment Form

1.  Click on the **Common Data Services Default Solution** and then Select the **Knowledge Assessment** table.

2.  Select the **Forms** tab and click on the Main form.

3.  Drag the **Total Points** column from the **Table Column** list and drop it below the **Difficulty** column
    on the form.

4.  Click **Save**.

5.  Click **Publish**.

6.  Click the back button.

7.  Click on the solution name located in the navigation breadcrumbs.

8.  Click **Publish all customizations**.

## Exercise 2 – Create Business Rule

### Task 1 – Create Question Points Business Rule

1.  Click on the **Common Data Services Default Solution** and then click to open the **Knowledge Question** table.

2.  Select the **Business Rules** tab and click **Add Business Rule**.

3.  Click on the carrot button next to **Knowledge Question: New business
    rule.**

4.  Enter **Question Points Rule** for **Business Rule Name** and click on the
    carrot again to hide details.

5.  Select the **Condition** and enter **Check Question Points** for **Display
    Name.**

6.  Go to the **Rules** section, select **Answer 1 Points** for **Field**,
    select **Is Less Than or Equals to** for **Operator**, select **Value** for
    **Type**, enter **0** for **Value**, and click **Apply**.

7.  Above the rule you just created, there is a **+ New** button to add a new
    rule. Click **+ New** to add a new rule in addition to the first rule.

8.  Go to the **Rule 2**, select **Answer 2 Points** for **Field**, select **Is
    Less Than or Equals to** for **Operator**, select **Value** for **Type**,
    enter **0** for **Value**, and click **Apply**.

9.  Click **+ New** rule.

10. Go to the **Rule 3**, select **Answer 3 Points** for **Field**, select **Is
    Less Than or Equals to** for **Operator**, select **Value** for **Type**,
    enter **0** for **Value**. And click **Apply**.

11. Click **+ New** rule.

12. Go to the **Rule 4**, select **Answer 4 Points** for **Field**, select **Is
    Less Than or Equals to** for **Operator**, select **Value** for **Type**,
    enter **0** for **Value**, and click **Apply**.

13. Select the **Components** tab.

14. Drag **Show Error Message** action and place it in **True** side of the
    Condition.

15. Select the action, enter **Show Points Error Message** for **Display Name**,
    select **Question** for **Field**, enter **At least one answer must have
    points more than zero** in the Message, and click **Apply**.

16. Click **Save the rule**.

17. Click **Activate the rule**.

18. Confirm the activation by clicking the **Activate** button on the message pane.

19. Close the business rule designer by clicking the **X** button.

20. Click **Done**.

### Task 2 – Test Business Rule

1.  Navigate to <https://make.powerapps.com> and
    ensure that you are in your **Practice** environment.

2.  Select **Apps** and click on the **Knowledge Admin** model-driven
    application.

3.  Navigate to **Knowledge Assessments** >>  click **Play** >> Change area to  **Assessment** from the bottom left of the page and click to open the **Test Assessment
    Four**.

4.  Select the **Questions** tab.

5.  Click **+ New Knowledge Question**.

6.  The error message for the points requirement will be displayed on the
    Question column.

7.  Type **Test Two Question** for **Question**.

8.  Select **Simple** for **Question Type**.

9.  Click **Save**. You will not be able to save because of the points
    requirement.

10. Scroll down to the **Answers** section, enter **Test Answer One** for
    **Answer 1**, enter **20** for **Answer 1 Points.** The points requirement
    error will go away.

11. Click **Save**. The row will now be saved.

12. Scroll down to the **Answers** section again, enter **Test Answer Two** for
    **Answer 2**, and **0** for **Answer 2 Points**.

13. Enter **Test Answer Three** for **Answer 3**, and **10** for **Answer 3
    Points**.

14. Enter **Test Answer Four** for **Answer 4**, and **50** for **Answer 4
    Points**.

15. Click **Save.** Scroll up and locate the **Question Point** column. The
    calculated points should show in this column.

16. Click **+ New**.

17. Select **Simple** for **Question Type**, and enter **Test Three Question**
    for **Question**.

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

24. Select **Knowledge Assessments** and click to open **Test Assessment 4**.

25. Scroll down to locate the **Total Points** column and click on the
    calculator icon.

26. Click **Recalculate**.

27. The column should now show the total points of all the questions.

28. You can close your model-driven app.
