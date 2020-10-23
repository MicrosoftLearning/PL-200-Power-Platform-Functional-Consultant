---
lab:
    title: 'Lab: Create relationships'
    module: 'Module 2: Work with the Common Data Service'
---

Module 2: Work with the Common Data Service
====================

## Lab 3: Practice Lab – Create relationships

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You are working on the data model
you started in the prior practice. In this practice you will be adding the
relationships to what you created in the prior practice. If you haven’t
completed that practice you should pause this practice and complete that first.

The following is the data model you are building. At this point all the entities
are created and you are ready to create the relationships. Please refer to the file labeled **LAB[PL-200]_Data_Model** in the Lab Resources to view the entity relationship diagram.

The following relationships need to be created.

1.  Knowledge Assessment to Knowledge Question changing the relationship
    behavior to be parental.

2.  Knowledge Assessment to Knowledge Test Result changing the relationship
    behavior to be parental.

3.  User to Knowledge Test Result we don’t need to create because we will assign
    the user who took the test as the owner of the record. An alternative design
    could have left owner to track who is working on the record and create
    another relationship to track who took the assessment. For our purposes we
    are going to keep it simple and use record owner.

4.  The relationship to Feedback is handled via an entity option you will be
    doing in a future practice.

**Important Note:** This lab will provide you with an actual Office 365 tenant
and licenses for the Power Platform applications you will be using in this
course. You will only be provided with one tenant for the practice labs in this
course. The settings and actions you take within this tenant do not roll-back or
reset, whereas the virtual machine you are provided with does reset each time
you close the lab session. Please be aware that Office 365 is evolving all the time. The
instructions in this document may be different from what you experience in your
actual Office 365 tenant. It is also possible to experience a delay of several
minutes before the virtual machine has network connectivity to begin the labs.


Exercise 1 – Create the Knowledge Assessment Relationships
----------------------------------------------------------

In this exercise, you will be creating the relationships for Knowledge
Assessment entity.

### Task 1 – Knowledge Assessment to Knowledge Question Relationship

In this task, you will create a One-to-Many relationship between the Knowledge
Assessment and Knowledge Question entities.

1.  Navigate to <https://make.powerapps.com> and make sure you are in your
    **Practice** environment.

2.  Select **Solutions** and open the **Common Data Service Default Solution.**

3.  Click to open the **Knowledge Assessment** entity.

4.  Select the **Relationships** tab.

5.  Click **+Add Relationship** and select **One-to-Many**.

6.  Select **Knowledge Question** for **Related Entity** and click **Done**.

7.  Click **Save Entity**. It is a good idea to save your changes as you make
    them.

### Task 2 – Knowledge Assessment to Knowledge Test Result Relationship

In this task, you will create a One-to-Many relationship between the Knowledge
Assessment and Knowledge Test Result entities.

1.  Make sure you have the **Relationship** tab selected.

2.  Click **Add Relationship** and select **One-to-Many**.

3.  Select **Knowledge Test Result** for **Related Entity** and click **General**.

4.  The relationship names must be unique. Change the **Relationship Name** to
    **KnowledgeAssessment_KnowledgeResult**.

5.  Click **Done**.

6.  Click **Save Entity**.

7.  From the navigation menu, click **Common Data Services Default Solution**.

8.  Click **Publish All Customizations**.

Exercise 2 – Adjust relationship behaviors
------------------------------------------

In this exercise, you will be changing the relationship behaviors to be
parental. You will be performing this change in the classic Solution Explorer.

### Task 1 – Change the relationship behavior

1.  Make sure you still have the **Common Data Services Default Solution** open.

2.  Click on the ellipses located next to **Publish All Customizations** and
    select **Switch to classic**.

3.  Expand **Entities**.

4.  Expand the **Knowledge Assessment** entity.

5.  Select **1:N Relationships**.

6.  Double click to open the relationship with the **Knowledge Question**
    Related Entity.

7.  Scroll down to the **Relationship Behavior** section and locate the **Type
    of Behavior** field.

8.  Select **Parental** for **Type of Behavior**.

9.  Click **Save and Close**.

10. Open the relationship with the **Knowledge Test Result** related entity.

11. Change the **Type of Behavior** to **Parental**.

12. Click **Save and Close**.

13. Click **Publish All Customizations**.

14. Close the solution explorer.
