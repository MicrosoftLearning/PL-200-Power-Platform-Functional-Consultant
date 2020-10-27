---
lab:
    title: 'Lab 3.7: Work with data and services'
    module: 'Module 3: Build Power Apps'
---

Module 3: Build Power Apps
======================================

Lab 3.7: Practice Lab – Work with data and services

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You have been assigned to
continue work on the Fabrikam Knowledge canvas app that we started creating in
the prior module. In this practice you will be working with the CDS connector to
filter the list, save the results of the assessment in CDS and add support for
submitting feedback using the EditForm.

Exercise 1 – Filtering Data
---------------------------

### Task 1 – Filter Knowledge Assessments 

In this task, you will filter the Knowledge Assessment to show only Active
records that have Start Date in the past and End Date is in the future.

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Select **Common Data Service Default Solution**.

5.  Select the **Fabrikam Assessment** Canvas application.

6.  Click on the **Edit** button located on the command bar.

7.  Wait for the app designer to load.

8.  Select the **knowledgeAssessmentList** gallery and click the **Advanced** tab in the Properties pane.

9.  Set the **Items** Property to the snippet below. This snippet will filter
    the Knowledge Assessment records and the list will show only the active
    records with Start Date in the past and End Date in the future. *Note:* if you
    type this instead of pasting it, you will see how the editor helps you build
    expressions.

            Filter('Knowledge Assessments', (Status = 'Status (Knowledge Assessments)'.Active && 'Start Date' <= Today() && 'End Date' >= Today()))

10.  Click **File** and **Save** your changes.

11.  Click on the **Back** button.

12.  Do not close the app designer.

### Task 2 – Get Current User 

In this task, you will get the current User and save it in a global variable. We
are doing this during OnStart so that it only happens once, and the data is
available for use elsewhere in the app. We will be using this to retrieve a
filtered list of test results submitted by this user.

1.  In the tree view, select the **App.**

2.  Select the **OnStart** property and set it to snippet below. This snippet
    will create a global variable **UserPrimaryEmail** that will hold the
    current user’s email.

            Set(UserPrimaryEmail, User().Email)

3.  Add the snippet below to the **OnStart** property. This snippet will first
    terminate the first function with semicolon, get the current User and save
    it in a global variable name **CurrentUser**.

            ;Set(CurrentUser, LookUp(Users, 'Primary Email' = UserPrimaryEmail))

4.  Add the following function to work around an existing bug that does not
    properly load the metadata for related properties. In the future this
    workaround will not be required.

            ;Set(FirstKABugWorkaround,First('Knowledge Test Results').'Knowledge Assessment')

7.  Click **File** and **Save**.

8.  Close the tab.

10.  Select **Apps** and select the edit button to open the **Fabrikam Assessment** app in the app designer again.

### Task 3 – Save Total Points 

In this task, you will create a Patch that will create a Knowledge Test Result
record. Using the Patch function allows us to on demand create a record with
just specific properties being passed. In this case, we will be using the sum
function to get a total of our points that are stored in our in-memory
collection based on the answers the user provided.

1.  Expand the **takeAssessmentScreen**.

2.  Locate the button and rename it **scoreButton**.

3.  While you still have the **scoreButton** selected, select the **Advanced** tab of the Properties pane. Set the **OnSelect**
    property to snippet below. This snippet will create a new Knowledge Test
    Result record. **Note:** For long formulas, you can expand the **fx** bar to format your formula in a larger view.
    
            Patch('Knowledge Test Results',Defaults('Knowledge Test Results'),{'Knowledge Assessment':knowledgeAssessmentList.Selected,Name:knowledgeAssessmentList.Selected.Title, 'Total Points': Sum(UserAnswers.Points,Points)});

### Task 4 – Add Feedback Screen 

In this task, you will add a new screen to the applications. This screen will
let the user submit feedback. This tasks demonstrates how to use the EditForm to
create a new record.

1.  Click on the ellipses button of the **takeAssessmentScreen** and click
    **Duplicate Screen**. We are creating a duplicate screen because we want all
    our screens to look the same and we don’t want to recreate the header every
    time we add a new screen.

2.  Rename the duplicate screen **addFeedbackScreen**.

3.  Rename the Button on the **addFeedbackScreen** to **submitFeedbackButton**.

4.  Change the **Text** property of the **submitFeebackButton** to **"Submit Feedback"**.

5.  Click on the ellipses button of the **assessmentQuestionList** inside the
    **addFeedbackScreen** and click **Delete**.

6.  Select the **addFeedbackScreen**.

7.  From the **Insert** tab, click **Forms** and then click **Edit.**

8.  In the Property panel on the right, select **Feedback** for **Data Source**. (If you are already on the Advanced tab, you will need to switch to the Properties tab.) 

9.  Go to the tree view and rename the form **feedbackForm**.

10. Resize and reposition the **feedbackForm** to your liking.

11. From the tree view, expand the **feedbackForm**.

12. Select the **Title** field. In the **Advanced** pane, select **unlock.** Expand **More options** in the **Data** section.

13. Select the **Default** property and set it to the **Title** of the selected
    **Knowledge assessment**.

            knowledgeAssessmentList.Selected.Title

14.  With the **Title** data card still selected, select the **Properties** tab. Locate the **DisplayMode** property and set it to **View**.

            DisplayMode.View

16.  Rename the **Comments_DataCard** to **userComments**. (You will need to click **Unlock** first.)

17.  Expand the **userComments** data card and rename the **DataCardValue** to
    **userCommentsText**.

18.  Select the **submitFeedbackButton**.

19.  Replace the **OnSelect** property value with the snippet below. This snippet
    will submit the form, reset the form, and navigate back to the previous
    page.

            SubmitForm(feedbackForm);ResetForm(feedbackForm);Back(ScreenTransition.None)

20.  With the **submitFeedbackButton** still selected, return to the **Properties** tab and select the **DisplayMode**
    property.

21.  Replace the **DisplayMode** property value with snippet below. This snippet
    will enable the button if the comments filed has value and disable it if the
    comments field is blank.

            If(IsBlank(userCommentsText), DisplayMode.Disabled, DisplayMode.Edit)

22.  Select the **takeAssessmentScreen**.

23.  Go to the **Insert** tab, navigate to **Icons** in the top menu, and select **Left.**

24.  Place the icon on the left side of the header.

25.  Set the **Color** property of the icon to **White**.

26.  Set the **OnSelect** property of the icon to the snippet below. This snippet
    will navigate back to the previous page.
    
            Back(ScreenTransition.None)

27.  Select the **takeAssessmentScreen**.

28.  Click **Insert**, navigate to **Icons** in the top menu, and select the **Emoji - Smile** icon.

29.  Place the icon in the right side of the header and next to **username.**
    
30.  Set the **Color** property of the icon to **White**.

31.  Set the **OnSelect** property of the **Information** icon to the snippet
    below.

            NewForm(feedbackForm);Navigate(addFeedbackScreen, ScreenTransition.None)
    
 32. Click **File** and **Save** to save your application.
