---
lab:
    title: 'Lab 5.2: Create security role'
    module: 'Module 5: Build Power Automate flows'
---

Module 5: Build Power Automate flows
==================
## Lab 5.2: Practice Lab - Create security role

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You will be continuing your work
on the model-driven Knowledge Admin app. In this practice, you will be working
with security roles.

Our users need to have security roles assigned so they can use the application
we have built. Let’s evaluate the default role to see if it’s a good fit. We
notice there’s nothing for our custom tables. After we determine what changes
should be made we will copy from an existing role and create a new role for
users. Once created, we will assign the new role to our users. We will then
create and assign an application manager role.

**Important Note:** This lab will provide you with an actual Office 365 tenant
and licenses for the Microsoft Power Platform applications you will be using in this
course. You will only be provided with one tenant for the practice labs in this
course. The settings and actions you take within this tenant do not roll-back or
reset, whereas the virtual machine you are provided with does reset each time
you close the lab session. Please be aware that Office 365 is evolving all the
time. The instructions in this document may be different from what you
experience in your actual Office 365 tenant. It is also possible to experience a
delay of several minutes before the virtual machine has network connectivity to
begin the labs.

## Exercise 1 – Evaluate and Create Security Roles

### Task 1 – Evaluate Security Role

In this task, you will evaluate the Basic User security role.

1.  Navigate to <https://admin.powerplatform.microsoft.com>

2.  Select the **Environments**.

3.  Select your **Practice** environment and click **Settings**.

4.  Expand the **Users + Permissions** section and select **Security Roles.**

5.  Click to select the **Basic User** security role and click **Edit.**

6.  Select the **Core Records** tab.

7.  Scroll down and see the privileges the **Basic User** security role has to
    the **Core Records**.

8.  Select the **Custom Entities** tab.

9.  You will find that the **Basic User** security role doesn’t have access to
    any of the custom entities you created. You can close this tab.

### Task 2 – Copy from Existing Security Role

In this task, you will create a new security role by copying from the Microsoft
Dataverse User security role.

1.  Click on the ellipses (**...**) for the **Basic User** security role and select **Copy**

2.  Enter **Knowledge Assessment User** for **Name** and click **Copy**.

3.  The new security role will be created. Select
    the role, select edit, and your new security role will open. Select the
    **Custom Entities** tab.

4.  Locate the **Knowledge Assessment** table and click on the Read access
    circle. The security role will get **User** access to the **Knowledge
    Assessment** table. Users with this security role will have **Read**
    privilege to the rows owned by the user or are shared with the user.

5.  Click on the **Read** access circle again. The security role will now get
    **Business Unit** access. Users with this security role will get **Read**
    access to all rows owned by the business unit the user belongs to.

6.  Click the **Read** access circle again. The security role will now get
    **Parent: Child Business Units access**. Users with this security role will
    get **Read** access to all rows owned by the business unit the user belongs
    to and all its child business units.

7.  Click on the **Read** access circle one more time. The security role will
    now get **Organization** access. Users with this security role will get
    **Read** access to all rows owned by the organization.

8.  Locate the **Knowledge Question** table and click on the **Read** access
    circle four times. This action will give the security role **Organization**
    Read access to the **Knowledge Question** table.

9.  Locate the **Knowledge Test Result** table and click on the **Create**
    circle one time.

10. Locate the **Read** circle of the **Knowledge Test Result** table and click
    Four times.

11. Locate the **Write** circle of the **Knowledge Test Result** table and click
    one time.

    The security role will get organization-wide level Read privilege and user-
    level Create/Write privileges to the Knowledge Test Result table.

12. Select the **Core Records** tab.

13. Locate the **Feedback** table and click on the **Create** circle one time
    and click on the **Write** circle one time.

14. Click **Save and Close**.

15. Close the Basic User security role. Do not close the security roles window.

### Task 3 – Create Security Role

In this task, you will create a new security role for the application manager.

1.  Make sure you are still on the **Roles** window and click **New role**.

2.  Enter **Knowledge Application Manager** for **Role Name**.

3.  Select the **Custom Entities** tab.

4.  Locate the **Knowledge Assessment** table and click on the table name four
    times. The security role will get organization level of all privileges.

5.  Locate the **Knowledge Question** table and click on the table name four
    times. The security role will get organization level of all privileges.

6.  Locate the **Knowledge Test Result** table and click on the table name four
    times. The security role will get organization level of all privileges.

7.  Select the **Core Records** tab.

8.  Locate the **Feedback** table and click on the table name four times. The
    security role will get organization level of all privileges.

9.  Click **Save and Close**.

10. Close the Roles window.
