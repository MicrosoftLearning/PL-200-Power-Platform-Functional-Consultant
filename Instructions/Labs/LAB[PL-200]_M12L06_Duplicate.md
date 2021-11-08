---
lab:
    title: 'Lab 12.6: Duplicate detection'
    module: 'Module 12: Putting it all together'
---

Module 12: Putting it all together
=======================

## Lab 12.6: Duplicate detection

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------

You are a functional consultant working on the Fabrikam project. Your client
wants to make users aware of potential duplicates when creating contacts and you
have been tasked with implementing duplicate detection. In this practice, you
will create and modify duplicate detection rules.

## Exercise 1 – Edit Existing Duplicate Detection Rules

In this exercise, you will customize an existing rule named Contacts with the
same business phone number to refine its criteria. You will also deactivate the
Accounts with the same website rule because Fabrikam found that too often they
created accounts for different locations that had the same website.

### Task 1 – Customize Duplicate Detection Rule

It is very common for multiple Contacts that have the same business phone
number, but the Contact with same business phone number duplicate detection rule
tags these Contacts as duplicates.

In this task, you will enhance the Contact with the same business phone number
rule by adding criteria to match on last name.

1.  Navigate to <https://make.powerapps.com>.

2.  Select **Environments**.

3.  Select your **Practice** environment.

4.  Navigate to **Settings \> Data Management.**

5.  Click **Duplicate Detection Rules**.

6.  Locate and click to open the **Contacts with the Same Business Phone
    Number**. It will open in a new window.

7.  In the new window, click **Unpublish**.

8.  Click **OK**.

9.  Locate the **Duplicate Detection Rule Criteria** section and click
    **Select**.

10. Locate and select **Last Name**.

11. Select **Exact Match** for **Criteria**.

12. Change the name to **Contacts with the same business phone number and last
    name**.

13. Change the Description to **Detects contact records that have the same value
    in the Business Phone column and the last name column**.

14. Click **Save**.

15. Click **Publish**.

16. Click **OK**.

17. Click **Close**. DO NOT navigate away from this page.

### Task 2 – Unpublish Duplicate Detection Rule

It is very common for different locations of the same account to have the same
website. Therefore, the Accounts with the same website rule is not useful
because it will detect these accounts as duplicates.

In this task, you unpublish the Accounts with the same website rule.

1.  Locate and click to open the **Accounts with the same website** rule.

2.  Click **Unpublish**.

3.  Click **OK**.

4.  Click **Save and Close**. DO NOT navigate away from this page.

## Exercise 3 – Create New Duplicate Detection Rules

In this exercise, you will create a new duplicate detection rule that will mark
a Contact as duplicate if it has the same last name, the same first 3 letters of
the first name, and the same last 10 letters of the email.

### Task 1 – Create Duplicate Detection Rule

1.  While still on the Duplicate Detection Rules, click **New**.

2.  Enter **Contacts with the same last name, similar first name, and similar
    email** for **Name**.

3.  Select **Contact** for **Base Record Type** and **Contact** for the
    **Matching Record Type**.

4.  Click **Select**.

5.  Locate and select the **Last Name** field.

6.  Select **Exact Match** for **Criteria**.

7.  Click **Select** again.

8.  Locate and select the **First Name** field.

9.  Select **Same First Characters** for **Criteria** and enter **3** for **No.
    of Characters**.

10. Click **Select** one more time.

11. Locate and select the **Email** field.

12. Select **Same Last Characters** for **Criteria** and enter **10** for **No.
    of Characters**.

13. Click **Save**.

14. Click **Publish**.

15. Click **OK**.

16. Click **Close**.
