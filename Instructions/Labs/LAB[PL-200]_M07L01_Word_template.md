---
lab:
    title: 'Lab 7.1: Build a Word template'
    module: 'Module 7: Analyze data with Power BI'
---

Module 7: Analyze data with Power BI
=================================

## Lab 7.1: Practice Lab – Build a Word template

Scenario
--------

You are a functional consultant for Contoso building a knowledge assessment
application for you client Fabrikam. You need to configure a template so that
managers can easily generate a certificate of completion to give users after
achieving a passing score. In this lab, you will create a certificate of
completion through a Word template and update that Word template to the app.

**Note:** This lab assumes you are using the latest version of Microsoft Word. If you are working with an older version, your user experience may not exactly match the instructions as written.

Exercise 1 – Word Template
--------------------------

In this exercise, you create a Microsoft Word template for the Test Result
entity. This document will generate a certificate of completion.

### Task 1 – Create Knowledge Test Result

In this task, you will create a Knowledge Test Result record.

1.  Navigate to https://make.powerapps.com.

2. Make sure you are in your **Practice** environment. 

3.  Select **Apps**.

4.  Locate and click on the **Knowledge Admin** model-driven application.

5.  Select **Knowledge Test Results**.

6.  Click **New**.

7.  Enter **Result for Template** for Primary Name.

8.  Click on the **Knowledge Assessment** lookup field and select any record.

9.  Enter **960** for **Total Points** and click **Save**. DO NOT navigate away
    from this page.

### Task 2 – Create Template

In this task, you will create the template. You will do this by downloading the
starting template for the entity. You will also enable to Developer menu in
Microsoft Word.

1.  Click on the **Word Template** button located on the command bar and select
    **Download Template**.

2.  Make sure **Knowledge Test Result** is selected for Entity.

3.  Go to the N:1 Relationship dropdown and click on chevron button.

4.  You will now select 2 entities:
    - **Knowledge Assessment**
    - **User (user_crxxx_knowledgetestresult)** (where xxx will be your unique prefix)

5.  Click **Download**.

6.  Wait for the template to be downloaded and click then click **Open**.

7.  Click **Enable Editing**.

8.  Click **File** and select **Options**.

9.  Select **Customize Ribbon**.

10. In the **Main Tabs** section locate and check the **Developer** checkbox.

11. Click **OK**.

12. Select the **Developer** tab and click XML Mapping Pane.

13. Click on the **Custom XML Parts** dropdown and select the **URL** with the
    Word **Template** and the entity name in it.

14. You are now ready to build the template.

### Task 3 – Build Template

In this task, you will build a basic certificate and insert data from CDS.

1.  Select the **Layout** tab, click **Orientation** and select **Landscape**.

2.  Click **Margins** and select **Normal 1” 1” 1” 1”.**

3.  Select the **Insert** tab, click **Text Box** and select **Simple Text Box**.

4.  Select the **Format** tab, click **Shape Fill** and select **No Fill**.

5.  Click **Shape Outline** and select **No Outline**.

6.  Select the **Home** tab and select **Align Center.**

7.  Replace the placeholder text with **Certificate of Completion**.

8.  Select the text and select **Old English Text MT** for **Font**.

9.  Change the **Font Size** to **72**

10. Resize the **Textbox** to fill the page horizontally.

11. Select the **Shape Format** tab, click **Text Effect**, click **Transform**, and
    select the first option in **Follow Path** showing an arch. 

12. Select the **Insert** tab, click **Text Box** and select **Simple Text
    Box**.

13. Select the **Format** tab, click **Shape Fill** and select **No Fill**.

14. Click **Shape Outline** and select **No Outline**.

15. Select the **Home** tab and select **Align Center.**

16. Replace the with **This certificate was presented to:**

17. Select the text and change the **Font Size** to **18**.

18. Place your cursor at the end of the text and press the **enter** key.

19. Go to the **XML Mapping** pane and expand the entity.

20. Expand the **User** entity.

21. Locate the **fullname** field and right click on it.

22. Click **Insert Content Control** and select **Plain Text**.

23. Select the text of the control and change the **Font** to **Castellar**.

24. Change the **Font Size** to **24**.

25. Insert another **Simple Text Box** and place it below the **Full Name**.

26. Set the **Fill** of the new textbox to **No Fill**.

27. Set the **Outline** of the new textbox to **No Outline**.

28. Set the alignment of the new textbox **Align Center**.

29. Replace the text of the new textbox with **For completing the**

30. Go to the **XML Mapping** pane and expand the **Knowledge Assessment**
    entity.

31. Right click on the **Title** field, click **Insert Content Control**, and
    select **Plain Text.**

32. Place your cursor in front of the **Title** control and type **with** .

33. Make sure your text box is selected. Go to the **XML Mapping** pane and go to the **Knowledge Test Result**
    entity.

34. Right click on the **Total Points** field, click **Insert Content Control**,
    and select **Plain Text.**

35. Place your cursor in front of the **Total Points** control and type **total
    points** .

36. Press the **enter** key.

37. Type **Completion Date:** and press the **enter** key.

38. Go to the **XML Mapping** pane and go to the **Knowledge Test Result**
    entity.

39. Right click on the **Created-On** field, click **Insert Content Control**,
    and select **Plain Text.**

40. Select the **Insert** tab and click **Icons.** Search **Badge** in the search bar and select your favorite badge image. 

42. Place the image below the **CreatedOn** control and center it.

43. Click **File** and click **Save**.

44. Enter **Assessment Certificate** for name and click **Save as**. Remember where
    you are saving your template.

Exercise 2 – Uploading and Using Word Template
----------------------------------------------

In this exercise, you will upload the template you created and test it.

### Task 1 – Upload Template

In this task, you will upload the template you created.

1.  Go to your **Knowledge Admin** Model-Driven application.

2.  Select **Knowledge Test Results**.

3.  Open the **Knowledge Test Result** record you created.

4.  Click on the **Word Template** button located on the command bar and select
    **Upload Template**.

5.  Click **Choose File.**

6.  Select the template you created and click **Open**.

7.  Click **Upload**.

### Task 2 – Use Word Template

In this task, you will test the template you created.

1.  Click on the **Word Template** button located on the command bar and select
    the **Assessment Certificate** template you uploaded.

2.  Click Open.

3.  Your certificate will open. 
