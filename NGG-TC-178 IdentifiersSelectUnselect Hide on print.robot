*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

NGG-TC-178 Automation identifiers - Select - Unselect - Hide on print
        [Tags]      Validation Test       Case 3

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
    mouse over                         ${Community}

# Click Add Menu Item used JavaScript
    execute javascript             ${Add Menu Item}


# Select and Unselect fill Hide on print
   select checkbox     ${Hide_Print}
   Sleep        2
   unselect checkbox   ${Hide_Print}
