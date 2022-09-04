---
lab:
    title: 'Lab 1.1: Environment'
    module: 'Module 1: Work with Microsoft Dataverse'
---

# Practice Lab 1.1 - Create environments

## Scenario

In this lab, you create environments for use during the remainder of the labs.

## Exercise 1 - Create environments

In this exercise, you will create the **Practice** environment that you will do the majority of your lab work in and a developer environment to use to deploy solutions.

**NOTE** Depending on the browser that you are using, it is suggested that you disable any pop-up blockers that maybe enabled. This will prevent popup screens from not appearing as they should.

### Task 1.1 – Create trial environment

1. Navigate to the Power Platform admin center <https://admin.powerplatform.microsoft.com> and sign in with your Microsoft 365 credentials if prompted again.

1. Click **Get Started** if a Welcome to the Power Platform admin center popup is shown.

1. Select **Environments** from the left navigation pane. There should be a single environment, Contoso (default).

1. Click **+ New**.

    ![Environment in the Power Platform admin center.](../media/ppac-environments.png)

1. In the **Name** text box, enter **[my initials] Practice**. (Example: PL Practice).

1. In the **Type** drop down, select **Trial**. You may see an option for **Trial (subscription-based)**, only select the option that says **Trial**.

1. On the **Create a database for this environment?** toggle, change to **Yes**.

1. Note: Leave all other selections as default.

1. Click **Next**.

    ![New environment.](../media/new-environment-step1.png)

1. On the Add database tab, click **Save**.

1. Your **Practice** environment should now show in the list of environments.

    ![Environment in the Power Platform admin center.](../media/ppac-environments2.png)

1. Your environment may take a few minutes to provision. Refresh the page if needed. When your environment is prepared, select your **Practice** environment by clicking on the ellipses (...) next to its name to expand the drop down menu and select **Settings**.

    ![Environment in the Power Platform admin center.](../media/ellipses-settings.png)

1. Explore the different areas in **Settings** that you are interested in but do not make any changes yet.

### Task 1.2 – Create developer environment

1. Navigate to <https://powerapps.microsoft.com/developerplan>.

1. Click **Existing user? Add a dev environment**. Do not click Get started free.

    ![Developer plan.](../media/developer-plan.png)

1. On the next page, leave the country as United States and click on **Accept**.

1. Your developer environment will be provisioned and the Power Apps maker portal will be opened. If you are prompted to enter a phone number, use 0123456789 and submit.

1. Navigate to the Power Platform admin center <https://admin.powerplatform.microsoft.com/environments>.

1. You should now see three environments; Contoso (default), Practice, and MOD Administrator's Environment.

    ![Environments.](../media/environments.png)

1. You will use the Practice environment for all customizations in the labs. The MOD Administrator's Environment will act as your test/production environment.
