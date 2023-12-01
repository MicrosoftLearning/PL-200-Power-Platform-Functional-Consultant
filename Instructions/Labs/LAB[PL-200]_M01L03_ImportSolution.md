---
lab:
    title: 'Lab 1.3: Import solution'
    module: 'Module 1: Work with Microsoft Dataverse'
---

# Practice Lab 1.3 - Import solution

## Scenario

Fabrikam is an environmental consultancy that advises customers on programs and related projects covering water, air, and soil.

Fabrikam works long-term with its customers to improve the sustainability of natural resources. A Power Platform solution has been built by Contoso for Fabrikam to support the delivery of programs and projects.

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

You need to prepare your development environment by importing solutions and data.

The solutions contain:

- Microsoft Dataverse data model
- Security roles
- Business rules
- Classic workflows
- Model-driven apps
- Charts and dashboards
- Canvas app
- Cloud flows
- Business process flows
- Power Virtual Agents chatbot

In this lab, you will import the developed solutions and data.

## Exercise 1 - Import Fabrikam solutions

In this exercise, you will import the main solution into the **Dev One** environment.


### Task 1.1 – Main solution

1.  Navigate to `https://make.powerapps.com`

1.  Make sure you are in your **Dev One** environment.

1.  Select **Solutions**.

1.  Select **Import solution**.

1.  Select **Browse** and locate the **FabrikamEnvironmental_1_1_11_3.zip** file and select **Open**.

    > **Note:** This file is located in the Documents\PL-200 folder on your machine.

    ![Solution to import.](../media/solution-to-import.png)

1.  Select **Next**.

1.  Select **Next** again.

1.  You need to create connections for the solution.

    ![Connections for import of solution.](../media/connections-for-solution.png)

1.  For the Approvals connection, in the **Select a connection** drop-down, choose **+ New connection**.

1.  A new tab will open in the browser. Select **Create**.

    ![Create connection for approvals.](../media/create-approvals-connection.png)

1.  Switch back to the tab where you are importing the solution and select **Refresh**.

1.  For the Microsoft Dataverse connection, in the **Select a connection** drop-down, choose **+ New connection**.

1.  A new tab will open in the browser. Select **Create**. If prompted, sign in with your Microsoft 365 credentials.

1.  Switch back to the tab where you are importing the solution and select **Refresh**.

1.  Both connections should now be configured.

    ![Connections for import of solution.](../media/connections-for-solution-added.png)

1.  Select **Import**.

    The solution will import in the background. This may take a few minutes.

    ![Solution imported.](../media/solution-imported.png)

    > **Alert:** Wait until the solution has finished importing before continuing to the next step.

1.  When the solution has imported successfully, open the **Fabrikam Environmental** solution.

1.  In the solution, select the **Overview** page.

    ![Overview.](../media/solution-overview.png)

1.  Select **Publish all customizations**. 


### Task 1.2 – Power Virtual Agents solution

1.  Navigate to `https://make.powerapps.com`

1.  Make sure you are in your **Dev One** environment.

1.  Select **Solutions**.

1.  Select **Import solution**.

1.  Select **Browse**, locate the **FabrikamChatbot_1_1_1_1.zip** file and select **Open**.

    >[!NOTE]
    > This file is located in the Documents\PL-200 folder on your machine.

1.  Select **Next**.

1.  Select **Import**. The solution will import in the background.


## Exercise 2 - Import data

In this exercise, you will import data the into the **Dev One** environment using the Configuration Migration Tool.


### Task 2.1 - Import data

1.  In your lab virtual machine, open **File Explorer**.

1.  Navigate to **Documents\PL-200\ConfigurationMigration**.

1.  Double-click on **DataMigrationUtility.exe**

    ![Configuration Migration Tool.](../media/configuration-migration-step1.png)

1.  Choose **Import data**.

1.  Select **Continue**.

1.  Select **Office 365** for **Deployment Type**.

1.  Check the **Display list of available organizations** box.

1.  Enter your Microsoft 365 tenant credentials.

    ![Configuration Migration Tool Login page.](../media/configuration-migration-step2.png)

1.  Select **Login**.

    ![Configuration Migration Tool select environment.](../media/configuration-migration-step3a.png)

1.  Choose your **Dev One** environment.

1.  Select **Login**.

    ![Configuration Migration Tool select data file.](../media/configuration-migration-step4.png)

1.  Select the ellipses (...) and locate and select **Fabrikam Environment data.zip** file.

    > **Note:** This file is located in the Documents\PL-200 folder on your machine.

1.  Select **Open**. The data file will be validated.

1.  Select **Import Data**. The import process will take approximately a minute.

1.  Select **Exit**.

1.  Select the **X** to close the Configuration Migration Tool.


## Exercise 3 - Sign up for Power Pages

In this exercise, you will provision a Power Pages site. This can take a while, so you will follow these steps to start the provisioning process in the background while you progress through your labs. You will configure the site in a future lab.

### Task 3.1 - Create a Power Pages site

1.  Navigate to the Power Pages portal `https://make.powerpages.microsoft.com/` and sign in with your Microsoft 365 credentials if prompted.

1.  Use the Environment selector to switch to your **Dev One** environment.

1.  Select **Get started**.

1.  If you are asked about your experience creating websites, select **Skip**.

1.  Choose the default design template, **Starter layout 1**, and select **Choose this template**.

    ![Select Starter layout template..](../media/power-pages-starter.png)

1.  Enter `Fabrikam Milestones` for **Give your site a name**.

1.  Use the autogenerated web address.

1.  Select **Done**.

    > The portal site will deploy. It can take around an hour for your site to fully deploy.

    ![Power Pages portal deployed.](../media/portal-deployed.png)

