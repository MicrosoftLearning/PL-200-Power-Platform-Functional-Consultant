---
lab:
    title: 'Lab 06: Create Power Virtual Agents in Teams'
    module: 'Module 06: AI builder and Power Virtual Agents'
---

> [!NOTE]
> Effective November 2020:
> - Common Data Service has been renamed to Microsoft Dataverse. [Learn more](https://aka.ms/PAuAppBlog)
> - Some terminology in Microsoft Dataverse has been updated. For example, *entity* is now *table* and *field* is now *column*. [Learn more](https://go.microsoft.com/fwlink/?linkid=2147247)
>

# Lab 06: Power Virtual Agents in Teams

## Scenario

 Your organization is trying to recycle E-waste and decided to schedule a quarterly E-waste pickup service. Facilities department created an Excel file in OneDrive for business and want employees to be able to add their name and information about the item they want to get picked up to the list.
 In this exercise, you will create a Power Virtual Agents bot that will get the information from users and add them to the pickup list.

## Requirement

 1. Bot should be able to get information about the item.
 2. Bot should be able to get information about the user.
 3. Bot should be able to add the new item to the list.

## What you will learn

 1.	How to create a Power Virtual Agents in Teams.
 2. How to publish Power Virtual Agents.
 3. How to use Power Virtual Agents flow template.

## Detailed steps

### Exercise 1 – Create PVA bot

#### Task 1 - Add Excel file to OneDrive
In this task, you will add an Excel file to your OneDrive for business and add new rows to this file using PVA and Power Automate.

1. Navigate to [Microsoft Teams](https://teams.microsoft.com)
2. Click on the **App launcher** and select **OneDrive**.

![A Screenshot with an arrow pointing to the app launcher icon and a box around the Onedrive option in the app launcher](06/media/ex1-t1-image1.png)

3. Click **Upload** and select **Files**.

![A screenshot with a box around the files option in the dropdown from the upload button](06/media/ex1-t1-image2.png)

4. Browse to the lab resources folder, select the **Recycle.xlsx** file, and click Open.
5. Click to open the file you just added.


![A Screenshot with an arrow pointing to the recycle.xlsx file](06/media/ex1-t1-image3.png)

6. The should have just headers. Close the file and OneDrive browser tabs.

![A screenshot of an excel spreadsheet with four headers in the first row: name, email, location, and description](06/media/ex1-t1-image4.png)



#### Task 2 - Install PVA

In this task, you will install PVA.

1. Navigate to [Microsoft Teams](https://teams.microsoft.com)
2. Click on the **...More added apps**, search for **power virtual**, and select **Power Virtual Agents**.

![A Screenshot with an arrow pointing to the ellipsis icon on the left side of the window and a box around the power virtual agents option](06/media/ex1-t2-image1.png)

3. Click **Add**.
4. Right click on the **Power Virtual Agents** and select **Pin**. (If the **Power Virtual Agents** menu is not coming on the left menu, then click again on **...More added aaps** and pin it from the recents.)

![A Screenshot with an arrow pointing to the power virtual agents icon and a box around the pin button](06/media/ex1-t2-image2.png)

5. Do not navigate away from this page.

#### Task 3 - Create bot

In this task, you will create the bot.

1. Select **Power Virtual Agents** and click **Start now**.

![A Screenshot with an arrow pointing to the start now button](06/media/ex1-t3-image1.png)

2. Select the **Green** team you created and click **Continue**.
3. Enter **Green Bot** for name and click **Create**.
4. Wait for the bot to be created.
5. Click **Explore bot**.
6. Type **Hello** in the text box located in the bottom left and click **Send**. If you don't see the textbox click the **Test your bot** button located in the bottom left.
7. The bot should respond with the default greeting. You will edit this greeting in the next task.

![A screenshot with a box around the bot's default greeting reading: "Hi! I'm a virtual agent. I can help with account questions, orders, store information and more. If you'd like to speak to a human agent, let me know at any time. So what can I help you with today?"](06/media/ex1-t3-image2.png)

8. You can show/hide the bot by clicking on the bot icon located in the bottom left. This will give the authoring canvas more room.

![A Screenshot with an arrow pointing to the hide bot button](06/media/ex1-t3-image3.png)

9. Do not navigate away from this page.


#### Task 4 - Edit greeting
In this task, you will edit the default greeting.

1. Select **Topics** and click to open the **Greeting** topic

![A Screenshot with an arrow pointing to the greeting topic in the topics menu](06/media/ex1-t4-image1.png)

2. Take a look and see the trigger phrases for this topic.
3. Click on the **Go to authoring canvas** button.

![A Screenshot with an arrow pointing to the go to authoring canvas button](06/media/ex1-t4-image2.png)

4. Go to the first **Message** and replace the message with the text below.

```Hi! I'm a virtual agent. I can help you recycle e-waste by posting items to the Upcycle application or add them to the quarterly e-waste pickup list.```

![A screenshot of the greeting message replaced with the aforementioned text](06/media/ex1-t4-image3.png)

5. Click **Save**.
6. Click **Test your bot** to show the bot.
7. Type **Hey** and click **Send**.
8. The bot should now use your updated message.

![A screenshot of the updated bot greeting message](06/media/ex1-t4-image4.png)

9. Hide the bot.
10. Do not navigate away from this page.

#### Task 5 - Create topic
In this task, you will create a new topic for the bot so it can respond to inquiries.

1. Select **Topics** and click **+ New topic**.

![A Screenshot with an arrow pointing to the new topic button](06/media/ex1-t5-image1.png)

2. Enter **Recycle Reuse Reduce** for Name.
3. Enter **Recycle** for trigger phrase and click **Add**.

![A Screenshot with an arrow pointing to the add button](06/media/ex1-t5-image2.png)

4. Type **E-waste** as another trigger phrase and click **Add**.
5. Type **Green** as another trigger phrase and click **Add**.
6. Type **Add me** as another trigger phrase and click **Add**.
7. Type **Upcycle** as another trigger phrase and click **Add**.
8. Type **Reuse** as another trigger phrase and click **Add**.
9. Type **Reduce** as another trigger phrase and click **Add**.
10. Type **Recycle list** as another trigger phrase and click **Add**.
11. You should now have at least 8 trigger phrases. Click **Save topic**.

![A Screenshot with an arrow pointing to the test bot button](06/media/ex1-t5-image3.png)

9. Click on the **Go to authoring canvas button**.
10. Type **I can help you with that.** for message and click on the **+ Add node** button.

![A Screenshot with an arrow pointing to the plus icon to add a node](06/media/ex1-t5-image4.png)

11. Select **Ask a question**.

![A Screenshot with an arrow pointing to the ask a question button](06/media/ex1-t5-image5.png)

12. Enter the text below in the Ask a question textbox.

```I can add your item to the Upcycle application or to the e-waste pick-up list. What would you like me to do?```

13.  Make sure you have **Multiple choice options** selected for Identity, type **Add to the Upcycle app** for first option and click **+ New option**.

![A Screenshot with an arrow pointing to the new option button](06/media/ex1-t5-image6.png)

14. Type **Add to the pick-up list** as another option.
15. You should now have two conditions. Click on the **...** Options button of one of the conditions and click **Delete**.

![A Screenshot with an arrow pointing to the three dots icon and a red box around the delete button](06/media/ex1-t5-image7.png)

16. Delete the other condition. We are deleting the conditions because adding item to the pick-up list and adding item to the Upcycle application required similar information.

17. Change the second input value in Condition menu to **has value**.

    ![has value - screenshot](06/media/image1.png)

18. Click on the edit variable icon.

![A Screenshot with an arrow pointing to the pencil icon in the box under the text save response as](06/media/ex1-t5-image8.png)

18. Change the variable name to **UserOption** and close the variable properties pane.

![A Screenshot with an arrow pointing to the cross icon in the top right corner of the pane](06/media/ex1-t5-image9.png)

19. Click **+ Add node** and select **Ask a question**
20. Enter the text below in the Ask a question textbox.

```What is the name of the item?```

21.   Click on the **Identify** dropdown and select **User's entire response**.

![A Screenshot with an arrow pointing to the drop down icon in the identify field and a box around the user's entire response button](06/media/ex1-t5-image10.png)

22.  Click on the **Edit variable** icon.

![A Screenshot with an arrow pointing to the pencil icon in the box under the text save response as](06/media/ex1-t5-image11.png)

23. Change the variable Name to **ItemName** and close the variable properties pane.
24. Click **+ Add node** after the question.
25. Select **Ask a question** again.
26. Enter the text below in the Ask a question textbox.

```What is the description of this item?```

27. Click on the **Identify** dropdown and select **User's entire response** again.
28. Click on the **Edit variable** icon again.
29. Change the variable Name to **Description** and close the variable properties pane.
30. Click **+ Add node** after the question.
31. Select **Ask a question** one more time.
32. Enter the text below in the Ask a question textbox.

```What is the location of this item?```

33. Click on the **Identify** dropdown and select **User's entire response** again.
34. Click on the **Edit variable** icon again.
35. Change the variable Name to **Location** and close the variable properties pane.
36. The three questions should now look like the image below. Click **Save**

![A Screenshot with an arrow pointing to the save button in the top right corner](06/media/ex1-t5-image12.png)

37. Do not navigate away from this page.


#### Task 6 - Create flow

In this task, you will create a flow that will add the item to the recycle list or to the Upcycle application depending on the user option.

1.  Go to the last question, click **+ Add node** and select **Call an action**.

![A screenshot of a box around the call an action button](06/media/ex1-t6-image1.png)

2.  Click **Create a flow**.
3.  Select **Power Virtual Agents Flow Template**

![A screenshot of a box around the power virtual agents flow template option](06/media/ex1-t6-image2.png)

4.  Rename the flow **Add item to app or list** and click **+ Add an input**.

![A screenshot of a box around the add item to app or list button and an arrow pointing to the add an input button under power virtual agents](06/media/ex1-t6-image3.png)

5.  Select **Text**.
6.  Enter **User ID** and click **+ Add an input** again.

![A Screenshot with an arrow pointing to the add an input button](06/media/ex1-t6-image4.png)

7.  Select **Text**.
8.  Enter **UserOption** and click **+ Add an input** one more time.
9.  Select **Text**.
10. Enter **ItemName** and click **+ Add an input** one more time.
11. Select **Text**.
12. Enter **Description** and click **+ Add an input** one more time.
13. Select **Text**.
14. Enter **Location**.
15. You should now have five inputs.
16. Click **+ Insert a new step** and select **Add an action**.

![A Screenshot with an arrow pointing to the plus icon at the bottom of the power virtual agents pane and a box around the add an action button](06/media/ex1-t6-image5.png)

17.  Search for initialize and select **Initialize variable**.

![A screenshot with a box around the initialize variable button](06/media/ex1-t6-image6.png)

18.  Enter **Response to bot** for Name, select **String** for Type.
19.  Click Insert a new step and select **Add an action**.

![A Screenshot with an arrow pointing to the plus icon at the bottom of the initialize variable pane and a box around the add an action button](06/media/ex1-t6-image7.png)

20.  Click  **+ Insert a new step** again and select **Add an action**.
21.  Search for get user profile and select **Get user profile (V2)**.

![A screenshot with a box around the get user profile V2 button](06/media/ex1-t6-image8.png)

22.  Click on the **User (UPN)** field and select **User ID** from the dynamic content pane.

![A screenshot with a box around the user ID box in the user UPN field. There is also an arrow pointing to the user ID option in the dynamic content pane](06/media/ex1-t6-image9.png)

23.  Click **+ Insert a new step** again and select **Add an action**.
24.  Search for condition and select **Condition**.
25.  Click on the first **Choose a value** field and select **UserOption** from the dynamic content pane.

![A Screenshot with an arrow pointing to the UserOption in the dynamic content pane. There is also a box around the user option box in the condition pane](06/media/ex1-t6-image10.png)

26.  Select **is equal to** and type **Add to the Upcycle app**.
27.  Go to the **if no** branch and click **Add an action**.

![A Screenshot with an arrow pointing to the add an action button in the if no window](06/media/ex1-t6-image11.png)

28.  Search for add a row and select **Add a row into a table** from Excel Online (Business).

![A screenshot with a box around the add a row into a table button](06/media/ex1-t6-image12.png)

29.  Select **OneDrive for Business** for Location, **OneDrive** for Document Library, **Recycle.xlsx** for File and **PickupTable** for table.
30.   Click on the **Name** field and select **Display Name** from the dynamic content pane.

![A screenshot of a box around the display name box in the name field. There is also an arrow pointing to the dynamic content pane and the display name button](06/media/ex1-t6-image13.png)

31.  Click on the **Email** field and select **Mail** from the dynamic content pane.
32.  Click on the **Location** field and select the **Location** dynamic content from the Power Virtual Agents step in the dynamic content pane.

![A screenshot with a box around the power virtual agents part of the dynamic content pane and an arrow pointing to the location button. There is also a box around the location box in the location field](06/media/ex1-t6-image14.png)

33.  Click on the **Description** field and select **Description**  from the dynamic content pane.
34.  The flow step should now look like the image below. Click **Add an action**

![A Screenshot with an arrow pointing to the add an action button](06/media/ex1-t6-image15.png)

35.  Search for set variable and select **Set variable**.
36.  Select **Response to bot** for name, click Value field and select **ItemName** from the dynamic content pane.

![A Screenshot with an arrow pointing to the item name option in the dynamic content pane](06/media/ex1-t6-image16.png)

37. Add the text below after the ItemName.

``` was added to the e-waste pick-up list.```

38. Go to the **If yes** branch and click **Add an action**.

![A Screenshot with an arrow pointing to the add an action button](06/media/ex1-t6-image17.png)

39. Search for add new row and select **Add a new row** from Microsoft Dataverse.

![A screenshot with a box around the add a new row microsoft dataverse button](06/media/ex1-t6-image18.png)

40. Select **Gadgets** for the table name.
41. Click on the Location field and select **Location** from the dynamic content pane.
42. Click on the Name field and select **ItemName** from the dynamic content pane.
43. Click **Show advanced options**.


![A Screenshot with an arrow pointing to the show advanced options button](06/media/ex1-t6-image19.png)

44. Select **Available** for Availability, click on the Description field and select **Description** from the dynamic content pane.
45. Click **Add an action** after the add a new row step.
46. Search for set variable and select **Set variable**.
47. Select **Response to bot** for Name, click on the Value field and select **ItemName** from the dynamic content pane.
48. Add the text below after the ItemName.

``` was added to the Upcycle application.```

48. The two branches of the condition should now look like the image below. Click to expand the **Return value(s) to Power Virtual Agents** step.

![A Screenshot with an arrow pointing to the return values to power virtual agents box beneath the if yes and if no conditions boxed](06/media/ex1-t6-image20.png)

49. Click **+ Add an output**.
50. Select **Text**.
51. Enter **Response**, click on the value field, and select **Response to bot** from the dynamic content pane.

![A Screenshot with an arrow pointing to the response to bot option in the dynamic content pane under variables](06/media/ex1-t6-image21.png)

52. Click **Save** to save the flow.
53. Click on the **<-** back button next to the flow name.

![Back to PVA button - screenshot](06/media/ex1-t6-image22.png)

54. You should now be back to the bot authoring canvas.
55. Do not navigate away from this page.

#### Task 7 - Call flow 
In this task, you will call the flow as an action from the Power Virtual Agents bot.

1.  Go to the last question, click **+ Add node** and select **Call an action**.
3.  Select the **Add item to app or list** flow you created.

![A Screenshot with an arrow pointing to the add item to app or list button](06/media/ex1-t7-image1.png)

4.  Click on the **User ID** and select **bot.UserId**.

![A Screenshot with an arrow pointing to the drop down icon in the field asking the user to enter or select a value. There is also a box around the variable option bot.UserId](06/media/ex1-t7-image2.png)

5.  Click on the **UserOption** and select **UserOption**.
6.  Click on the **ItemName** and select **ItemName**.
7.  Click on the **Description** and select **Description**.
8.  Click on the **Location** and select **Location**.
9.  Click **+ Add node** and select **Show a message**.

![A Screenshot with an arrow pointing to the show a message button](06/media/ex1-t7-image3.png)

8.  Click on the **Insert variable** icon and select **Response**.

![A Screenshot with an arrow pointing to the insert variable icon and a box around the response button in the drop down](06/media/ex1-t7-image4.png)

9.  Click **+ Add node** and select **End with survey**.
10.  The end of the bot conversation should look like the image below.

![A screenshot of the end of the bot conversation which shows a message command with {x} response in the box and then an end of conversation command connected below](06/media/ex1-t7-image5.png)

11.  Click **save** to save your changes and wait for the bot to be saved.
12.  Do not navigate away from this page.

### Exercise 2 – Test and publish the bot

#### Task 1 - Test bot
In this task, you will test the bot.

1.  **Show** the bot if it is hidden by selecting Show Bot option on the bottom left side of the screen.
2.  Type **Recycle** and click **Send**.
3.  The bot should ask you if you want to add the item to the e-waste list or the upcycle application. Select **Add to the Upcycle app**.

![A screenshot with a box around the add to the upcycle app](06/media/ex2-t1-image1.png)

4.  The bot should ask you to provide name. Enter **Bot charger** and click **Send**
5.  The bot should ask you the description of the item. Enter **Universal bot charger** and click **Send**.
6.  The bot should ask you the location of the item. Enter **Building 4 Room A-754** and click **Send**.
7.  The bot should tell you the item was added to the Upcycle application and ask you if your question was answered. Click **Yes**.

![A Screenshot with an arrow pointing to the yes button](06/media/ex2-t1-image2.png)

7.  The bot should ask you to rate your experience. give it a rating.
8.  The bot should thank you and ask you if it can help you with anything else. Click **Yes**.
9.  Type **Reuse** and click **Send**.
10. Select **Add to the pick-up list** this time.
11. The bot should ask you to provide name. Enter **Bad bot charger** and click **Send**
12. The bot should ask you the description of the item. Enter **Bad universal bot charger** and click **Send**.
13. The bot should ask you the location of the item. Enter **Building 4 Room A-754** and click **Send**.
14. The bot should tell you the item was added to the e-waste pick-up list and ask you if your question was answered. Click **Yes**.

![A Screenshot with an arrow pointing to the yes button](06/media/ex2-t1-image3.png)

15. Rate the bot.
16. Select **No, thanks**.
17. The bot should end the conversation.
18. Select **Teams**.

![A Screenshot with an arrow pointing to the teams icon](06/media/ex2-t1-image4.png)

19. Select **Green** team chat. Select the **Upcycle** tab.
20. Search for bot. You should see the **Bot charger** the bot added to the application.

![A screenshot with the word bot in the search bar in the upcycle tab](06/media/ex2-t1-image5.png)

20. Click on the App launcher and select **OneDrive**.

![A Screenshot with an arrow pointing to the app launcher icon and a box around the onedrive option](06/media/ex2-t1-image6.png)

21.  Click to open the **Recycle.xlsx** file.
22.  You should see the **Bad universal bot charger** added by the bot.

![Excel table- screenshot](06/media/ex2-t1-image7.png)

23. Close the **Excel file**.
24. Close **OneDrive**
25. You should now be back on the Upcycle application.
26. Do not navigate away from this page.

#### Task 2 - Publish and add bot
In this task, you will publish the bot you created.

1.  Select **Power Virtual Agents**.

![A Screenshot with an arrow pointing to the power virtual agents icon on the left hand side of the window](06/media/ex2-t2-image1.png)

2.  Select the **Chatbots** tab and click to open the **Green Bot**.

![A Screenshot with an arrow pointing to the green bot button](06/media/ex2-t2-image2.png)

3.  Click **Publish**.

![A Screenshot with an arrow pointing to the publish button](06/media/ex2-t2-image3.png)

4. Click **Publish** again.
5. Click **Publish**  on the Publish latest content pop-up and wait for the publishing to complete.
6. Click to expand **Manage** and select **Channels**.

![A screenshot with a box around the channels button](06/media/ex2-t2-image4.png)

7. Select **Microsoft Teams**.
8. Click **Add to Teams**.

![A screenshot of a box around the add to teams button](06/media/ex2-t2-image5.png)

9. Select **Apps**.

![A Screenshot with an arrow pointing to the apps icon](06/media/ex2-t2-image6.png)

10. Select **Built for your org** and click on the **Green Bot** you created.

![A Screenshot with an arrow pointing to the green bot button](06/media/ex2-t2-image7.png)

11. Click **Add**.
12. The bot should greet you. You may test the bot again.
