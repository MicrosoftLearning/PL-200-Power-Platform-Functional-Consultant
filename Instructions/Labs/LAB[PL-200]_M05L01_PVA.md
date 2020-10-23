---
lab:
    title: 'Lab: Build a chatbot'
    module: 'Module 5: Work with Power Virtual Agents'
---

Module 5: Work with Power Virtual Agents
=================================

## Lab 1: Practice Lab – Build a chatbot

Scenario
--------
Students will be creating a bot for a company that provides inflatable equipment
for events such as birthday parties and corporate events. While most customer
inquiries such as placing and cancelling orders must be done by agents, the
company would like to use a bot to handle much of the routing.


Exercise 1 – Getting started
--------------------------

In this exercise, you will acquire a PVA trial and create a bot.

### Task 1 – Sign up for a PVA trial

1.  Navigate to [Power Virtual Agents](https://powerva.microsoft.com/) select
    your country/region and click **Start Trial**. If your working in an
    environment with Power Virtual Agents already in action, you might see a
    screen like the second image.

2.  Enter **Customer service bot** for **Name**, select your **Language**,
    select your environment, and click **Create**. Make sure you do not have the
    default environment selected.

3.  Wait for the bot to be created. It might take a few minutes to complete.

4.  Click **Explore Bot**, If prompted.

Exercise 2 – Create custom entities to capture information
--------------------------

### Task 1: Create support categories entity

In this task, you will create a new entity named support categories that has
three items, order question, delivery and setup, and weather related.

1.  Select **Entities**.

2.  Click **+ New custom entity.**

3.  Enter **Support categories** for **Name**.

4.  Enter **Order question** as an item and click **Add**.

5.  Enter **Delivery & setup** as an item and click **Add**.

6.  Enter **Weather related** as an item and click **Add**.

7.  Support category custom entity should now have three items. Make sure
    **Start matching** is turned on and click **Save**.

8.  Click **Close**.

### Task 2: Create order entity

1.  Make sure you still have **Entities** selected and click **+ New custom
    entity**.

2.  Enter **Order** for **Name**.

3.  Enter **Place order** as an item and click **Add**.

4.  Enter **Cancel order** as an item and click **Add**.

5.  The order custom entity should now have two items. Make sure **Smart
    matching** is turned on and click **Save**.

6.  Click **Close**.


Exercise 3 – Design a Conversation path with Topics
--------------------------

### Task 1: Create a Cancel Order Topic
1.  Select **Topics** and click **+ New topic**.

2.  Enter **Cancel order** for Name, enter **Cancel order** as a trigger phrase
    and click **Add**.

3.  Enter **Cancel** as a trigger phrase and click **Add**.

4.  The **Cancel order** topic should now have two trigger phrases. Click **Go
    to authoring canvas**.

5.  Enter **Orders must be canceled at least 48 hours before you scheduled
    event. Your deposit will not be refunded** for **Message** and click **Add
    node**. Note: when you copy and paste from the lab, you may see some styling
    in the canvas. Feel free to keep the styling or change it to your
    preferences.

6.  Select **Show a message**.

7.  Enter **Only live agents can process a cancelation request** for **Message**
    and click **Add node.**

8.  Select **Ask a question**.

9.  Enter **Would you like to talk to one now?** for question, enter **Yes** as
    an option, and click **+ New option**.

10. Enter **No** as the second option. You should now have two conditions.

11. Go to the **Yes** branch and click **Add node**.

12. Hover over the **End the conversation** option and select **Transfer to
    agent**.

13. Enter **Customer would like to cancel order** for **Private message to
    agent**.

14. Go to the **No** branch and click **Add node**.

15. Select **Show a message**.

16. Enter **Can I help you with anything else?** for **Message**.

17. The two branches should now look like the image below. Click **Save**.

### Task 2: Create a new order topic
1.  Select **Topics** and click **+ New topic**.

2.  Enter **New order** for **Name**, enter **New order** as a trigger phrase
    and click **Add**.

3.  Enter **Place an order** as a trigger phrase and click **Add**.

4.  Enter **Make a new order** as a trigger phrase and click **Add**.

5.  The New order topic should now have three trigger phrases. Click **Go to
    authoring canvas**.

6.  Enter **Be advised that all new orders required a non-refundable \$100.00
    deposit that will be applied to your total order cost** for **Message** and
    click **Add node**.

7.  Select **Show a message**.

8.  Enter **Let me transfer you to an agent to process your request** for
    Message and click Add node.

9.  Hover over the **End the conversation** option and select **Transfer to
    agent**.

10. Enter **Customer would like to place an order** for **Private message to
    agent**.

11. The New order topic should now have three nodes. Click **Save**.

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

8.  Enter **I can help you with that, I just need some additional information**
    for **Message** and click **Add node**.

9.  Select **Ask a question**.

10. Enter **What City do you live in?** click **Identify** and select **User’s
    entire response**.

11. Click **Edit** variable.

12. Enter **City** for **Name** and close the **Variable properties** pane.

13. Click **Add node**.

14. Select **Ask a question**.

15. Enter **What is your postal code?** click **Identify** and select **User’s
    entire response**.

16. Click **Edit variable**.

17. Enter **ZipCode** for **Name** and close the **Variable properties** pane.

18. Click **Add note**.

19. Select **Call an action** and select **Create a flow**.

20. Power automate should open on a new browser window or tab.

21. Select your **country/region** and click **Get started**, if prompted.

22. Click **+ Add an input**.

23. Select Text.

24. Enter **City**, enter Provide city, and click **+ Add an input** again.

25. Select **Text** again.

26. Enter **Zip code** and enter **Provide zip code**.

27. Hover over between the flow trigger and the step, and then click on the
    **+** button. You are adding a step between the trigger and the return
    values step.

28. Select **Add an action**.

29. Search for msn and select **Get forecast for today**.

30. Click on the Location field, go to the Dynamic content pane and select City,

31. Add comma after the city and then select **Zip code** form the Dynamic
    content pane.

32. Select your preferred units. For this lab, we are selecting **Imperial**.

33. Click to expand the **Return value(s) to Power Virtual** Agents step.

34. Click **+ Add an output**.

35. Select **Text**.

36. Enter **Day_Summary** for name, click on the **Day_summary** field and
    select **Day Summary** from the Dynamic content pane.

37. Click **Add an output**.

38. Select **Text**.

39. Enter **Location** for **Name**, click on the **Location** field and select
    **Location** from the Dynamic content pane.

40. Click **Add an output** again.

41. Select **Text**.

42. Enter **Chance_of_rain** for **Name**, click on the **Chance of rain** field
    and select **Rain chance** from the Dynamic content pane.

43. Rename the flow to **Check weather** and click **Save**.

44. Wait for the flow to be saved.

45. Go back to **Power Virtual Agents**.

46. Click **Add node**.

47. Select **Call an action** and then select the **Check weather** flow you
    created.

48. Click on the **City** dropdown and select **City**.

49. Click on the **Zip code** dropdown and select **ZipCode**.

50. Click **Add node**.

51. Select **Show a message**.

52. Click **Insert a variable**.

53. Select **Day_Summary**.

54. Type **with a chance of** and insert **Chance_of_Rain** variable.

55. Type **percent of rain in** and insert **Location** variable.

56. The **Message** should now look like the image below.

57. Click **Save** to save the topic.

### Task 4: Create a delivery and set-up topic
1.  Select **Topics** and click **+ New topic**.

2.  Enter **Delivery and setup** for **Name**.

3.  Enter **Delivery** as a trigger phrase and click **Add**.

4.  Enter **When will my order be delivered** as a trigger phrase and click
    **Add**.

5.  Enter **Who will setup the items** as a trigger phrase and click **Add**.

6.  Enter **Who will remove the items** as a trigger phrase and click **Add**.

7.  Enter **Schedule a setup** as a trigger phrase and click **Add**.

8.  Enter **Schedule delivery** as a trigger phrase and click **Add**.

9.  Enter **Schedule removal** as a trigger phrase and click **Add**.

10. The Delivery and setup topic should now have seven trigger phrases. Click
    **Go to authoring canvas**.

11. Enter **Items are delivered 1 hour before your scheduled event** for
    **Message** and click **Add node**.

12. Select **Show a message**.

13. Enter **Two delivery people will come and setup your items** for **Message**
    and click **Add node.**

14. Select **Show a message**.

15. Entre **What else can I assist with?** for **Message**.

16. Click **Save** to save the topic.

### Task 5: Add an order topic
1.  Select **Topics** and click **+ New topic**.

2.  Enter **Order** for **Name**.

3.  Enter **Order question** for trigger phrase and click **Add**.

4.  Click **Go to authoring canvas**.

5.  Enter **I can help you with that** for Message and click Add node.

6.  Select **Ask a question**.

7.  Enter **What do you want to do?** enter **Place an order** for the first
    option and click **+ New option.**

8.  Enter **Cancel order** for the second option.

9.  You should now have two condition branches. Go to the **Place an order**
    branch and click **Add node**.

10. Select **Go to another topic**.

11. Select the **New order** topic you created.

12. Go to the **Cancel order** branch and click **Add node**.

13. Select **Go to another topic** again.

14. Select the **Cancel order** topic you created.

15. Your condition branches should now look like the image below. Click **Save**
    to save the topic.

16. Wait for the topic to be saved.

### Task 6: Modify greeting system topic
1.  Select **Topics**.

2.  Search for **greeting**, hover over the **Greeting** topic and click **Go to
    authoring canvas**.

3.  Replace the first message with **Hi! I am a virtual agent here to help with
    questions ranging from ordering questions, to weather related questions**.

4.  Replace the second message with **If you would like to speak to a human at
    any time, just let me know**.

5.  Click on the **… Options** button of the last message and click **Delete**.

6.  Click **Add node**.

7.  Select **Ask a question**.

8.  Enter **What can I help you with?** for question.

9.  Enter **Order questions** for first option and click **+ New option**.

10. Enter **Delivery and setup** and click **+ New option** again.

11. Enter **Weather related** for the third option.

12. You should have three condition branches. Go to the **Order questions**
    branch and click **Add node**.

13. Select **Go to another topic**.

14. Select the **Order** topic you created.

15. Go to the **Deliver and setup** branch and click **Add node**.

16. Select **Go to another topic**.

17. Select the **Delivery and setup** topic you created.

18. Go to the **Weather related** branch and click **Add node**.

19. Select **Go to another topic**.

20. Select the **Check Weather** topic you created.

21. The three branches should now look like the image below. Click **Save** to
    save the topic.

Exercise 4 – Test and publish your bot
--------------------------

### Task 1: Test your bot

1.  Click on the **Test your bot** button located on the bottom-left of the
    screen.

2.  Turn on **Track between topics**.

3.  Type **Hello** and click **Send** or **[ENTER]**.

4.  The bot should greet you and give you options. Keep a watch on the current
    topic.

5.  Select **Delivery and setup** from the options.

6.  The topic should change to the **Delivery and setup** topic and the bot
    should replay with the delivery and setup messages.

7.  Enter **Order question** and **Send**.

8.  The topic should change to the **Order** topic and the bot should give you
    options to place an order or cancel an order.

9.  Choose **Cancel order**.

10. The bot should display the order cancelation messages. Type **Will it rain
    today** and **Send**.

11. The topic should change to the **Check weather** topic and the bot should
    ask you to provide your city.

12. Enter city name and **Send**.

13. Provide your zip code and **Send**.

14. The bot should trigger the flow and reply with the result of MSN weather
    connector.

15. Type **Goodbye** and **Send**.

16. The bot should conclude the chat.

17. Click **Hide bot**.

### Task 2: Publish your bot
1.  Select **Publish** and click Publish.

2.  Click **Publish** again to confirm and wait for the publishing to complete.

3.  Click on the **Demo website link**.

4.  Try to interact with bot on the demo website and see how it performs.

5.  You may share the demo website with others.

