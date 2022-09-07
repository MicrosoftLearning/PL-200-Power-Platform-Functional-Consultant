---
lab:
    title: 'Lab 1.3: Import solution'
    module: 'Module 1: Work with Microsoft Dataverse'
---

# Practice Lab 1.3 - Import solution

## Scenario

Fabrikam are an environmental consultancy that advises customers on programs and related projects covering water, air, and soil.

Fabrikam work long-term with their customers to improve the sustainability of natural resources. A Power Platform solution has been built by Contoso for Fabrikam to support the delivery of programs and projects.

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

## Exercise 1 - Import starter solutions

In this exercise, you will import the main solution into the **Practice** environment.

### Task 1.1 – Main solution

1. Navigate to <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment you created.

    ![Select Practice environment in the Power Apps maker portal.](../media/select-environment.png)

1. Select **Solutions**.

1. Click **Import solution**.

    ![Import solution in Maker portal.](../media/import-solution.png)

1. Click **Browse** and navigate to the **D:\PL200\Labs** folder and select the **FabrikamEnvironmental_1_1_11_3.zip** file and click on **Open**.

    ![Solution to import.](../media/solution-to-import.png)

1. Click **Next**.

1. Click **Next**.

    ![Summary of solution to import.](../media/import-solution-summary.png)

1. You need to create connections for the solution.

    ![Connections for import of solution.](../media/connections-for-solution.png)

1. For the Approvals connection click **Select a connection** and then **+ New connection**.

1. A new tab will open in the browser. Click **Create**.

    ![Create connection for approvals.](../media/create-approvals-connection.png)

1. Switch back to the tab where you are importing the solution and click **Refresh**.

1. For the Microsoft Dataverse connection click **Select a connection** and then **+ New connection**.

1. A new tab will open in the browser. Click **Create**. If prompted, sign in with your Microsoft 365 credentials.

    ![Create connection for approvals.](../media/create-dataverse-connection.png)

1. Switch back to the tab where you are importing the solution and click **Refresh**.

1. Both connections should be selected.

    ![Connections for import of solution.](../media/connections-for-solution-added.png)

1. Click **Import**. The solution will import in the background. Wait until the import has completed.

    ![Solution imported.](../media/solution-imported.png)

### Task 1.2 – Power Virtual Agents solution

1. Navigate to <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment you created.

1. Select **Solutions**.

1. Click **Import solution**.

1. Click **Browse** and navigate to the **D:\PL200\Labs** folder and select the **FabrikamChatbot_1_1_1_1.zip** file and click on **Open**.

1. Click **Next**.

1. Click **Next**.

1. Click **Import**. The solution will import in the background.

## Exercise 2 - Import data

In this exercise, you will import data the into the **Practice** environment using the Configuration Migration Tool.

### Task 2.1 - Import data

1. From the lab virtual machine, open **File Explorer**.

1. Navigate to **D:\PL200\Labs\ConfigurationMigration**.

    ![Configuration Migration Tool folder.](../media/configuration-migration-folder.png)

1. Double-click on **DataMigrationUtility.exe**

    ![Configuration Migration Tool.](../media/configuration-migration-step1.png)

1. Select **Import data**.

1. Click **Continue**.

1. Select **Office 365** for **Deployment Type**.

1. Check the **Display list of available organizations** box.

1. Enter your Microsoft 365 tenant credentials.

    ![Configuration Migration Tool Login page.](../media/configuration-migration-step2.png)

1. Click **Login**.

    ![Configuration Migration Tool select environment.](../media/configuration-migration-step3.png)

1. Select the **Practice** environment.

1. Click **Login**.

    ![Configuration Migration Tool select data file.](../media/configuration-migration-step4.png)

1. Click on the ellipses (...) and browse to **D:\PL200\Labs** folder and select **Fabrikam Environment data.zip**

    ![Select a zipped file.](../media/configuration-migration-step5.png)

1. Click **Open**. The data file will be validated.

    ![Configuration Migration Tool validate data file.](../media/configuration-migration-step6.png)

1. Click **Import Data**. The import process will take approximately a minute.

    ![Configuration Migration Tool data imported.](../media/configuration-migration-step7.png)

1. Click **Exit**.

1. Click on **X** to close the Configuration Migration Tool.
