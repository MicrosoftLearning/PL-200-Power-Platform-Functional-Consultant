---
lab:
    title: 'Lab 4.8: Build a branching business process flow'
    module: 'Module 4: Build a Power Automate flow'
---

Module 4: Build a Power Automate flow
================================

## Lab 4.8: Practice Lab – Build a branching business process flow

Scenario
--------

You have created several automations to support your client’s knowledge
assessments process and now it is time to bring the final pieces together. In
this lab, you will update the business process flow and add a business rule.

**Important Note:** This lab will provide you with an actual Office 365 tenant
and licenses for the Power Platform applications you will be using in this
course. You will only be provided with one tenant for the practice labs in this
course. The settings and actions you take within this tenant do not roll-back or
reset, whereas the virtual machine you are provided with does reset each time
you close the lab session. Please be aware that Office 365 is evolving all the time. The
instructions in this document may be different from what you experience in your
actual Office 365 tenant. It is also possible to experience a delay of several
minutes before the virtual machine has network connectivity to begin the labs.

Exercise 1 – Update Process 
----------------------------

### Task 1 – Update Business Process Flow

1.  Navigate to https://make.powerapps.com.

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Click to open the **Common Data Services Default Solution**.

5.  Click on the **…** button located on the command bar and select **Switch to Classic**.

6.  Select **Processes** and click **Add Existing.** Select **Assessment Process** and click OK.

6. Select OK again to add components.

6. Select the **Assessment Process** BPF.

7.  Select the **Components** tab, drag **Condition** and drop it in between the
    two existing stages.

8.  Select the **Condition**, select the **Properties** tab, and enter **Check
    Notification** for **Display Name**.

9.  Go to **Rule 1,** select **Notify Manager** for **Field**, select **Value**
    for **Type**, select **Yes** for **Value**, and click **Apply**.

10. Select the **Condition**, click **Connector** and select **Disconnect**.

11. Click **Update**.

12. Close the process editor. Click **Publish all Customizations.**

13. Close the solution explorer.

### Task 2 – Add Business Lock Unlock Rule

1.  Navigate to https://make.powerapps.com.

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions** and open the **Common Data Services Default Solution.**

4.  Click to open the **Knowledge Assessment** entity.

5.  Select the **Business Rules** tab and click **Add Business Rule**.

6.  Click on the **Show Details** carrot button next to the Business Rule name.

7.  Enter **Lock/Unlock Status** and click the carrot again to **hide details**.

8.  Select the **Condition**, go to the **Properties** tab, and enter **Check
    Notification** for **Display Name**.

9.  Go to **Rule 1**, select **Notify Manager** for **Field**, select **Equals**
    for **Operator**, select **Value** for **Type**, select **Yes** for
    **Value**, and click **Apply**.

10. Add new **Rule** by clicking **+ New**.

11. Go to **Rule 2**, select **Approval Status** for **Field**, select **Does
    not Equal** for **Operator**, select **Value** for **Type**, and select
    **Approved** for **Value**.

12. Make sure **And** is select for **Rule Logic** and click **Apply**.

13. Select the **Components** tab, drag **Lock/Unlock** action and drop it on
    the **True** side of the condition (the checkmark side).

14. Select the **Lock/Unlock** action, go to the **Properties** tab, enter
    **Lock Status** for **Display Name**, select **Status** for
    **Field**, select **Lock** for **Status**, and click **Apply**.

15. Select the **Components** tab, drag **Lock/Unlock** action and drop it on
    the **False** side of the condition (the x side).

16. Select the second **Lock/Unlock** action, got to the **Properties** tab,
    enter **Unlock Status** for **Display Name**, select **Status**
    for **Field**, select **Unlock** for **Status**, and click **Apply**.

17. Click **Save**.

18. Click **Activate**.

19. Confirm activation.

20. Close the process editor.

21. Click **Done**.

22. Click the **Common Data Services Default Solution** from the navigation breadcrumbs. Click **Publish all Customizations.**

### Task 3 – Test the Updated Business process Flow

1.  Navigate to https://make.powerapps.com.

2.  Make sure you are in the **Practice** environment.

3.  Select **Apps** and click to open the **Knowledge Admin** application.

4.  Select **Assessments**.

5.  Click **New**.

6.  Enter **BPF Assessment Two** for **Title** and click **Save**.

7.  Select the **Questions** tab and click **New Knowledge Question.**

8.  Select **Simple** for **Question Type**.

9.  Enter **Process Test Question** for **Question**.

10. Enter **Answer One** for **Answer 1**, **100** for **Answer 1 Points**.

11. Enter **Answer Two** for **Answer 2**, **0** for **Answer 2 Points**.

12. Enter **Answer Three** for **Answer 3**, **0** for **Answer 3 Points**.

13. Enter **Answer Four** for **Answer 4**, **65** for **Answer 4 Points**.

14. Click **Save**.

15. Click on the browser back button.

16. Your Business Process Flow should have just one stage.

17. Click on the **Knowledge Assessment** stage of then Business Process Flow. The steps
    for this stage will come to view.

18. Enter **80** for **Passing Score**.

19. Click on the **Total Points** calculator icon.

20. Click **Recalculate**.

21. The **Total Points** should get recalculated.

22. Select **Yes** for **Notify Manager**.

23. The Activate Stage should now be added to the Business Process Flow.

24. Select **Completed** for **Create Questions** and click **Next Stage**.

25. The process should move to the **Activate** stage.

27. The Business Rule should run and **Lock** the **Assessment Status**. Do not
    close this page.

28. Start a new browser window and navigate to
    [https://flow.microsoft.com](https://flow.microsoft.com/).

29. Select **Action items** and then select **Approvals**.

30. You should have one approval waiting for you. Click on the approval.

31. The Approval pane will open. Click **Approve**.

32. Provide **Comments** and click **Confirm**.

33. Go back to **Knowledge Admin** application and click on the **Refresh**
    button.

34. Click on the **Activate** stage of the Business Process Flow.

35. The Approval Flow should complete the approval and set the **Status** to **Approved**.

36. The Business Rule should **Unlock** the **Status** field.

37. Click **Finish**.
