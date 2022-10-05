*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

NGG-TC-176 Automation Identifiers-Tags (Message Error)
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


# Do not fill the Identifiers information
# Click Tags
  click element              ${tags}

# Insert 10 Tags wait Message Error
# Text tags
  input text     ${tags}       Coffe
  press keys     ${tags}       ENTER

  input text     ${tags}       Milk
  press keys     ${tags}       ENTER

  input text     ${tags}       Hot
  press keys     ${tags}       ENTER

  input text     ${tags}       Sugar
  press keys     ${tags}       ENTER

  input text     ${tags}       Water
  press keys     ${tags}       ENTER

  input text     ${tags}       Cinnamon
  press keys     ${tags}       ENTER

  input text     ${tags}       spoon
  press keys     ${tags}       ENTER

  input text     ${tags}       Bowl
  press keys     ${tags}       ENTER

  input text     ${tags}       Napkin
  press keys     ${tags}       ENTER

  input text     ${tags}       Delicious
  press keys     ${tags}       ENTER

  press keys     ${tags}       ENTER

# wait for the message to be visible
   sleep        1
  wait until element is visible        ${MessageAlertError}
  Page Should Contain Element          ${MessageAlertError}          Can't add more than 10 tags per dining


