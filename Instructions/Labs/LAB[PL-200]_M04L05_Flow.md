---
lab:
    title: 'Lab 4.5: Create a flow'
    module: 'Module 4: Build Power Automate flows'
---

Module 4: Build Power Automate flows
========================

## Lab 4.5: Practice Lab – Create a flow

Scenario
--------

As a functional consultant at Contoso, you are you continuing to work on a
model-driven Knowledge Admin app for your client Fabrikam. Your client has
requested an automation that should run weekly without user involvement. You
can’t schedule a workflow without custom code so you will need to use a
Microsoft Power Automate flow. In this lab, you will create a flow to run weekly and
test the flow.

Exercise 1 – Create Microsoft Power Automate flow
-----------------------------------

In this exercise, you will create a flow that will run once a week. This flow
will check if there are Knowledge Assessment with End Date of today or older and
deactivate them.

### Task 1 – Create a flow

2.  Make sure you have your **Practice** environment selected.

3.  Select **Solutions** and click to open the **Common Data Services Default Solution.**

4.  Locate the Name column and make a note of the name **Prefix**. The prefix
    will look like **crXXX_**.

5.  From the lefthand menu, select **Flows.** (If you get a pop-up here, just choose your country/region and select **Get started.**)

6.  Click **+ New** and select **+ Automated - From Blank**.

7.  The pop-up will show common triggers that you can easily select to jumpstart your flow configuration. Scroll through the options, but do not select anything. When you are ready, press **Skip.**

8. In the box that says **Search connectors and triggers**, type **Recurrence.** Select the **Recurrence** option from the **Triggers** tab.

9. Select **+ New step.**

10. Type **Common Data Service** into the search box.

11. Select **List records** from the **Actions** box. 

13. Select **Knowledge Assessments** for Entity.

14. Click on **Show advanced options.**

16. Select the **Filter Query** field and type the following:

        crXXX_enddate lt 
        
     Replace crXXX_ with your unique prefix and type a **space** at the end of the expression.

17. Select the **Expression** of the **Dynamics Content** pane.

18. Type **utcNow()** and click **OK.** (There should be a space before the utcnow() expression.)

19. Click on the **… Menu** button of the step and select **Rename**.

20. Rename the step **Get Assessments**.

21. Click **+ New Step**.

22. Search for **Common Data Service** and select **Update a Record**.

23. Select **Knowledge Assessments**
    for **Entity Name**, and select the **Record Identifier** field.

24. Select **Knowledge Assessment** from the **Dynamic Content** pane.

25. **Apply to Each** step will be added and **Value** will be selected for Output. Click on **Update a record** and then click **Show Advanced Options**.

26. Locate the **Status Value** option set and select **Inactive**.

27. Click on the **… Menu** button of the step and select **Rename**.

28. Rename the step **Deactivate Assessment**.

29. Scroll up and click on the name of the flow by clicking **Untitled.**

30. Rename the flow **Deactivate Old Assessments**.

31. Click **Save**. Don’t navigate away from the flow.

### Task 2 – Test your flow

1.  Start a new browser window and navigate to https://make.powerapps.com.

2.  Make sure you are in your **Practice** environment.

3.  Select **Apps** and click to open the **Knowledge Admin** model-driven application.

4.  Select **Assessments** and click to open the **Test Assessment Four**.

5.  Locate the **End Date** field and select today’s date.

6.  Click **Save**.

7.  Go back to the flow you created.

8.  Click **Test**.

9.  Select **Using Data from Previous Runs.**

10. Select the latest run and click **Test**.

11. The flow should run and succeed.

12. Go back to the **Knowledge Admin** application.

13. Select **Assessments**.

14. **Test Assessment Four** should now be missing from the view.

15. Click on the view name and select the **Inactive Knowledge Assessments**
    view.

16. The deactivated record will now be in this view.

17. Go back to flow and click **Edit**.

18. Click on the Recurrence trigger.

19. Change the **Recurrence** from **Minute** to **Week**.

20. Click **Save**.

21. Go back to the **Knowledge Admin** application.

22. Select **Assessments**.

23. Click on the view name and select the **Inactive Knowledge Assessments**
    view.

24. Click to open the **Test Assessment Four** record.

25. Click **Activate**.

26. Confirm activation.

27. Change the **End Date** to one month from today.

28. Click **Save**.
