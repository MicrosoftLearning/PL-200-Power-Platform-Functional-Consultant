---
lab:
    title: 'Lab 3.6: Build a canvas app'
    module: 'Module 3: Build Power Apps'
---

Module 3: Build Power Apps
======================================

Lab 3.6: Practice Lab – Build a canvas app

Scenario
--------

You are a functional consultant for your organization Contoso. You are assigned
to work on a project for your client Fabrikam. You have been assigned to
continue work on the Fabrikam Knowledge canvas app that we started creating in
the prior module. In this practice you will be starting to build out the screens
and connecting to the data in the Common Data Service.

Exercise 1 – Setup the Data Sources from the Common Data Service
--------------------------------------------

In this exercise, you will be associating the data sources needed with the
application.

### Task 1 – Setup data sources 

1.  Navigate to <https://make.powerapps.com>

2.  Make sure you are in your **Practice** environment. You can find
    the environment selector in the upper right corner.

3.  Select **Solutions**.

4.  Select **Common Data Services Default Solution.**

5.  Select the **Fabrikam Assessment** Canvas application.

6.  Click on the **Edit** button located on the command bar.

7.  The app designer should open. There are 5 tabs on top of the app designer:
    File, Home, Insert, View, and Action. Select the **View** tab.

8.  Click on the **Data Sources** button.

11. Click **+Add data.** You will be presented with a list of entities. Expand to see all entites by selecting **See all entities.** Select the **Feedback**,
    **Knowledge Assessments**, **Knowledge Questions**, **Knowledge Test
    Results**, and **Users** entities. You can use the Search feature to make
    it quicker to find the entities.

13. The data from the entities you selected will now be available for your
    application. Close the **Data sources** pane.

14. Click on the **File** tab and click **Save**. Saving your work periodically
    is always a good idea.

15. To go back to the app designer, click on the **Back** button located on the
    top left of the page.

16. Do not close the App designer.

Exercise 3 – Setup screens for Knowledge Assessment and Taking Assessment
-------------------------------------------------------------------------

In this exercise, you will be adding a list of Knowledge Assessments to
the main screen, and then adding navigation to allow employees to
take the assessment.

### Task 1 – Setup Knowledge Assessment screen 

1.  Click on the ellipses of **mainScreen** and select **Duplicate Screen**.

2.  Click on the ellipses button of the new screen and click **Rename**.

3.  Rename the Screen **takeAssessmentScreen.** *Note:* It is always good to give
    components a good name so when you reference them later there will not be any
    confusion.

4.  Select the **mainScreen**.

5.  Make sure the **Insert** tab is selected. Click **Gallery** and select
    **Horizontal**.

6.  A **Data Source** pop-out will appear next to the Gallery pane. Select **Knowledge Assessments** for **Data Source**.

7.  In the Properties tab, navigate to **Fields** and click **Edit**. Change the Subtitle to **Days Remaining** by selecting the field from the dropdown.

9.  In the left-hand control tree, locate the gallery, right click and select
    rename. Rename the Gallery **knowledgeAssessmentList**.

10. Resize the **Gallery** so it takes all the space below the header by
    clicking on the gallery and dragging the image area to fit the space.

11. Select the first item of the **KnowledgeAssessmentList** gallery. Make sure
    you are selecting the item in the designer.

12. Click on the **subtitle** control by clicking **Subtitle1** from the control tree on the left.

13. Select the **Text** property in the designer function list (fx) and paste
    the snippet below. This snippet will add the text “ Days remaining” to the
    end of the number. If you have issues with the formula, try typing it out
    manually instead of copying and pasting.

        ThisItem.'Days Remaining' & " Days remaining"

1.  Depending on your test data you may have some items that currently just say
    Days remaining and some that have a number (e.g., "6 Days remaining").

2.  With **Subtitle** on the **knowledgeAssessmentList** still selected, go to
    the **Insert** tab and click **Icons**.

3.  Select the **+** icon.

4.  Move the icon to below the **Days Remaining** subtitle by dragging it with
    your mouse.

5.  Select the icon. Navigate to the **Advanced** tab of the Properties pane. Select the **OnSelect** property and set it the snippet
    below. This snippet will let the user navigate to the Take Assessments
    screen when they click on the icon. If you have issues with the formula, try
    typing it out manually instead of copying and pasting.

        Navigate(takeAssessmentScreen, ScreenTransition.None)

**Note:** If the designer shows a red line under your function it could be due to
the name of the screen being different. If that happens adjust the name used to
be the same as your second screen.

### Task 2 – Setup Taking Assessment screen 

In this task we will be setting up the display of the questions, in subsequent
practices you will be scoring and storing the results.

1.  Select the **takeAssessmentScreen**.

2.  With the **takeAssessmentScreen** still selected, go to the **Insert** tab,
    click **Gallery,** and select **Blank Horizontal**.

3.  The **Data Source** pop-out will come to view. Close it.

4.  Rename the Gallery **assessmentQuestionList**.

5.  Select the **assessmentQuestionList** gallery.

6.  Select the **Items** property in the **Advanced** section of the Properties pane. Set it to the snippet below. This snippet
    will filter the Knowledge Questions for the selected Knowledge Assessment. If
    you have issues with the formula, try typing it out manually instead of
    copying and pasting.

        Filter('Knowledge Questions', 'Knowledge Assessment'.'Knowledge Assessment' = knowledgeAssessmentList.Selected.'Knowledge Assessment' )

7. Resize the **assessmentQuestionList** until takes all the space below the
    header.

8.  Select the **assessmentQuestionList.**

9.  Click **Add an item from the insert pane** of the **assessmentQuestionList**
    gallery.

10.  From the **Insert** tab, click **Text label**.

11. Select the label you just added and set the **Text** property to
    **Question**.

        ThisItem.Question

12.  If you don’t see any questions display in your app preview, click on
    mainScreen and, while holding the alt key, use the mouse to click on the next
    icon on one of the assessment records. You should then navigate to the
    takeAssessment screen. If you still don’t see questions show up, check in the
    model-driven app that you have created some test data.

13. With the label still selected, set the **X** property to **0**.

14. Select the **Y** property to **0**.

15. Select **Width** property and set it to **300**.

16. Select the **Height** property to **100**.

17. From the **Insert** tab, click **Input** and **Check box**.

18. Move the new checkbox below the Question label.

19. Select the **Text** property of the new checkbox and from the **fx** equation bar at the top, set it to **Answer 1**.

        ThisItem.'Answer 1'

20. By using the ThisItem. syntax you are referencing a data field from the
    current record.

21. Set the **Width** property to **300** or drag it to expand the width of the
    control.

22. With the check box control selected, navigate to the property panel on the right side
    of the screen. Select the Advanced tab and set the **OnCheck** property to
    the snippet below. This snippet will add the points of the check answer to a
    Collection name UserAnswers.

        Collect(UserAnswers, {Question:GUID(ThisItem.'Knowledge Question'), Points:ThisItem.'Answer 1 Points'})

23. Set the **OnUnCheck** property to the snippet below. This snippet will
    remove the points of the uncheck answer form the Collection when the user
    unchecks the answer.

        Remove(UserAnswers, LookUp(UserAnswers, Question = GUID(ThisItem.'Knowledge Question')))

24. Select **takeAssessmentScreen**.

25. Select the **OnVisible** property and paste the snippet below. This will
    clear the prior answers each time they select another question.

        Clear(UserAnswers)

26. In the left control tree, select the checkBox and rename the checkbox
    **answer1Selected**.

27. With **answer1Selected** still selected, go to the **Insert** tab and select **Check box** again. We are going to add the additional answer checkboxes and do a similar setup for each.

28. Move the new checkbox below the **answer1Selected** checkbox.

29. Select the **Text** property of the new checkbox and set it to **Answer 2**.

        ThisItem.'Answer 2'

30. Set the **Width** property to **300**.

31. Set the **OnCheck** property to the snippet below. This snippet will add the
    points of the check answer to the Collection.
    
        Collect(UserAnswers, {Question:GUID(ThisItem.'Knowledge Question'), Points:ThisItem.'Answer 2 Points'})

32. Set the **OnUnCheck** property to the snippet below. This snippet will
    remove the points of the uncheck answer form the Collection.

        Remove(UserAnswers, LookUp(UserAnswers, Question = GUID(ThisItem.'Knowledge Question')))

33.  Rename the checkbox **answer2Selected**.

34. With **answer2Selected** still selected, go to the **Insert** tab and select **Check box**.

35. Move the new checkbox below the **answer2Selected** checkbox.

36. Select the **Text** property of the new checkbox and set it to **Answer 3**.

            ThisItem.'Answer 3'

37.  Set the **Width** property to **300**.

38.  Set the **OnCheck** property to the snippet below. This snippet will add the
    points of the check answer to the Collection.
    
        Collect(UserAnswers, {Question:GUID(ThisItem.'Knowledge Question'), Points:ThisItem.'Answer 3 Points'})
    
39.  Set the **OnUnCheck** property to the snippet below. This snippet will
    remove the points of the uncheck answer form the Collection.
    
        Remove(UserAnswers, LookUp(UserAnswers, Question = GUID(ThisItem.'Knowledge Question')))

40.  Rename the checkbox **answer3Selected**.

41.  With **answer3Selected** still selected, go to the **Insert** tab and select **Check box**.

42.  Move the new check box below the **answer3Selected** checkbox.

43.  Select the **Text** property of the new checkbox and set it to **Answer 4**.

            ThisItem.'Answer 4'

44.  Set the **Width** property to **300**.

45.  Set the **OnCheck** property to the snippet below. This snippet will add the
    points of the check answer to the Collection.
    
            Collect(UserAnswers, {Question:GUID(ThisItem.'Knowledge Question'), Points:ThisItem.'Answer 4 Points'})

46.  Set the **OnUnCheck** property to the snippet below. This snippet will
    remove the points of the uncheck answer form the Collection.

            Remove(UserAnswers, LookUp(UserAnswers, Question = GUID(ThisItem.'Knowledge Question')))
        
47.  Rename the checkbox **answer4Selected**.

48.  Select **testAssessmentScreen**.

49.  Go to the **Insert** tab and click **Button**.

50.  Drag and place the button below the **assessmentQuestionList**.

51.  Select the button and set the **Text** property to **Score Assessment**.

52.  Make the button larger until the text doesn’t wrap.

53. Click **File** and **Save**.
