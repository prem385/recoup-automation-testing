Feature: Managing question bank

  Background: common steps
    Given the user is on the Login page
    When the user enters valid username and password
    And the user clicks on login button
    When he clicks on setup

  Scenario: creating question bank by selecting single line with multiple choice or checkbox or dropdown
     When admin navigates to question bank
     When admin click on create button
     And admin select multiple choice
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects single line select type
     And admin add option from 1 to 4
     And admin enters a1 in option1
     And admin enters a2 in option2
     And admin enters a3 in option3
     And admin enters a4 in option4
     And admin select answer required to this question and score checkbox from settings
     And admin enters respective scores
     And admin click on subquestions
     When selected option is a1 then admin add question and select one of the question
     When selected option is a2 then admin add question and select one of the question
     When selected option is a3 then admin add question and select one of the question
     When selected option is a4 then admin add question and select one of the question
     And admin sets a1 as default answer
     And admin enters tag in tags field
     And admin clicks on submit
     Then succesfully created message should be displayed

  Scenario:creating question bank by selecting multiple line with multiple choice or checkbox or dropdown

     When admin navigates to question bank
     When admin click on create button
     And admin select multiple choice
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects multiple line select type
     And admin enters label name as label1 in line1
     And admin add option from 1 to 4
     And admin enters b1 in option1
     And admin enters b2 in option2
     And admin enters b3 in option3
     And admin enters b4 in option4
     And admin add line2
     And admin enters label name as lable2 in line2
     And admin enters c1 in option1
     And admin enters c2 in option2
     And admin enters c3 in option3
     And admin enters c4 in option4
     And admin select answer required to this question and score checkbox from settings
     And admin enters respective scores
     And admin click on subquestions
     When selected option is b1 in line1 then admin add question and selects one of it
     When selected option is b2 in line1 then admin add question and selects one of it
     When selected option is b3 in line1 then admin add question and selects one of it
     When selected option is b4 in line1 then admin add question and selects one of it
     When selected option is c1 in line2 then admin add question and selects one of it
     When selected option is c2 in line2 then admin add question and selects one of it
     When selected option is c3 in line2 then admin add question and selects one of it
     When selected option is c4 in lin2 then admin add question and selects one of it
     And admin sets default answer for label1 and label2
     And admin enters 'aa' as a tags
     And admin clicks on submit
     Then succesfully created message should display

  Scenario: creating question by selecting grid with multiple choice,checkbox or dropdown
     When admin navigates to question bank
     When admin click on create button
     And admin select multiple choice
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects grid select type
     And admin add rows and columns from 1 to 4
     And admin enters r1 and d1 in row1 and column1
     And admin enters r2 and d2 in row2 and column2
     And admin enters r3 and d3 in row3 and column3
     And admin enters r4 and d4 in row4 and column4
     And admin select answer required to this question and score checkbox from options
     And admin sets default column for respective rows
     And admin enters 'bb' as a tags
     Then succesfully created message should display

  Scenario: creating question by selecting image with multiple choice,checkbox
     When admin navigates to question bank
     When admin click on create button
     And admin select multiple choice
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects image select type
     And admin select add text to the image
     And admin selects image from the folder file and enters pic in description
     And admin click on add image and select another image from the folder and enters description
     And admin select answer required to this question,show options vertically and score checkbox from settings
     And admin enters respective scores
     And admin selects 'aa' tags
     When admin click on subquestions
     And admin clicks on add question in option1 and select one the question from dropdown
     And admin clicks on add question in option2 and select one the question from dropdown
     And admin clicks on submit button
     Then succefully created message should display

  Scenario: creating question by selecting single line with text
     When admin navigates to question bank
     When admin click on create button
     And admin select text
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects  single line
     And admin enters text in default text
     And admin selects answer required to this question and save user answer with EHR from settings
     And admin selects "aa" tags
     And admin clicks on submit button
     Then succefully created message should display

  Scenario: creating question by selecting multiple line with text
     When admin navigates to question bank
     When admin click on create button
     And admin select text
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects multiple line
     And admin enter row1 and default1 in line1
     And admin clicks on add line
     And admin enters row2 and default2 in line2
     And admin selects answer required to this question and save user answer with EHR
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see line1 and line2 row and default label
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting grid with text
     When admin navigates to question bank
     When admin click on create button
     And admin select text
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects grid
     And admin enters row1 in rows ans column1 in columns
     And admin clicks on add rows and add columns
     And admin enters row2 in rows ans column2 in columns
     And admin selects Answer required to this question and save user answer with EHR from option
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting paragraph with text
     When admin navigates to question bank
     When admin click on create button
     And admin select text
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects paragraph select type
     And admin enters default text
     And admin selects answer required to this question and save user answer with EHR
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting date only or time only with data and time
     When admin navigates to question bank
     When admin click on create button
     And admin select date and time
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects date only select type
     And admin selects date format
     And admin selects answer required to this question and save user answer with EHR
     And admin select set default answer
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting date and time with data and time
     When admin navigates to question bank
     When admin click on create button
     And admin select date and time
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects date and time select type
     And admin selects date format
     And admin selects time format
     And admin selects answer required to this question and save user answer with EHR
     And admin select set default answer
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting multiple input grid
     When admin navigates to question bank
     When admin click on create button
     And admin selects multiple input grid
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin add rows and columns from 1 to 3
     And admin enters r1 and d1 in row1 and column1
     And admin selects dropdown and add option1 and option2
     And admin enters r2 and d2 in row2 and column2
     And admin selects text and enters default text
     And admin enters r3 and d3 in row3 and column3
     And admin selects date and time and add date
     And admin enters r4 and d4 in row4 and column4
     And admin selects answer required to this question and save user answer with EHR
     And admin select set default answer
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting timeline
     When admin navigates to question bank
     When admin click on create button
     And admin selects multiple input grid
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin enters row1 in rows and select date from column and select dropdown
     And admin add option1 and option2
     And admin enters row1 in rows and select date from column and select textfield
     And admin enter default text
     And admin selects answer required to this question and save user answer with EHR
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting slider
     When admin navigates to question bank
     When admin click on create button
     And admin selects slider
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects range from 0 to 100
     And admin selects a number in segment
     And admin selects answer required to this question and save user answer with EHR and show value
     And admin selects default option from start option
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display



  Scenario: creating question by selecting linear scale with single line
     When admin navigates to question bank
     When admin click on create button
     And admin selects linear scale
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects single line select type
     And admin enters scale range from 1 to 50
     And admin enter boundary label 1 and 2
     And admin selects answer required to this question,Include N/A,Save User Answer with EHR
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

  Scenario: creating question by selecting linear scale with grid
     When admin navigates to question bank
     When admin click on create button
     And admin selects linear scale
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects grid select type
     And admin enters scale range from 1 to 50
     And admin enters rowlabel1 in rows
     And admin enter boundary label 1 and 2
     And admin selects answer required to this question,Include N/A,Save User Answer with EHR
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display

   Scenario: creating question by selecting file upload
     When admin navigates to question bank
     When admin click on create button
     And admin selects file uoload
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin uploads file from folder
     And admin selects answer required to this question,Include N/A,Save User Answer with EHR
     And admin selects allow only specific file types
     And admin clicks on preview
     And admin selects number of files
     And admin selects maximum file size
     And admin selects 'aa' tags
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display


   Scenario: creating question by selecting take a photo or take a video or record audio
     When admin navigates to question bank
     When admin click on create button
     And admin selects take a photo
     And admin enters question in a question field
     And admin enters descrtiption in a description field
     And admin enters help in a help desk field
     And admin selects only media type select type
     And admin take a photo and uploads
     And admin selects answer required to this question,Include N/A,Save User Answer with EHR
     And admin selects allow only specific file types
     And admin selects number of photos,number of videos,number of records
     And admin selects maximum file size
     And admin selects 'aa' tags
     And admin clicks on preview
     And admin should able to see preview page
     And admin clicks on submit
     Then successfully  created message should display



























