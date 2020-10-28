---
lab:
    title: 'Lab 4.6: Build approval flow'
    module: 'Module 4: Build Power Automate flows'
---

Module 4: Build Power Automate flows
========================

## Lab 4.6: Practice Lab – Build approval flow

Scenario
--------

Your client Fabrikam needs an approval process added to their model-driven
Knowledge Admin app. The approval process will notify
the user's manager to obtain an approval or rejection and handle the knowledge assessment appropriately. 

In this lab, you will create a **Microsoft Power Automate** flow to
retrieve the appropriate manager, seek their approval, and edit the record based on the manager's decision. 

Exercise 1 – Prepare the solution 
----------------------------------

### Task 1 – Add field to the Knowledge Assessment

1.  Navigate to https://make.powerapps.com.

2.  Ensure you are in the **Practice** environment you created.

3.  Click **Solutions**.

4.  Click to open the **Common Data Services Default Solution.**

5.  Click to open the **Knowledge Assessment** entity.

6.  Click select the **Fields** tab and click **+ Add Field**.

7.  Create the field to the following specification:
    - Enter **Notify Manager** for **Display Name**.
    - Choose **Two Options** for **Data Type**.
    - Click **Done**.

8.  Click **Save Entity**.

9.  Click **+ Add Field**.

10. Create the field to the following specification:
    - Enter **Approval Status** for **Display Name**.
    - Choose **Option Set** for **Data Type**.
    - Click on the **Option Set** dropdown and choose **New Option Set**.
    - Enter **Waiting** for the first item and click **Add New Item**.
    - Enter **Approved** for the second item and click **Add New Item**.
    - Enter **Rejected** for the third item and click **Save**.
    - Click **Done**.

16. Click **Save Entity**.

### Task 2 – Add Field to Knowledge Assessment Form

1.  Make sure you still have the **Knowledge Assessment** entity selected.

2.  Select the **Forms** tab and click on the Main form.

3.  Add the **Notify Manager** field to the form.

4.  Add the **Approval Status** field to the form.

5.  Click **Save**.

6.  Click **Publish**.

7.  Click the back button.

9.  Click on the solution name located in the
    navigation breadcrumbs.

10. Click **Publish All Customizations**.

Exercise 2 – Create flow 
-------------------------

### Task 1 – Create flow

1.  Navigate to https://make.powerapps.com.

2.  Make sure you are in the **Practice** environment you created.

4.  Select **Flows** and click **+New.** Select **+Automated - from blank.** In the pop-up, select **Skip.** 

6.  Type into the search box  **Common Data Service** and select **When record is updated.**

7.  Select your environment. Select **Knowledge Assessments**
    for **Entity Name**, and select **Business Unit** for **Scope**.

8.  Click **Show Advanced Options**.

9.  Select **NotifyManager** for Attribute Filter. It will show up with your environment prefix.

10. Click on the **… Menu** button and select **Rename**.

11. Rename the step **When Assessment is Updated**.

### Task 2 – Add Condition

1.  Click **+ New Step**.

2.  Search for **Condition** and select **Condition** control.

3.  Click on the **Choose a Value** field and select **Notify Manager** from the
    **Dynamic Content** pane.

4.  Select **is equal to** for operator.

5.  Select the last field and type **true**.

6.  Click on the **… Menu** button of the condition and select **Rename**.

7.  Rename the condition **Check Notification.**

### Task 3 – Update Waiting Assessment

1.  Click **Add an Action** in the **If Yes** branch.

2.  Click **Common Data Service** and select **Update a record**.

3.  Select your Practice environment (if prompted), select **Knowledge Assessments**
    for **Entity Name**, and click on the **Record Identifier** or **Item ID** field.

4.  Select **Knowledge Assessment** from the **Dynamic Content** pane.

5.  Click **Show Advanced Options.**

6.  Locate the **Approval Status Value** field and select **Waiting**.

7.  Click on the **… Menu** button of the step and select **Rename**.

8.  Rename the step **Update Waiting Assessment**

### Task 4 – Get User

1.  Click **Add an Action** of the **If Yes** branch.

2.  Select **Common Data Service** and select **Get a Record**.

3.  Select your environment (if prompted), select **Users** for **Entity
    Name**, and click on the **Item ID** or **Record identifier** field.

4.  Select **Created By (Value)** from the **Dynamic Content** pane.

5.  Click on the **… Menu** button of the **Get a Record** step and select
    **Rename**.

6.  Rename the step **Get Created User**.

### Task 6 – Start Approval

1.  Click **Add an Action** to the **If Yes** branch.

2.  Search for **Approvals** and select **Start and wait for an approval**.

3.  Select **Approve/Reject – First to respond** for **Approval Type**.

4.  Enter **Manager Notification Approval** for **Title**.

5.  You will usually send the approval request to a manager or other decision
    makers, but in this lab, you will select the user you are logged in as.
    Select the **Assigned To** field.

6.  Go to the **Dynamic Content** pane and scroll to the **Get Created User** section.

7.  Select **Primary Email** from the **Get Created User** section.

8.  From the Advanced Options, select the **Requestor** field. Go to the **Dynamic Content** pane, search
    for **Primary Email**, and select **Primary Email** from the **Get Created
    User** section.

9.  Select the Details field, go to the **Dynamic Content** pane, search for
    **Full Name**, and select **Full Name** from the **Get Created User**
    section.

10. Add a comma after the **Full Name** and type **created an assessment that
    requires manager’s approval.**

11. Press the enter key to start a new line.

12. Type **Assessment Name:**

13. Go to the **Dynamic Content** pane, search for **Title**, and select
    **Title** from the **When Assessment is Updated** section.

14. Press enter key to start a new line.

15. Type **Manager:**

16. Go to the **Dynamic Content** pane, search for **Full Name**, and select
    **Full Name** from the **Get Created User** section.

17. It is good practice to include a link to the record that needs the approval. Start a new browser window and navigate to <make.powerapps.com>.

18. In your new window, make sure you are in your **Practice** environment.

19. Select **Apps** and click to open the **Knowledge Admin** application.

20. Select **Assessment** and click to open an assessment.

21. Find the **Pop Out** button located in bottom left of the form and click on
    it. (It will be in the bar at the very bottom of the page, and will be next to the status of the record.)

22. A new window will open. Copy the **URL** of the window.

23. Open a notepad and paste the URL.

24. The **URL** will look like the link below.

    https://practice.crm.dynamics.com/main.aspx?appid=97595509-8a00-458d-856d-1569b42d6282&pagetype=entityrecord&etn=cre7f_knowledgeassessment&id=540a380a-74f9-e811-a950-000d3a1bc3f6

25.	Copy everything before the last GUID.

    https://practice.crm.dynamics.com/main.aspx?appid=97595509-8a00-458d-856d-1569b42d6282&pagetype=entityrecord&etn=cre7f_knowledgeassessment&id=

26.  Go back to the flow and select the Item Link field.

27.  Paste the **URL** you copied.

28.  Go to the **Dynamic Content** pane, search for **Knowledge Assessment** and
    select **Knowledge Assessment** from either section. 

### Task 7 – Add Condition

1.  Click **Add an Action** of the **If Yes** branch.

2.  Search for **Condition** and select **Condition** control.

3.  Click on the first Choose a Value field and select **Outcome** from the Dynamic
    Content pane.

4.  Leave **Is Equals to** as the operator.

5.  Click on the **Choose a Value** field and type **Approve**.

6.  Click on the **… Menu** button of the condition and select **Rename**.

7.  Rename the condition **Check Response**.

### Task 8 – Update Approved Assessment

1.  Click **Add an Action** of the **If Yes** branch of the **Check Response**
    condition.

2.  Search for **Common Data Service** and select **Update a Record**.

3.  Select **Knowledge Assessments**
    for **Entity Name** and click on the **Record Identifier** field.

4.  Select **Knowledge Assessment** from the **Dynamic Content** pane.

5.  Click **Show Advanced Options**.

6.  Locate the **Approval Status Value** field and select **Approved**.

7.  Click on the **… Menu** button of the step and select **Rename**.

8.  Rename the step **Update Approved Assessment**.

### Task 9 – Update Rejected Assessment

1.  Click **Add an Action** of the **If No** branch of the **Check Response**
    condition.

2.  Select **Common Data Service** and select **Update a Record**.

3.  Select **Knowledge Assessments** for
    **Entity Name** and click on the **Record Identifier** field.

4.  Select **Knowledge Assessment** from the **Dynamic Content** pane.

5.  Click **Show Advanced Options**.

6.  Locate the **Approval Status Value** field and select **Rejected**.

7.  Click on the **… Menu** button of the step and select **Rename**.

8.  Rename the step **Update Rejected Assessment**.

9.  Click **Save** to save the flow.

### Task 10 – Test flow

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in your **Practice** environment.

3.  Select **Apps** and click to open the **Knowledge Admin** application.

4.  Select **Assessment** and click to open the **Test Assessment**.

5.  Locate the **Approval Status** and make sure no value is selected.

6.  Locate the **Notify Manager** field and set it to **Yes**. Set **Approval Status** to **Waiting.**

7.  Click **Save**.

8.  Click **Refresh**.

10. Navigate to <https://flow.microsoft.com>

11. Login if prompted.

12. Make sure you are in your **Practice** environment.

13. Expand **Action items** and select **Approvals**.

14. You should see an approval with the title **Manager Notification Approval**.
    Click on the approval tile.

15. The approval pane will open. Make sure the information in the details is
    what you expected.

16. Click on the **Link**.

17. The Knowledge Assessment record should open.

18. Close the Knowledge Assessment.

19. Click **Approve**.

20. Add **Comment** and click **Confirm**.

21. Close the approval pane.

22. Select the **History** tab.

23. The approval should show up in this list as **Approved**.

24. Go back to the **Knowledge Admin** app.

25. Refresh the Test Assessment.

26. The **Approval Status** field should be set to **Approved**.
