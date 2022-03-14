---
lab:
    title: 'Lab 6.1: Create users'
    module: 'Module 6: Automation overview'
---

Module 6: Automation overview
==================

## Lab 6.1: Practice Lab – Create users

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You will be continuing your work
on the model-driven Knowledge Admin app. In this practice, you will be creating
a dashboard and modifying the app to include it.

We need to add additional users to be able to use the application we have built.
You will be adding three users to the tenant; one manager and two additional
users.

**Important Note:** This lab will provide you with an actual Office 365 tenant
and licenses for the Power Platform applications you will be using in this
course. You will only be provided with one tenant for the practice labs in this
course. The settings and actions you take within this tenant do not roll-back or
reset, whereas the virtual machine you are provided with does reset each time
you close the lab session. Please be aware that Office 365 is evolving all the
time. The instructions in this document may be different from what you
experience in your actual Office 365 tenant. It is also possible to experience a
delay of several minutes before the virtual machine has network connectivity to
begin the labs.

## Exercise 1 – Add users and assign license to user

### Task 1 – Create Users

In this task, you create users and assign licenses to them.

1.  Navigate to <https://admin.microsoft.com/>.

2.  Login with your admin user, if prompted.

3.  Expand **Users** and select **Active Users**.

4.  Click **+ Add a user**.

5.  Enter **User** for **First Name** and **One** for **Last Name**.

6.  The **Display Name** will be populated for you.

7.  Enter **UserOne** for **User Name**.

8.  **Uncheck** the **Automatically create password** checkbox.

9.  Enter **practice\@1** for **Password**.

10. **Uncheck** the **Require this user change their password…** checkbox.

11. Select **Next.** Assign the **Microsoft Power Apps Plan 2 Trial** license.

12. Click **Next.** On the next page, click **Next** again. Finally, click
    **Finish adding.**

13. Click **Close.**

14. Repeat steps 4-16 for **User Two.**

15. Repeat steps 4-16 for **Manager User.**

16. Your new users should now be on the list of active users in Office.
