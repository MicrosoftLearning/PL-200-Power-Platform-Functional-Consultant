---
lab:
    title: 'Lab 7.1: Create a flow'
    module: 'Module 7: Build Power Automate cloud flows'
---

Module 7: Build Power Automate cloud flows
========================

## Lab 7.1: Practice Lab – Create a flow

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

As a functional consultant at Contoso, you are continuing to work on a
model-driven Knowledge Admin app for your client Fabrikam. Your client has
requested an automation that should run weekly without user involvement. You
can’t schedule a workflow without custom code so you will need to use a
Microsoft Power Automate cloud flow. In this lab, you will create a cloud flow
to run weekly and test the flow.

## Exercise 1 – Create Microsoft Power Automate cloud flow

In this exercise, you will create a cloud flow that will run once a week. This
flow will check if there are Knowledge Assessment with End Date of today or
older and deactivate them.

### Task 1 – Create a flow

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you have your **Practice** environment selected.

3.  Select **Solutions** and click to open the **Common Data Services Default
    Solution.**

4.  Locate the **Name** column and make a note of the name **Prefix**. The
    prefix will look like **crXXX\_**.

5.  From the left hand menu, select **Flows.** (If you get a pop-up here, just
    choose your country/region and select **Get started.**) 
    **Hint:** Click the **Home** on the left hand navigation menu to view the **Flow**, make sure you have your **Practice** environment is selected.

6.  Click **+ New Flow** and select **+ Automated cloud flow**.

7.  The pop-up will show common triggers that you can easily select to
    jump-start your flow configuration. Scroll through the options, but do not
    select anything. When you are ready, press **Skip.**

8.  In the box that says **Search connectors and triggers**, type **Recurrence**
    Select the **Recurrence** option from the **Triggers** tab.

9.  Select **+ New step.**

10. Type **Microsoft Dataverse** into the search box.

11. Select **List rows** from the **Actions** box.

12. Select **Knowledge Assessments** for **Table name**.

13. Click on **Show advanced options.**

14. Select the **Filter rows** field and type the following:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
crXXX_enddate lt 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

>   Replace crXXX\_ with your unique prefix and type a **space** at the end of
>   the expression.

15.  Select the **Expression** tab of the **Dynamics Content** pane. If you do not see the Dynamic Content pane pop up at this time, you may need to zoom out. 

16.  Type **utcNow()** and click **OK.** (There should be a space before the
    utcnow() expression in your formula.)

17.  Click on the ellipses (**…**) on the **List Rows** step and select **Rename**.

18.  Rename the step **Get Assessments**.

19.  Click **+ New Step**.

20.  Search for **Microsoft Dataverse** and select **Update a row**.

21.  Select **Knowledge Assessments** for **Table name**.

22.  Click to select the **Row ID** field.

23.  Select **Knowledge Assessment** from the **Dynamic Content** pane.

24. **Apply to Each** step will be added and **Value** will be selected for
    Output. Click on **Update a row** and then click **Show Advanced
    Options**.

25. Locate the **Status** option set and select **Inactive**.

26. Click on the ellipses (**…**) for the **Update a row** step and select **Rename**.

27. Rename the step **Deactivate Assessment**.

28. Scroll up and click on the name of the flow by clicking **Untitled.**

29. Rename the flow **Deactivate Old Assessments**.

30. Click **Save**. Don’t navigate away from the flow.

### Task 2 – Test your flow

1.  Start a new browser window and navigate to <https://make.powerapps.com>.

2.  Make sure you are in your **Practice** environment.

3.  Select **Apps** and click to open the **Knowledge Admin** model-driven
    application.

4.  Navigate to **Knowledge Assessments** and click to open the **Test Assessment Four**.

5.  Locate the **End Date** field and select today’s date.

6.  Click **Save**.

7.  Go back to the flow you created.

8.  Click **Test**.

9.  Select **Automatically**, and then select **With a recently used trigger**.

10. Select the latest run and click **Test**.

11. The flow should run and succeed.

12. Go back to the **Knowledge Admin** application.

13. Select **Knowledge Assessments**.

14. **Test Assessment Four** should now be missing from the view.

15. Click on the view name and select the **Inactive Knowledge Assessments**
    view.

16. The deactivated rows will now be in this view.

17. Go back to flow and click **Edit**.

18. Click on the **Recurrence** trigger.

19. Change the **Recurrence** from **Minute** to **Week**.

20. Click **Save**.

21. Go back to the **Knowledge Admin** application.

22. Select **Knowledge Assessments**.

23. Click on the view name and select the **Inactive Knowledge Assessments**
    view.

24. Click to open the **Test Assessment Four** record.

25. Click **Activate**.

26. Confirm activation.

27. Change the **End Date** to one month from today.

28. Click **Save**.
