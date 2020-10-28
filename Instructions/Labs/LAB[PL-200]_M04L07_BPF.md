---
lab:
    title: 'Lab 4.7: Build a business process flow'
    module: 'Module 4: Build a Power Automate flow'
---

Module 4: Build a Power Automate flow
================================

## Lab 4.7: Practice Lab – Build a business process flow

Scenario
--------

You have been building automations to support your client Fabrikam’s knowledge
assessment process. The client is concerned that their users won’t be able to
create new knowledge assessments without your help. You need to create a guided
process to interact with the user and support their configuration of new
assessments. In this lab, you will enable the knowledge assessment entity for
business process flows and then build a business process flow.

Exercise 1 – Prepare the Solution 
----------------------------------

### Task 1 – Add Field to Knowledge Assessment

1.  Navigate to https://make.powerapps.com.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Solutions**.

4.  Click to open the **Common Data Services Default Solution**.

5.  Click to open the **Knowledge Assessment** entity.

6.  Click select the **Fields** tab and **+ Add Field**.

7.  Enter **Passing Score (%)** for **Display Name**, select **Whole Number**
    for **Data Type** and click **Done**.

8.  Click **Save Entity**.

9.  Click **+ Add Field**.

10. Enter **Create Questions** for **Display Name** and select **Two Options**
    for **Data Type**.

11. Click on the **Yes** option under **Items** and replace **Yes** with
    **Completed**.

12. Click on the **No** option under **Items** and replace **No** with **Mark
    Complete**.

13. Click **Done**.

14. Click **Save Entity**.

### Task 2 – Add Field to Knowledge Assessment Form

1.  Make sure you still have the **Knowledge Assessment** entity selected.

2.  Select the **Forms** tab and click on the Main form.

3.  Add the **Passing Score (%)** field to the form.

4.  Click **Save**.

5.  Click **Publish**.

6.  Click the back button.

8.  Click on the solution name **Common Data Services Default Solution** located in the
    navigation breadcrumbs.

9.  Click **Publish All Customizations**. 

Exercise 2 – Create Business Process Flow 
------------------------------------------

### Task 1 – Create Business Process Flow

1. Navigate to make.powerapps.com and make sure you are in your **Practice** environment.

2. Click **Flows.**

3. Switch to the **Business Process Flows** tab.

4. Click **+New.**

5. Enter **Assessment Process** for Flow Name and choose **Knowledge Assessment** for entity. 

6.  Click **Create.**

9.  Select the stage, select the **Properties** tab, enter **Knowledge Assessment** for
    **Display Name** and click **Apply**. 

10. Click the **Details** of the **Knowledge Assessment** stage.

11. Select the **Data Step #1**.

12. Select **Passing Score (%)** for **Data Field** and click **Apply**.

13. Click **+ Add** and select **Add Data Step**.

14. Click on the **+** below the **Passing Score (%)** step.

15. Select the **New Step**, select **Total Points** for **Data Field**, and
    click **Apply**.

16. Select the **Components** tab, drag **Data Step** from the **Components**
    tab, and drop it below the **Total Points** step.

17. Select **Notify Manager** for **Data Field** and click **Apply**.

18. Drag **Data Step** from the **Components** tab and place it below the
    **Notify Manager** step.

19. Select **Create Questions** for **Data Field**, check the **Required**
    checkbox, and click **Apply**.

21. Add the new stage to the right of the **Knowledge Assessment** stage by dragging from the components tab.

22. Select the new stage, go to the **Properties** tab, enter **Activate** for
    **Display Name**, and click **Apply**.

23. Click **Details** of the **Activate** stage.

24. Select the **Data Step** inside the **Activate** stage.

25. Select **Status** for **Data Field** and click **Apply**.

26. Select the Components tab, drag Data Step, and place it below the Status step.

27. Select **Approval Status** for **Data Field** and click **Apply**.

28. Click **Save** to save the **Business Process Flow**.

29. Click **Activate**.

30. Confirm activation.

31. Close the process editor.

### Task 2 – Test Business Process Flow

1.  Navigate to https://make.powerapps.com.

2.  Make sure you are in your **Practice** environment.

3.  Select **Apps** and click to open the **Knowledge Admin** application.

4.  Select **Assessment** and click to open the **Test Assessment Four**.

5.  Existing records will not pick up the Business Process Flow you created.
    Click **Process** and select **Switch Process**.

6.  Select the **Assessment Process** you created and click **OK**.

7.  The **Assessment Process** should now be visible on the record.

8.  Click **+ New**.

9.  New records should show the new Business Process Flow immediately.

10. Enter **BPF Test Assessment** for **Title** and click **Save**.

11. Select the **Questions** tab and click **+ New Knowledge Question**.

12. Select **Simple** for **Question Type**.

13. Enter **Process Test Question One** for **Question**.

14. Enter **Answer One** for **Answer 1**, **50** for **Answer 1 Points**.

15. Enter **Answer Two** for **Answer 2**, **80** for **Answer 2 Points**.

16. Enter **Answer Three** for **Answer 3**, **0** for **Answer 3 Points**.

17. Enter **Answer Four** for **Answer 4**, **0** for **Answer 4 Points**.

18. Click **Save**.

19. Click on the browser back button.

20. Click on the **Knowledge Assessment** stage of then Business Process Flow. The steps
    for this stage will come to view.

21. Enter **80** for **Passing Score**.

22. Click on the **Total Points** calculator icon.

23. Click **Recalculate**.

24. The **Total Points** should get recalculated.

25. Select **Yes** for **Notify Manager**.

26. Select **Completed** for **Create Questions**. Then click **Next stage.**

27. The process should move to the **Activate** stage.

29. Start a new browser window and navigate to https://flow.microsoft.com.

30. Expand **Action Items** and select **Approvals**.

31. You should have one approval waiting for you. Click on the approval.

32. The Approval pane will open. Click **Approve**.

33. Provide **Comments** and click **Confirm**.

34. Go back to **Knowledge Admin** application and click on the **Refresh**
    button.

35. Click on the **Activate** stage of the Business Process Flow.

36. The Approval Flow should complete the approval and set the **Approval
    Status** to **Approved**.
