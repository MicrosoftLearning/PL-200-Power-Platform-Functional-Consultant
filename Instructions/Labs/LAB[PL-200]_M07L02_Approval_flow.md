---
lab:
    title: 'Lab 7.2: Build an approval flow'
    module: 'Module 7: Build Power Automate cloud flows'
---

Module 7: Build Power Automate cloud flows
========================

## Lab 7.2: Practice Lab – Build an approval flow

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

Your client Fabrikam needs an approval process added to their model-driven
Knowledge Admin app. The approval process will notify the user's manager to
obtain an approval or rejection and handle the knowledge assessment
appropriately.

In this lab, you will create a **Microsoft Power Automate** cloud flow to
retrieve the appropriate manager, seek their approval, and edit the row based on
the manager's decision.

## Exercise 1 – Prepare the solution

### Task 1 – Add field to the Knowledge Assessment

1.  Navigate to <https://make.powerapps.com>.

2.  Ensure you are in the **Practice** environment you created.

3.  Click **Solutions**.

4.  Click to open the **Common Data Services Default Solution.**

5.  Click to open the **Knowledge Assessment** table.

6.  Click select the **Columns** tab and click **+ Add column**.

7.  Create the column to the following specification:

    -   Enter **Notify Manager** for **Display Name**.

    -   Choose **Yes/No** for **Data Type**.

    -   Click **Done**.

8.  Click **+ Add Column**.

9.  Create the field to the following specification:

    -   Enter **Approval Status** for **Display Name**.

    -   Choose **Choice** for **Data Type**.

    -   Click on the **Choice** dropdown and choose **+ New choice**.

    -   Enter **Waiting** for the first item and click **Add New Item**.

    -   Enter **Approved** for the second item and click **Add New Item**.

    -   Enter **Rejected** for the third item and click **Save**.

    -   Click **Done**.

10. Click **Save Table**.

### Task 2 – Add Column to Knowledge Assessment Form

1.  Make sure you still have the **Knowledge Assessment** table selected.

2.  Select the **Forms** tab and click on the **Main** form.

3.  Add the **Notify Manager** column to the form.

4.  Add the **Approval Status** column to the form.

5.  Click **Save**.

6.  Click **Publish**.

7.  Click the back button.

8.  Navigate back to the solution.

9.  Click **Publish All Customizations**.

## Exercise 2 – Create cloud flow

### Task 1 – Create cloud flow

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in the **Practice** environment you created.

3.  Select **Flows** from the left navigation pane and click **+ New flow.** Select **Automated cloud flow** In
    the pop-up, select **Skip.**

4.  Type into the search box **Microsoft Dataverse** and select **When a row is
    added, modified, or deleted.**

5.  Select **Modified** for **Change type**, **Knowledge Assessments** for **Table
    Name**, and select **Business Unit** for **Scope**.

6.  Click **Show Advanced Options**.

7.  Enter **crXXX_notifymanager** for **Select columns**. Replace crxxx with
    your environment prefix.

8.  Click on the ellipses (**…**) and select **Rename**.

9.  Rename the step **When Assessment is Updated**.

### Task 2 – Add Condition

1.  Click **+ New Step**.

2.  Search for **Condition** and select **Condition** control.

3.  Click on the **Choose a Value** field and select **Notify Manager** from the
    **Dynamic Content** pane.

4.  Select **is equal to** for operator.

5.  Select the last field and type **true**.

6.  Click on the ellipses (**…**) of the condition and select **Rename**.

7.  Rename the condition **Check Notification.**

### Task 3 – Update Waiting Assessment

1.  Click **Add an Action** in the **If Yes** branch.

2.  Click **Microsoft Dataverse** and select **Update a row**.

3.  Select **Knowledge Assessments** for **Table Name**, and click on the **Row
    ID** field.

4.  Select **Knowledge Assessment** from the **Dynamic Content** pane.

5.  Click **Show Advanced Options.**

6.  Locate the **Approval Status** field and select **Waiting**.

7.  Click on the ellipses (**…**) of the step and select **Rename**.

8.  Rename the step **Update Waiting Assessment**

### Task 4 – Get User

1.  Click **Add an Action** within the **If Yes** branch.

2.  Select **Microsoft Dataverse** and select **Get a row by ID**.

3.  Select **Users** for **Table name**, and click in the **Row ID** field.

4.  Select **Created By (Value)** from the **Dynamic Content** pane in the **Update Waiting Assessment** section (you may have to click **See more**).

4.  Click on the ellipses (**…**) of the **Get a row by ID** step and select
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

6.  Go to the **Dynamic Content** pane and scroll to the **Get Created User**
    section.

7.  Select **Primary Email** from the **Get Created User** section.

8.  From the Advanced Options, select the **Requestor** field. Go to the
    **Dynamic Content** pane and select **Primary
    Email** from the **Get Created User** section.

9.  Select the **Details** field, go to the **Dynamic Content** pane and select **Full Name** from the **Get Created User**
    section.

10. Add a space after the **Full Name** and type "**created an assessment that
    requires manager’s approval.**"

11. Press the enter key to start a new line.

12. Type **Assessment Name:**

13. Go to the **Dynamic Content** pane and select
    **Title** from the **When Assessment is Updated** section.

14. Press enter key to start a new line.

15. Type **Manager:**

16. Go to the **Dynamic Content** pane, search for **Full Name**, and select
    **Full Name** from the **Get Created User** section.

17. It is good practice to include a link to the record that needs the approval.
    Start a new browser window and navigate to <https://make.powerapps.com>.

18. In your new window, make sure you are in your **Practice** environment.

19. Select **Apps** and click to open the **Knowledge Admin** application.

20. Open any Knowledge Assessment.

21. Find the **Pop Out** button located in bottom left of the form and click on
    it. (It will be in the bar at the very bottom of the page, and will be next
    to the status of the record.)

22. A new window will open. Copy the **URL** of the window.

23. Open a notepad and paste the URL.

24. The **URL** will look like the link below.

    https://practice.crm.dynamics.com/main.aspx?appid=97595509-8a00-458d-856d-1569b42d6282&pagetype=entityrecord&etn=cre7f_knowledgeassessment&id=540a380a-74f9-e811-a950-000d3a1bc3f6

25. Copy everything before the last GUID.

    https://practice.crm.dynamics.com/main.aspx?appid=97595509-8a00-458d-856d-1569b42d6282&pagetype=entityrecord&etn=cre7f_knowledgeassessment&id=

26. Go back to the flow and select the **Item Link** field.

27. Paste the **URL** you copied into the **Item Link** field.

28. Go to the **Dynamic Content** pane, search for **Knowledge Assessment** and
    select **Knowledge Assessment** from either section.

### Task 7 – Add Condition

1.  Click **Add an Action** of the **If Yes** branch.

2.  Search for **Condition** and select **Condition** control.

3.  Click on the first **Choose a value** field and select **Outcome** from the
    Dynamic Content pane.

4.  Leave **Is Equals to** as the operator.

5.  Click on the **Choose a Value** field and type **Approve**.

6.  Click on the ellipses (**…**) of the condition and select **Rename**.

7.  Rename the condition **Check Response**.

### Task 8 – Update Approved Assessment

1.  Click **Add an Action** of the **If Yes** branch of the **Check Response**
    condition.

2.  Search for **Microsoft Dataverse** and select **Update a row**.

3.  Select **Knowledge Assessments** for **Table name** and click on the **Row
    ID** field.

4.  From the **Dynamic Content** pane, select **Knowledge Assessment**.

5.  Click **Show advanced options**.

6.  Locate the **Approval Status** field and select **Approved**.

7.  Click on the ellipses (**…**) of the step and select **Rename**.

8.  Rename the step **Update Approved Assessment**.

### Task 9 – Update Rejected Assessment

1.  Click **Add an Action** of the **If No** branch of the **Check Response**
    condition.

2.  Select **Microsoft Dataverse** and select **Update a row**.

3.  Select **Knowledge Assessments** for **Table name** and click on the **Row
    ID** field.

4.  Select **Knowledge Assessment** from the **Dynamic Content** pane.

5.  Click **Show Advanced Options**.

6.  Locate the **Approval Status** field and select **Rejected**.

7.  Click on the ellipses (**…**) of the step and select **Rename**.

8.  Rename the step **Update Rejected Assessment**.

9.  Click **Save** to save the flow.

### Task 10 – Test flow

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in your **Practice** environment.

3.  Select **Apps** and click to open the **Knowledge Admin** application.

4.  Open any Knowledge Assessment.

5.  Locate the **Approval Status** and make sure no value is selected.

6.  Locate the **Notify Manager** field and set it to **Yes**.

7.  Click **Save**.

8.  Click **Refresh** The **Approval Status** should change to **Waiting.**

9.  Navigate to <https://flow.microsoft.com>.

10. Click **Sign in** if not already directed to homepage.

11. Make sure you are in your **Practice** environment.

12. Expand **Action items** and select **Approvals**.

13. You should see an approval with the title **Manager Notification Approval**.
    Click on the approval tile. This may take up to 15 minutes to show, due to provisioning.

14. The approval pane will open. Make sure the information in the details is
    what you expected.

15. Click on the **Link**.

16. The Knowledge Assessment row should open.

17. Close the Knowledge Assessment.

18. Select **Approve** in **Choose your response**.

19. Add a **Comment** and click **Confirm**.

20. Click **Done** to close the approval pane.

21. Select the **History** tab.

22. The approval should show up in this list as **Approved**.

23. Go back to the **Knowledge Admin** app.

24. Refresh the test assessment.

25. The **Approval Status** field should be set to **Approved**.
