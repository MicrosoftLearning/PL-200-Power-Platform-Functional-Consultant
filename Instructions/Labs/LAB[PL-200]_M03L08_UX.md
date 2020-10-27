---
lab:
    title: 'Lab 3.8: User experience'
    module: 'Module 3: Build Power Apps'
---

Module 4: Build Power Apps
======================================

Lab 3.8: Practice Lab – User experience

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You have been assigned to
continue work on the Fabrikam Knowledge canvas app that we started creating in
the prior module. In this practice you will be providing the user with visual
feedback of which questions they got right and wrong. You will also be enabling
the score button only if the user has provided some answers.

Exercise 1 – Customizing the User Experience
--------------------------------------------

### Task 1 – Show the Assessment Result 

In this task, you will show the assessment result to the user. In this task you
will use a local variable ShowResults to indicate if the results should show. It
will be updated upon the user clicking the score button. Each item will then use
an expression to highlight if the answer is right or wrong, only when
ShowResults is true.

1.  Navigate to <https://make.powerapps.com>.

2.  Make sure you are in your **Practice** environment.

3.  Select **Solutions**.

4.  Select **Common Data Services Default Solution.**

5.  Select the **Fabrikam Assessment** Canvas application.

6.  Click on the **Edit** button located on the command bar.

7.  Wait for the app designer to load.

8.  Select the **takeAssessmentScreen.**

9.  Select the **OnVisible** property of the **takeAssessmentScreen** and
    replace the value with the snippet below. This snippet will re-add the Clear
    function and add a new function that will initialize a variable
    **ShowResults** and set it to **false**.

            Clear(UserAnswers);UpdateContext({ShowResults:false})

1.  Select the **OnSelect** property of the **scoreButton**.

2.  Add the snippet below to the content you currently have. This snippet will
    add a function that will set the **ShowResults** value to **true**.

            ;UpdateContext({ShowResults:true})

1.  Select **Answer4Selected** checkbox of the **assessmentQuestionList**.

2.  Select the **Fill** property of **Answer4Selected** and set it to the
    snippet below. This snippet will:

    - Set the Fill Color to White if ShowResults is false.

    - Set the Fill Color to Red id ShowResults is true, the checkbox is check, and
    the Points value is less than 0.

    - Set the Fill Color to Green id ShowResults is true, the checkbox is check,
    and the Points value is more than 0.

            If(ShowResults, If(answer4Selected.Value = true && ThisItem.'Answer 4 Points' > 0, Green, If(answer4Selected.Value = false, White, Red)), White)

1.  Select the **Fill** property of **Answer3Selected** checkbox and set to the
    snippet below.

        If(ShowResults, If(answer3Selected.Value = true && ThisItem.'Answer 3 Points' > 0, Green, If(answer3Selected.Value = false, White, Red)), White)

1.  Select the **Fill** property of **Answer2Selected** checkbox and set to the
    snippet below.

        If(ShowResults, If(answer2Selected.Value = true && ThisItem.'Answer 2 Points' > 0, Green, If(answer2Selected.Value = false, White, Red)), White)

1.  Select the **Fill** property of **Answer1Selected** checkbox and set to the
    snippet below.

        If(ShowResults, If(answer1Selected.Value = true && ThisItem.'Answer 1 Points' >  0, Green, If(answer1Selected.Value = false, White, Red)), White)

### Task 2 – Disable/Enable Button 

In this task, you will disable the score button if there are no answers selected
and enable it when there is at least one answer selected.

1.  Select the **scoreButton**.

2.  With the **scoreButton** selected, set the **DisplayMode** property to the
    snippet below. This snippet will disable the button if there are no answers
    selected and enable it if there is at least one answer selected.

        If(CountRows(UserAnswers) > 0, DisplayMode.Edit, DisplayMode.Disabled)

### Task 3 - Create the Results Screen

In this task, you will copy the Main Screen and rename it Results Screen.

1.  Click on the ellipses button of mainScreen and select Duplicate Screen.

2.  Click on the ellipses button of the new screen and click Rename.

3.  Rename the new screen **resultsScreen**.

4.  Select the **knowledgeAssessmentList** under the **resultsScreen**. Click on the ellipses button and click **Delete**.

5.  Make sure the **Insert** tab is selected. Click **Gallery** and select **Horizontal**.

6.  The **Data source** pop-out will come to view.  
    Select **Knowledge Test Results** for data source.
    
7.  Rename the gallery to **UserResultList**.

8.  Delete the image in **UserResultList**. You will recieve an error with a red X - delete the formula in the **fx** bar to remove the error.

9.  Select the **UserResultsList** gallery.

10. In the **Advanced** tab, select the **Items** property and set it to the snippet below.

            Filter('Knowledge Test Results',  Owner = CurrentUser)
    
11. Return to the **Properties** tab and select **Edit** in the Fields section. Set the Title element of UserResultList to this snippet.

            ThisItem.createdon
    
12. Set the Subtitle.Text element of UserResultList to this snippet. (crxxx refers to your unique prefix.)

            ThisItem.crxxx_totalpoints
    
13. Select the **resultsScreen** and navigate to the **Insert** tab. Add the **Left** icon to the upper left corner. Change the color to **white.**

14. Set the Left icon OnSelect to this snippet.

            Back(ScreenTransition.None)

### Task 4 – Add Button for Results Screen 

In this task, you will add a button to the Main Screen. This button will
navigate to the Results page.

1.  Select the **mainScreen**.

2.  Go to the **Insert** tab and click **Icons**.

3.  Select the **… More** Icon.

4.  Place the icon in the left side of the header.

5.  Change the **color** of the icon to **White**.

6.  Select the **OnSelect** property of the icon and provide the function below.
    This function will run when the icon is clicked and navigate to the Results
    Screen.

            Refresh(Users);Navigate(resultsScreen, ScreenTransition.None)

### Task 5 – Test Your Work 

In this task, you will run and test the applications.

1.  Select the **mainScreen**.

2.  Click **Play**.

3.  Click on the **… More** icon.

4.  You should navigate to the **Results Screen**. This page might be empty
    because you didn’t take any tests yet.

5.  Click on the **Back** button.

6.  You will be taken back to the **Main Screen.**

7.  Click on the take test icon of one of the **Assessments**.

8.  The questions should load, and the **Score Assessment** button should be
    **Disabled**. This is because you must select at least one answer before you
    can submit your answers. 
    
    *Note:* If you do not see any data, you need to use
    the model-driven app to create some assessment questions with answers. 

9.  Select some answers.

10. The **Score Assessment** button will now be enabled.

11. Click on the **Score Assessment** button.

12. The answers that have more than 0 points will become **Green** and the answers
    that have 0 zero points will become **Red**.

13. Click on the **Information** button.

14. You will be taken to the **Feedback Screen**.

15. The Submit Feedback button will be **Disabled**. This is because you must
    provide a comment before you can submit the feedback.

16. Provide a **Comment**.

17. The Submit Feedback will become **Enabled**.

18. Click **Submit Feedback**.

19. Your **Feedback** will be submitted, and you will navigate back to the
    **Assessment Screen**.

20. Click on the **Back** button.

21. You will go back to the **Main Screen**.

22. Click on the **… More** icon.

23. You will be taken to the **Results Screen**. You should see at least one
    result in the **Results** list.

24. Click on the **Back** button.

25. You will go back to the **Assessments Screen**.

26. Close the **Preview**.

27. Click **File** and **Save**.

28. Click **Close** to close the app designer.

### Task 6 – Other things you can try

Now that you have built a basic canvas app that interacts with the Common Data
Service, here are some things you can try on your own to make the app better.
**The following steps are optional and are more advanced to challenge your
learning. These are not expected or required to all be completed.**

1.  Try different ways of presenting the Test Results – for example you could
    try the Data Grid control.

2.  Add an image control to the mainScreen and show the user’s profile image
    using User().Image. Note: You will need to setup a profile image for the
    user you are using for it to show more than the default image.

3.  You can add an image to the Knowledge Assessment entity and then change the
    mainScreen list of Assessments to show the image. Note: after you add the
    entity image in CDS, you will need to upload an image via the model-driven
    app. You will also need to go to View-Data Sources and refresh the Knowledge
    Assessment entity metadata.

4.  Think about how else you might improve the app using the knowledge you’ve
    gained during the practices. You can always Save As your app, and try any
    changes you want without impacting your completed work!
