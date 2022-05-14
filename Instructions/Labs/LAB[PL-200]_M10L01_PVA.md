---
lab:
    title: 'Lab 10.1: Build a chatbot'
    module: 'Module 10: Build chatbots with Power Virtual Agents'
---

Module 10: Build chatbots with Power Virtual Agents
=================================

## Lab 10.1: Practice Lab – Build a chatbot

### Important Notice (Effective November 2020):
Common Data Service has been renamed to Microsoft Dataverse. Some terminology in Microsoft Dataverse has been updated. For example, entity is now table and field is now column. 

While the application is in the process of updating its user experience, some references to terminology like the Common Data Service (now **Dataverse**), entity (now **table**), field (now **column**), and record (now **row**) may be out of date. Please keep this in mind as you work through the labs. We expect to have our content fully up to date very soon. 

For more information and for a complete list of affected terms, please visit [What is Microsoft Dataverse?](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro#terminology-updates)

Scenario
--------
Students will be creating a bot for a company that provides inflatable equipment
for events such as birthday parties and corporate events. While most customer
inquiries such as placing and cancelling orders must be done by agents, the
company would like to use a bot to handle much of the routing.

## Exercise 1 – Getting started

In this exercise, you will acquire a PVA trial and create a bot.

### Task 1 – Sign up for a PVA trial

1.  Navigate to <https://powerva.microsoft.com>. Select
    your country/region and click **Start free trial**.

2.  Enter **Customer service bot** for **Name your bot**, select your **Language**,
    select your **Practice** environment, and click **Create**.

3.  Wait for the bot to be created. It might take a few minutes to complete.

4.  Click **Explore Bot**, if prompted.

## Exercise 2 – Create custom entities to capture information

### Task 1: Create support categories entity

1.  Select **Entities**.

2.  Click **+ New entity.**

3.  Select **Closed list**.

4.  Enter **Support categories** for **Name**.

5.  Enter **Order question** as an item and click **Add**.

6.  Enter **Delivery & setup** as an item and click **Add**.

7.  Enter **Weather related** as an item and click **Add**.

8.  The **Support categories** custom entity should now have three items. Make
    sure **Smart matching** is turned on via the toggle button and click
    **Save**.

9.  Click **Close**.

### Task 2: Create order entity

1.  Make sure you still have **Entities** selected and click **+ New entity**.

2.  Select **Closed list**.

3.  Enter **Order** for **Name**.

4.  Enter **Place order** as an item and click **Add**.

5.  Enter **Cancel order** as an item and click **Add**.

6.  The **Order** custom entity should now have two items. Make sure **Smart
    matching** is turned on via the toggle and click **Save**.

7.  Click **Close**.

## Exercise 3 – Design a Conversation path with Topics

### Task 1: Create a Cancel Order Topic

1.  Select **Topics** and click **+ New topic**.

2.  Enter **Cancel order** for Name.

3.  Enter **Cancel order** as a trigger phrase
    and click **Add**.

4.  Enter **Cancel** as a trigger phrase and click **Add**.

5.  The **Cancel order** topic should now have two trigger phrases. 

6.  Enter **Orders must be cancelled at least 48 hours before your scheduled
    event. Your deposit will not be refunded.** for **Message** and click the
    **plus (add node)** button. Note: when you copy and paste from the lab, you
    may see some styling in the canvas. Feel free to keep the styling or change
    it to your preferences.

7.  Select **Show a message**.

8.  Enter **Only live agents can process a cancellation request.** for
    **Message** and click the **plus (add node)** sign again.

9.  Select **Ask a question**.

10.  Enter **Would you like to talk to one now?** for question, enter **Yes** as
    an option, and click **+ New option**.

11. Enter **No** as the second option. You should now have two condition
    branches.

12. Scroll down to the **Yes** branch and click the **+ add node** button.

13. Hover over the **End the conversation** option and select **Transfer to
    agent**.

14. Enter **Customer would like to cancel order.** for **Private message to
    agent**.

15. Go to the **No** branch and click **Add node**.

16. Select **Show a message**.

17. Enter **Can I help you with anything else?** for **Message**.

18. Click the **Save** icon.

### Task 2: Create a New order topic

1.  Select **Topics** and click **+ New topic**.

2.  Enter **New order** for **Name**.

3.  Enter **New order** as a trigger phrase
    and click **Add**.

4.  Enter **Place an order** as a trigger phrase and click **Add**.

5.  Enter **Make a new order** as a trigger phrase and click **Add**.

6.  The New order topic should now have three trigger phrases. Click **Go to
    authoring canvas**.

7.  Enter **Be advised that all new orders require a non-refundable $100.00
    deposit that will be applied to your total order cost.** for **Message** and
    click **+ add node**.

8.  Select **Show a message**.

9.  Enter **Let me transfer you to an agent to process your request.** for
    Message and click **+ add node.**

10.  Hover over the **End the conversation** option and select **Transfer to
    agent**.

11. Enter **Customer would like to place an order.** for **Private message to
    agent**.

12. The New order topic should now have three nodes. Click the **Save** icon.

### Task 3: Create a check weather topic

1.  Select **Topics** and click **+ New topic**.

2.  Enter **Check weather** for **Name**, enter **Weather** as a trigger phrase
    and click **Add**.

3.  Enter **Today’s weather** as a trigger phrase and click **Add**.

4.  Enter **What is the weather like** as a trigger phrase and click **Add**.

5.  Enter **Will it rain today** as a trigger phrase and click **Add**.

6.  Enter **Check weather** as a trigger phrase and click **Add**.

7.  The Check weather topic should now have five trigger phrases. Click **Go to
    authoring canvas**.

8.  Enter **I can help you with that. I just need some additional information.**
    for **Message** and click **add node**.

9.  Select **Ask a question**.

10. Enter **What city do you live in?** click **Identify** and select **User’s
    entire response**.

11. Click the pencil under **Save response as** to edit the variable.

12. Enter **City** for **Name** and close the **Variable properties** pane.

13. Click **Add node**.

14. Select **Ask a question**.

15. Enter **What is your postal code?** Click **Identify** and select **User’s
    entire response**.

16. Click the **pencil** icon again to edit the variable.

17. Enter **ZipCode** for **Name** and close the **Variable properties** pane.

18. Click **add node**.

19. Select **Call an action** and select **Create a flow**.

20. Power Automate should open in a new browser window or tab.

21. Select your **country/region** and click **Get started**, if prompted.

22. Click **+ Add an input** and select **Text.**

23. Select the first box and enter **City.**

24. In the second box, enter **Provide city** and click **+ Add an input**
    again. Select **Text.**

25. Enter **Zip code** in the first text box and enter **Provide zip code** in
    the second text box.

26. Hover over between the flow trigger and the step, and then click on the
    **+** button. You are adding a step between the trigger and the return
    values step.

27. Select **Add an action**.

28. Search for msn and select **Get forecast for today**.

29. Click on the Location field, go to the Dynamic content pane, and select
    **City** from the Dynamic content pane.

30. Add comma after the city and then select **Zip code** form the Dynamic
    content pane.

31. Select your preferred units. For this lab, we are selecting **Imperial**.

32. Click to expand the **Return value(s) to Power Virtual Agents** step.

33. Click **+ Add an output**.

34. Select **Text**.

35. Enter **Day_Summary** in the first box. In the second box, select **Day
    Summary** from the Dynamic content pane.

36. Click **Add an output**.

37. Select **Text**.

38. Enter **Location** in the first box. In the second text box, select
    **Location** from the Dynamic content pane.

39. Click **Add an output** again.

40. Select **Text**.

41. Enter **Chance_of_rain** in the first box. Click on the second text box and
    select **Rain Chance** from the Dynamic content pane.

42. Rename the flow to **Check weather** by selecting the current name in the
    upper left corner of the editor. Click **Save**.

43. Wait for the flow to be saved.

44. Go back to your **Power Virtual Agents** tab.

45. Click **Add node**.

46. Select **Call an action** and then select the **Check weather** flow you
    created.

47. Click on the **City** dropdown and select **City**.

48. Click on the **Zip code** dropdown and select **ZipCode**.

49. Click **Add node**.

50. Select **Show a message**.

51. Click the **{x}** button to insert a variable.

52. Select **Day_Summary**.

53. Type a space. Then type "**There is a**", another space, and then insert the
    **Chance_of_Rain** variable.

54. Type another space, type "**percent chance of rain in**", enter another space,
    and then insert the **Location** variable. Add a period after the location
    variable to end your sentence.

55. Click **Save** to save the topic.

### Task 4: Create a delivery and set-up topic

1.  Select **Topics** and click **+ New topic**.

2.  Enter **Delivery and setup** for **Name**.

3.  Enter **Delivery** as a trigger phrase and click **Add**.

4.  Enter **When will my order be delivered** as a trigger phrase and click
    **Add**.

5.  Enter **Who will set up the items** as a trigger phrase and click **Add**.

6.  Enter **Who will remove the items** as a trigger phrase and click **Add**.

7.  Enter **Schedule a setup** as a trigger phrase and click **Add**.

8.  Enter **Schedule delivery** as a trigger phrase and click **Add**.

9.  Enter **Schedule removal** as a trigger phrase and click **Add**.

10. The Delivery and setup topic should now have seven trigger phrases. Click
    **Go to authoring canvas**.

11. Enter **Items are delivered one hour before your scheduled event.** for
    **Message** and click **Add node**.

12. Select **Show a message**.

13. Enter **2 delivery people will come and set up your items.** for **Message**
    and click **Add node.**

14. Select **Show a message**.

15. Enter **What else can I assist with?** for **Message**.

16. Click **Save** to save the topic.

### Task 5: Add an order topic

1.  Select **Topics** and click **+ New topic**.

2.  Enter **Order** for **Name**.

3.  Enter **Order question** for trigger phrase and click **Add**.

4.  Click **Go to authoring canvas**.

5.  Enter **I can help you with that.** for Message and click **add node.**

6.  Select **Ask a question**.

7.  Enter **What do you want to do?** in the question box. Enter **Place an
    order** for the first option and click **+ New option.**

8.  Enter **Cancel order** for the second option.

9.  You should now have two condition branches. Go to the **Place an order**
    branch and click **Add node**.

10. Select **Redirect to another topic**.

11. Select the **New order** topic you created.

12. Go to the **Cancel order** branch and click **Add node**.

13. Select **Redirect to another topic** again.

14. Select the **Cancel order** topic you created.

15. Click **Save** to save the topic.

### Task 6: Modify greeting system topic

1.  Select **Topics**.

2.  Search for **Greeting**, hover over the **Greeting** topic and click the **Go to
    authoring canvas** icon.

3.  Replace the first message with **Hi! I am a virtual agent here to help with
    questions ranging from ordering questions to weather-related questions.**

4.  Replace the second message with **If you would like to speak to a human at
    any time, just let me know.**

5.  Click on the **… Options** button of the last message and click **Delete**.

6.  Click **Add node**.

7.  Select **Ask a question**.

8.  Enter **What can I help you with?** for question.

9.  Enter **Order questions** for first option and click **+ New option**.

10. Enter **Delivery and setup** and click **+ New option** again.

11. Enter **Weather-related** for the third option.

12. You should have three condition branches. Go to the **Order questions**
    branch and click **Add node**.

13. Select **Redirect to another topic**.

14. Select the **Order** topic you created.

15. Go to the **Delivery and setup** branch and click **Add node**.

16. Select **Redirect to another topic**.

17. Select the **Delivery and setup** topic you created.

18. Go to the **Weather-related** branch and click **Add node**.

19. Select **Redirect to another topic**.

20. Select the **Check weather** topic you created.

21. Click **Save** to save the topic.

## Exercise 4 – Test and publish your bot

### Task 1: Test your bot

1.  Check to see that the **Test bot** pane is visible on your screen. If it is not, click on the **Test bot** button located in the top-right corner of the
    screen.

2.  Turn on **Track between topics**.

3.  Type **Hello** and click **Send** or **[ENTER]**.

4.  The bot should greet you and give you options. Keep a watch on the current
    topic.

5.  Select **Delivery and setup** from the options.

6.  The topic should change to the **Delivery and setup** topic and the bot
    should reply with the delivery and setup messages.

7.  Enter **Order question** and **Send**.

8.  The topic should change to the **Order** topic and the bot should give you
    options to place an order or cancel an order.

9.  Choose **Cancel order**.

10. The bot should display the order cancellation messages. Type **Will it rain
    today** and **Send**.

11. The topic should change to the **Check weather** topic and the bot should
    ask you to provide your city.

12. Enter city name and **Send**.

13. Provide your zip code and **Send**.

14. The bot should trigger the flow and reply with the result of MSN weather
    connector.

15. Type **Goodbye** and **Send**.

16. Close the **Test bot** pane.

### Task 2: Publish your bot

1.  Select **Publish** from the left menu and click **Publish**.

2.  Click **Publish** again to confirm and wait for the publishing to complete.

3.  Click on the **demo website** link under **Share your bot**.

4.  Interact with bot on the demo website and see how it performs.

5.  You may share the demo website with others.
