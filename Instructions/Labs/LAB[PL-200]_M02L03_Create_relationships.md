---
lab:
    title: 'Lab 2.3: Create relationships'
    module: 'Module 2: Work with Dataverse'
---

Module 2: Work with Dataverse
====================

## Lab 2.3: Practice Lab – Create relationships

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You are working on the data model
you started in the prior practice. In this practice you will be adding the
relationships to what you created in the prior practice. If you haven’t
completed that practice you should pause this practice and complete that first.

The following is the data model you are building. At this point all the tables
are created and you are ready to create the relationships. Please refer to the
file labeled **LAB[PL-200]_Data_Model** in the Lab Resources to view the entity
relationship diagram.

The following relationships need to be created.

- Knowledge Assessment to Knowledge Question: changing the relationship
    behavior to be parental.

- Knowledge Assessment to Knowledge Test Result: changing the relationship
    behavior to be parental.

- User to Knowledge Test Result: we don’t need to create because we will assign
    the user who took the test as the owner of the record. An alternative design
    could have left owner to track who is working on the record and create
    another relationship to track who took the assessment. For our purposes, we
    are going to keep it simple and use record owner.

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

## Exercise 1 – Create the Knowledge Assessment Relationships

In this exercise, you will be creating the relationships for Knowledge
Assessment table.

### Task 1 – Knowledge Assessment to Knowledge Question Relationship

In this task, you will create a One-to-Many relationship between the Knowledge
Assessment and Knowledge Question tables.

1.  Navigate to <https://make.powerapps.com> and make
    sure you are in your **Practice** environment.

2.  Select **Solutions** and open the **Common Data Service Default Solution.**

3.  Click to open the **Knowledge Assessment** table.

4.  Select the **Relationships** tab.

5.  Click **+New Relationship** and select **One-to-Many**.

6.  Select **Knowledge Question** for **Related (Many) Table** and click
    **Advanced options**.

7.  Change **Type of behavior** to **Parental** and click **Done**

### Task 2 – Knowledge Assessment to Knowledge Test Result Relationship

In this task, you will create a One-to-Many relationship between the Knowledge
Assessment and Knowledge Test Result tables.

1.  Make sure you have the **Relationship** tab selected.

2.  Click **+ New Relationship** and select **One-to-Many**.

3.  Select **Knowledge Test Result** for **Related (Many) Table** and click
    **General**.

4.  The relationship names must be unique. Change the **Relationship Name** to
    **KnowledgeAssessment_KnowledgeResult**.

5.  Click **Advanced options**.

6.  Change **Type of behavior** to **Parental** and click **Done**'

7.  Select **Solutions** on the left and click **Publish All Customizations**.
