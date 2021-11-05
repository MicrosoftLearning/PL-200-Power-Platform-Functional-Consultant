---
lab:
    title: 'Lab 2.4: Additional table settings'
    module: 'Module 2: Work with Dataverse'
---

Module 2: Work with Dataverse
====================

## Lab 2.4: Additional table settings

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You are working on the data model
you started in the prior practice. In this practice you are enabling some table
options.

To view the data model you are building, **view
Image[MB-200]_M02L02_Creating_Entities_Fields.png in the Lab Resources**.

In this practice, you will be performing the following tasks.

- You will enable auditing on the Knowledge Assessment table.

## Exercise 1 – Enable Table Options

In this exercise, you will enable auditing and update the icon of the Knowledge
Assessment table.

### Task 1 – Enable Auditing Option for Knowledge Assessment

1.  Navigate to <https://make.powerapps.com> and make
    sure you are in your **Practice** environment.

2.  Select **Solutions**.

3.  Click to open **Common Data Services Default Solution**.

4.  Click on the ellipses and select **Switch to Classic**.

5.  Expand **Entities**.

6.  Select the **Knowledge Assessment** table.

7.  Scroll down to the to the **Data Services** section.

8.  Check the **Auditing** checkbox. *Note:* Remember auditing must be turned on
    at the environment, table, and column settings to produce any audit data. By
    default, columns are enabled for auditing.

9.  Click the **Save** icon.

10. Click **Publish.**
