*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***
NGG-TC-182 Identifiers - Meal - Select Dining location
        [Tags]      Validation Test       Case 1

# Open Community Waterford
    Click Element    ${Community}
    Drag And Drop    ${Waterford}      ${Community}
    Click Element    ${Waterford}


# Open Community Waterford Engage360
    Click Element    ${Community}
    Drag And Drop    ${Waterford}      ${Community}
    Click Element    ${Waterford}

#  Enter Dinning Window used JavaScript
    execute javascript          ${Dinning}

# Click Community Waterford
        scroll element into view            ${Community}
        element should be visible           ${Community}     Waterford Community
        mouse over                          ${Community}

# Click Add Menu Item used JavaScript
        execute javascript             ${Add Menu Item}

# the general information

# fill title
         click element                      ${dining_title}
         input text     ${dining_title}         fruits

# fill  Description
         click element                      ${dining_description}
         input text         ${dining_description}       watermelon, strawberries, blackberries, grapes

# image
         click element                          ${image}
         input text         ${image}         fruits

# click Magnifier search
         click element     ${Search}
# Search Image
         click element        id=image_2367029
# Click DONE
        click element       ${DONE}

# The information identifiers

# fill Tags Tab
        wait until element is visible           ${tags}
        set focus to element            ${tags}
        input text         ${tags}       Delicious
        press keys         ${tags}       ENTER
        input text         ${tags}       Nutritious
        press keys         ${tags}       ENTER

# Meal Category
# Breakfast, Lunch and Dinner
   wait until element is visible       ${Breakfast}
   click element   ${Lunch}
   click element   ${Dinner}

# Return Category Breakfast
   click element    ${Lunch}

    click element         ${Dinning Room}
    sleep       1
    select checkbox             ${Terrace}

# Select Button Hide On Print
    select checkbox     ${Hide_Print}



# download and make the image visible
    Execute Javascript  window.scrollTo(0,500)
    sleep       2
# raise the visible tab TAG
    Execute Javascript  window.scrollTo(500,0)

# Enter Botton Calendar
    click element       ${Calendar_Btn}

# Click advance two month and Return one month
     Double click element         ${advance_month}
     click element                ${return_month}

# Click Day
     execute javascript     ${Nov19}

 # enter to Calendar
     scroll element into view                ${Start-Date}
     wait until element is visible           ${Start-Date}
     click element                           ${Start-Date}

 # Click Save Button Dinning
    scroll element into view                ${BtnSave}
    wait until element is visible           ${BtnSave}
    click element                           ${BtnSave}


# Make the Alert message "This meal has been added succesfully" visible
    wait until element is visible        ${Message_Accept}
    element should be visible            ${Message_Accept}         This meal has been added succesfully