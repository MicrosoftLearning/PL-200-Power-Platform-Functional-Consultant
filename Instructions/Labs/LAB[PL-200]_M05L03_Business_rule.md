---
lab:
    title: 'Lab 5.3: Configure a new business rule'
    module: 'Module 5: Build Power Automate flows'
---

Module 5: Build Power Automate flows
========================

## Lab 5.3: Practice Lab – Configure a new business rule

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a model-driven Knowledge Admin app for your client Fabrikam. In this
lab, you will create fields and use business rules to control visibility of the
fields without needing custom code.

Exercise 1 - Prepare the solution
----------------------------------

### Task 1 – Add Fields to Knowledge Question

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Click to open the **Common Data Services Default Solution.** 

5.  Click to open the **Knowledge Question** entity.

6.  Select the **Fields** tab and click **+ Add Field**.

7.  Enter **Question Type** for **Display Name** and select **Option Set** for
    **Data Type**.

8.  Click on the **Option Set** dropdown and click **+ New Option Set**.

9.  Enter **Simple** and click **Add New Item**.

10. Enter **Scenario** and click **Save**.

11. From the **Required** dropdown, select **Required.**

12. Click **Done.** Then click **Save entity.**

13. Click **+ Add Field**.

14. Enter **Scenario Description** for **Display Name**, select **Text Area**
    for **Data Type**, and click **Done**.

15. Click **Save Entity**.

### Task 2 – Add Fields to Knowledge Question Form

1.  Make sure you still have the **Knowledge Question** entity selected.

2.  Select the **Forms** tab and click to open the **Main** form.

4.  Drag the **Question Type** field from the fields explorer and drop it above the **Question** field on the form.
    
3.  Drag the **Scenario Description** field from the fields explorer and drop it
    below the **Question Type** field. 

6.  With **Scenario Description** selected, check **Hide.**

7.  Uncheck **Show only unused fileds** and drag the **Knowledge Assessment** field from the fields explorer and drop it
    below the **Owner** field on the form.

8.  Click **Save**.

9.  Click **Publish**.

11. Click **Back.**

12. Click on the solution name **Common Data Services Default Solution** located in the
    navigation breadcrumbs. Click **Publish all customizations.**

Exercise 2 – Create Business Rule
---------------------------------

### Task 1 – Create Question Type Business Rule

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions.**

4.  Click to open the **Common Data Services Default Solution.**

5.  Click to open the **Knowledge Question** entity.

6.  Select the **Business Rules** tab and click **Add Business Rule**.

7.  Next to **New business rule** at the top of the screen, select the dropdown carrot. 

8.  Enter **Question Type Rule** for **Business Rule Name**.

9.  Select the **Condition** and enter **Check Question Type** for **Display
    Name.**

10. Go to the **Rule** section, select **Question Type** for **Field**, select
    **Equals** for **Operator**, select **Value** for **Type**, and select
    **Scenario** for **Value**.

11. Click **Apply**.

12. Select the **Components** tab.

13. Drag **Set Visibility** action and place it on the **True** side (on the
    right side) of the condition.

14. Enter **Show Scenario Description** for **Display Name**, select **Scenario
    Description** for **Field**, select **Yes** for **Visible** and click
    **Apply**.

15. Select the **Components** tab.

16. Drag **Set Business Required** action and place it after the **Show Scenario
    Description** action.

17. Select the new action, enter **Make Scenario Required** for **Display
    Name**, select **Scenario Description** for **Field**, select **Business
    Required** for **Status** and click **Apply**.

18. Drag **Set Visibility** action and place it on the **False** side (below) of
    the condition.

19. Enter **Hide Scenario Description** for **Display Name**, select **Scenario
    Description** for **Field**, select **No** for **Visible** and click
    **Apply**.

20. Select the **Components** tab.

21. Drag **Set Business Required** action and place it after the **Hide Scenario
    Description** action.

22. Select the new action, enter **Remove Scenario Requirement** for **Display
    Name**, select **Scenario Description** for **Field**, select **Not Business
    Required** for **Status** and click **Apply**.

23. Select the **Components** tab.

24. Drag **Set Field Value** action and place it after the **Remove Scenario
    Requirement** action.

25. Select the new action, enter **Clear Field** for **Display Name**, select
    **Scenario Description** for **Field**, select **Clear** for **Type** and
    click **Apply**.

26. Change the **Scope** to **All Forms**. You can find the Scope in the command
    bar.

27. Click **Save**.

28. Click **Activate**.

29. Confirm activation.

30. Close the business rule designer.

31. Click **Done**.

### Task 2 – Test Business Rule

1.  Navigate to <https://make.powerapps.com/> and make sure you are in your **Practice** environment.

2.  Select **Apps** and click on the **Knowledge Admin** Model-Driven
    application.

3.  Select **Knowledge Assessments** and click **+ New**.

4.  Enter **Test Assessment Four** for **Title**, select today’s date for **Start
    Date**, a month from today for **End Date**, and click **Save**.

5.  Select the **Questions** tab.

6.  Click **+ New Knowledge Question**.

12. Type **Test Question** for **Question**.

7.  Select **Scenario** for **Question Type**. The **Scenario** field will come
    to view, and it will be required.

8.  Type **This is a test Scenario** in the **Scenario Description**.

9.  Change the **Question Type** to **Simple**. The Scenario field will
    disappear.

10. Change the **Question Type** back to **Scenario**. The **Scenario
    Description** will come to view again and the text you entered will no
    longer be there.

11. Type **This is a test Scenario** for **Scenario Description**.

13. Scroll down to the **Answers** section, enter **Test Answer One** for
    **Answer 1**, enter **20** for **Answer 1 Points.**

14. Click **Save**. You can close the model-driven app.
