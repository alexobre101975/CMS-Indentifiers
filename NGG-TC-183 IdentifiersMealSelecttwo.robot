*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***
NGG-TC-183 Identifiers - Meal - Select two or more Dining locations
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
         input text     ${dining_title}         Hot cakes and Coffee

# fill  Description
         click element                      ${dining_description}
         input text         ${dining_description}       milk, hot water and soft cakes

# image
         click element                          ${image}
         input text         ${image}         Hot Cakes

# click Magnifier search
         click element     ${Search}
# Search Image
         click element        id=image_2354862
# Click DONE
        click element       ${DONE}

# The information identifiers

# fill Tags Tab
        wait until element is visible           ${tags}
        set focus to element            ${tags}
        input text         ${tags}       Sugar
        press keys         ${tags}       ENTER
        input text         ${tags}       Warm Milk
        press keys         ${tags}       ENTER

# Meal Category
# Breakfast, Lunch and Dinner
   wait until element is visible       ${Breakfast}
   click element   ${Lunch}
   click element   ${Dinner}

# Return Category Breakfast
   click element    ${Breakfast}

# Select Dining Locations
    select checkbox             ${Garden}
    select checkbox             ${Living Room}
    select checkbox             ${Liric Cafe}
    select checkbox             ${Terrace}

# download and make the image visible
    Execute Javascript  window.scrollTo(0,500)
    sleep       1
# raise the visible tab TAG
    Execute Javascript  window.scrollTo(500,0)





