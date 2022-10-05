*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

NGG-TC-177 Automation identifiers - Meal - Categories-enter
        [Tags]      Validation Test       Case 2

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

# Meal Category
# Breakfast, Lunch and Dinner
   wait until element is visible       ${Breakfast}
   sleep    1
   click element   ${Lunch}
   sleep     1
   click element   ${Dinner}
    sleep    1
# Return Category Breakfast
   click element    ${Breakfast}


