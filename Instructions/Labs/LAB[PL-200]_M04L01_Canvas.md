---
lab:
    title: 'Lab 4.1: Build a canvas app'
    module: 'Module 4: Create canvas apps in Power Apps'
---

## Practice Lab 4.1 – Build a canvas app

## Scenario

You are a Power Platform functional consultant and have been assigned to the Fabrikam project for the next stage of the project.

You have been assigned to continue work on the Fabrikam Environmental Work Delivery canvas app.

In this practice lab, you will examine the app to see how it works, make some user interface changes, and call a Power Automate cloud flow.

## Exercise 1 – Examine the canvas app

In this exercise, you will learn about the canvas app.

### Task 1.1 - Run the app

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, select **Apps**.

1. Select the **Environmental Environmental Work Delivery** app, click on the ellipses (...), and select **Play**.

1. Sign in with your Office 365 credentials.

1. The app has 4 screens which are navigated using the left-hand navigation bar:

    - Home: Contains three tiles that should the count of projects, milestones, and outcomes.
    - Projects: Create and edit projects
    - Milestones: Set percentage complete on milestones
    - Outcomes: Update the details of outcomes

1. Note that the label for **Outcomes** is incorrect.

1. Select the **Projects** screen (second icon).

1. Note that **Type** is blank for existing projects.

1. Note that the colors for the drop down controls are blue.

1. Click the **+** icon. A new row is added.

1. Enter **Lab Project** for **Project Title**.

1. Select any **Type**.

1. Select **In Progress** in the **Status** drop-down.

1. Select a date in the next month in the **Estimated date** date picker.

1. Click the **Back arrow** icon in the bottom-left of the screen to return to the **Home** screen. The number in the first tile will have incremented.

1. Select the **Milestones** screen (third icon).

1. Enter **50** in **Milestone Percentage Complete**

1. Select the **Outcomes** screen (fourth icon).

1. Enter **To create a better planet** in **Goal**.

1. Select **Completed** in the **Status Reason** drop-down.

1. Click **Save**.

1. Select the **Home** screen (first icon).

1. Close the app.

### Task 1.2 - Review the app in Power Apps Studio

1. Select the **Environmental Environmental Work Delivery** app, click on the ellipses (...), and select **Edit**.

1. If a Welcome to Power App dialog appears, check the **Don't show me this again**, and click **Skip**

1. In the **Tree view**, expand **Card1**.

1. Select **Card1LabelValue** and select **Text** in the **Property Selector**.

1. Review the formula. Note that the filter uses the **My Active Projects** view.

1. In the **Tree view**, select and expand **ProjectScreen**.

1. In the **Tree view**, select and expand **ProjectGallery**.

1. Select **ProjectStatusDropDown** and select **Items** in the **Property Selector**.

1. Review the formula. Note the use of **Choices**.

1. Select **ProjectStatusDropDown** and select **OnChange** in the **Property Selector**.

1. Review the formula. Note the use of **Patch**.

1. Select **ProjectTitleTextInput** and select **OnChange** in the **Property Selector**.

1. Review the formula. Note the use of **Patch**.

1. In the **Tree view**, select and expand **MilestoneScreen**.

1. Select and expand **MilestoneForm**.

1. Select **DataCardValue2** and select **OnChange** in the **Property Selector**.

1. Review the formula. Note the use of **SubmitForm**.

1. In the **Tree view**, select and expand **OutcomeScreen**.

1. Select and expand **OutcomeForm**.

1. Select **Button2** and select **OnSelect** in the **Property Selector**.

1. Review the formula. Note the use of **SubmitForm**.

1. Select **HomeScreen**.

1. In the **Tree view**, select **App**.

1. Select **OnStart** in the **Property Selector**.

1. Review the formulas.

1. Select the ellipses (...) to the right on App and click **Run OnStart**.

1. In the menu, select the **View** tab.

1. Select **Variables**.

1. Review the variables for column widths and heights. The controls on screens use these variables for their X, Y, Height, and Width.

1. Review the variables for column widths and heights. The controls on screens use these variables for color properties.

1. Click the back arrow to return to the canvas.

1. In the **Tree view**, select **TitleLabel**.

1. Select **X** in the **Property Selector** and note the use of a variable.

1. Select **Y** in the **Property Selector** and note the use of variables in the formula.

1. In the menu, select the **View** tab.

1. Select **Collections**.

1. Review the three collections.

1. Click the back arrow to return to the canvas.

1. In the menu, select **File** and then **Close**. If there are unsaved changes click **Don't save**.

## Exercise 2 – Change the visual experience of the canvas app

In this exercise, you will change the layout and colors used in the canvas app.

### Task 2.1 - Layout

In this task, you will perform the following changes to the app:

- change the variables used for column and row layout

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, select **Apps**.

1. Select the **Environmental Environmental Work Delivery** app, click on the ellipses (...), and select **Edit**.

1. In the **Tree view**, select **App**.

1. Select **OnStart** in the **Property Selector**.

1. In the OnStart, change **Set(BarrierSize,20)** to **Set(BarrierSize,10)**.

1. Select the ellipses (...) to the right on App and click **Run OnStart**. Note that the layout adjusts and the tiles become bigger.

1. In the OnStart, change **Set(LeftHandWidth,App.Width/10)** to **Set(LeftHandWidth,App.Width/12)**.

1. Select the ellipses (...) to the right on App and click **Run OnStart**. Note that the layout adjusts.

1. In the menu, select **File** and then **Close**. If there are unsaved changes click **Don't save**.

### Task 2.2 - Colors

In this task, you will perform the following changes to the app:

- change the variables used for colors
- update the colors used for controls in the gallery

1. Select the **Environmental Environmental Work Delivery** app, click on the ellipses (...), and select **Edit**.

1. In the **Tree view**, select **App**.

1. Select **OnStart** in the **Property Selector**.

1. In the OnStart, change **Set(FabrikamBackColor,RGBA(0,0,0,1))** to **Set(FabrikamBackColor,Color.MediumPurple)**.

1. In the OnStart, change **Set(FabrikamFrontColor,RGBA(255,255,255,1))** to **Set(FabrikamFrontColor,Color.Azure)**.

1. Select the ellipses (...) to the right on App and click **Run OnStart**. Note that the colors change.

1. In the menu, select **File** and then **Save**.

1. Click the back arrow to return to the canvas.

1. In the **Tree view**, select and expand **ProjectScreen**.

1. Select and expand **ProjectGallery**.

1. Select **ProjectTitleTextInput** and select **BorderColor** in the **Property Selector**.

1. Replace the RGBA value in the formula bar with **FabrikamColor**.

1. Select **ProjectTypeComboBox** and select **ChevronBackGround** in the **Property Selector**.

1. Replace the RGBA value in the formula bar with **FabrikamColor**.

1. Select **BorderColor** in the **Property Selector**.

1. Replace the RGBA value in the formula bar with **FabrikamColor**.

1. Repeat for **ProjectStatusDropDown**.

1. Select **EstimatedCompletionDate** and select **BorderColor** in the **Property Selector**.

1. Replace the RGBA value in the formula bar with **FabrikamColor**.

1. Select **IconBackground** in the **Property Selector**.

1. Replace the RGBA value in the formula bar with **FabrikamColor**.

1. In the menu, select **File** and then **Save**.

1. Click the back arrow to return to the canvas.

### Task 2.3 - Background

In this task, you will perform the following changes to a screen:

- add an image as a background

1. In the **Tree view**, select **ProjectScreen**.

1. In the Properties pane on the right-hand side, select **+ Add an image file**.

1. Change to the **D:\PL200\Labs** folder and select the **Texture.jpg** file and click on **Open**.

1. The image will be added as the background for the screen.

1. Select **Fit** in the **Image position** drop-down.

1. In the menu, select **File** and then **Save**.

1. Click the back arrow to return to the canvas.

### Task 2.4 - Label

In this task, you will perform the following changes to a label:

- correct the label on the home screen

1. In the **Tree view**, select and expand **HomeScreen**.

1. Select and expand **Card3**.

1. Select **Card3LabelHeader** and select **Text** in the **Property Selector**.

1. In the formula bar, change **"Active Milestones"** to **"Active Outcomes"**

1. In the menu, select **File** and then **Save**.

1. Click the back arrow to return to the canvas.

### Task 2.5 - Button

In this task, you will perform the following changes to the button:

- change the name of the button
- set the button as disabled if there are no rows

1. In the **Tree view**, select and expand **OutcomeScreen**.

1. Select the ellipses (...) next to **Button2** and select **Rename**.

1. Enter **SaveBtn**.

1. With the button still selected, select **DisplayMode** in the **Property Selector**.

1. Enter the following formula:

    ```powerappsfl
    If(CountRows(OutcomeGallery.AllItems) > 0, DisplayMode.Edit, DisplayMode.Disabled)
    ```

1. In the menu, select **File** and then **Save**.

1. Click **Publish**.

1. Click **Publish this version**.

1. In the menu, select **File** and then **Close**.

## Exercise 3 – Logic

In this exercise, you will update formulas and logic in the canvas app.

### Task 3.1 - Outcome Status

In this task, you will perform the following changes to the screen:

- remove status reason and replace with new choice column

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, select **Apps**.

1. Select the **Environmental Environmental Work Delivery** app, click on the ellipses (...), and select **Edit**.

1. In the **Tree view**, select and expand **OutcomeScreen**.

1. Select and expand **OutcomeForm**.

1. In the Properties pane, click **Edit fields**.

1. Click **+ Add field**.

1. Select **Outcome status**.

1. Click **Add**.

1. Select the ellipses (...) next to **Status Reason** and select **Remove**.

1. Select and expand **OutcomeGallery**.

1. Select **Subtitle5_1** and select **Text** in the **Property Selector**.

1. In the formula bar, replace **ThisItem.'Status Reason'** with **ThisItem.'Outcome status'**

### Task 3.2 - Outcome form

In this task, you will perform the following changes to the screen:

- correct the initialization of the form
- use the LookUp formula with a Dataverse table

1. Select and expand **OutcomeGallery**.

1. Select **NextArrow5_1** and select **OnSelect** in the **Property Selector**.

1. In the formula bar, replace **NewForm(OutcomeForm)** with **Select(Parent)**.

1. Select **OutcomeForm** and select **Item** in the **Property Selector**.

1. Enter the following formula:

    ```powerappsfl
    LookUp(Outcomes, Outcome = OutcomeGallery.Selected.Outcome)
    ```

### Task 3.3 - Milestone form

In this task, you will perform the following changes to the screen:

- correct the initialization of the form

1. In the **Tree view**, select and expand **MilestoneScreen**.

1. Select and expand **MilestoneGallery**.

1. Select **NextArrow5** and select **OnSelect** in the **Property Selector**.

1. In the formula bar, replace **NewForm(OutcomeForm)** with **Select(Parent)**.

### Task 3.4 - Project type

In this task, you will perform the following changes to the screen:

- display the project type for existing records

1. In the **Tree view**, select and expand **ProjectScreen**.

1. Select and expand **ProjectGallery**.

1. Select **ProjectTypeComboBox** and select **DefaultSelectedItems** in the **Property Selector**.

1. In the formula bar, enter **ThisItem.'Project Type'**.

1. In the menu, select **File** and then **Save**.

1. Click **Publish**.

1. Click **Publish this version**.

1. In the menu, select **File** and then **Close**.

## Exercise 4 – Power Automate

In this exercise, you will add a Power Automate flow to the canvas app to reset the status of a milestone.

### Task 4.1 - Create flow

In this task, you will perform the following changes to the screen:

- create an instant flow for use in the canvas app
- perform a flow action to reset the status of a milestone

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Click to open the **Fabrikam Environmental** solution.

1. In the **Objects** pane on the left, select **Cloud flows**.

1. In the solution, select **+ New**, then select **Automation**, then select **Cloud flow**, and then **Instant**.

1. Enter **Reset milestone status** for **Flow name**

1. Select **PowerApps** for **Chose how to trigger this flow**.

1. Click **Create**.

    > NOTE: If a Welcome to Power Automate dialog appears, click **Get Started**.

1. Click on **+ New step**.

1. Select the **Microsoft Dataverse** connector.

1. Select the **Update a row** action.

1. Select **Milestones** for **Table name**.

1. Click in the **Row ID** field.

1. In **Dynamic content**, select **Ask in PowerApps**.

1. Expand **Show advanced options**.

1. Enter **0** for **Milestone Percentage Complete**..

1. Select **Planned** for **Milestone status**.

1. Click **Save**

1. Click the back arrow icon in the top-left of the flow editor.

### Task 4.2 - Add flow to canvas app

In this task, you will perform the following changes to the screen:

- add the flow to the canvas app
- run the flow from a button

1. In the **Objects** pane on the left, select **Apps**.

1. Select the **Environmental Environmental Work Delivery** app, click on the ellipses (...), and select **Edit**.

1. In the menu select **Action** and then select **Power Automate**.

1. Click **+ Add flow**.

1. Select **Reset milestone status**.

1. The flow will be added to the app.

1. In the **Tree view**, select and expand **OutcomeScreen**.

1. Select **SaveBtn**.

1. Select the ellipses (...) next to the button in the Tree View and select **Copy**.

1. In the **Tree view**, select and expand **MilestoneScreen**.

1. Select the ellipses (...) next to the button in the Tree View and select **Paste**.

1. Select the ellipses (...) next to **SaveBtn_1** and select **Rename**.

1. Enter **ResetBtn**.

1. Select **Text** in the **Property Selector** and enter **"Reset"**.

1. Select **DisplayMode** in the **Property Selector** and change the formula to use the **"MilestoneGallery"**.

1. Select **OnSelect** in the **Property Selector**.

1. Enter the following formula:

    ```powerappsfl
    Resetmilestonestatus.Run(MilestoneGallery.Selected.Milestone);Refresh(Milestones);
    ```

1. Drag **ResetBtn** under the form.

### Task 4.3 - Publish and share the app

1. In the menu, select **File** and then **Save**.

1. Click **Publish**.

1. Click **Publish this version**.

1. In the menu, select **File**.

1. Click **Share**.

1. Enter **Alex** in **Enter a name, email address, or Everyone**and select **Alex Wilber**

1. Click **Share**.

1. Enter **Patti** in **Enter a name, email address, or Everyone** and select **Patti Fernandez**.

1. Check the **Co-owner** box.

1. Click **Share**.

1. Click **Cancel** to close the sharing pane.

1. Click **Close**.

## Exercise 5 – Solutions

In this exercise, you will export the solution from the Practice environment and import it into the MOD Administrator's environment.

### Task 5.1 – Export managed solution

1. Navigate to the Power Apps Maker portal <https://make.powerapps.com>.

1. Make sure you are in the **Practice** environment.

1. Select **Solutions**.

1. Select the **Fabrikam Environmental** solution but do not open it.

1. Select **Export**.

1. Click **Next**.

1. The version number should have been incremented to **1.1.11.7**.

1. Select **Managed** for **Export As**.

1. Click **Export**.

1. The export will be prepared in the background, when the solution is ready click the **Download** button.

### Task 5.2 – Export unmanaged solution

1. Select the **Fabrikam Environmental** solution.

1. Select **Export**.

1. Click **Next**.

1. Select **Unmanaged** for **Export As**.

1. Click **Export**.

1. The export will be prepared in the background, when the solution is ready click the **Download** button.

### Task 5.3 – Import managed solution

1. Switch environments by using the Environment Selector in the upper right corner of the Maker portal.

1. Select the **MOD Administrator's Environment** environment from the list.

1. Select **Solutions**.

1. Select **Import solution**.

1. Select **Browse**, change to the **Downloads** folder and select **FabrikamEnvironmental_1_1_11_7_managed.zip** and select **Open**.

1. Click **Next**.

1. Click **Next**.

1. Click **Import**. The solution will import in the background.
