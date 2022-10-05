*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

NGG-TC-180 Dining Locations - Add
  [Tags]  Validation Test       Case 1

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

# simulate enter Community Waterford Engage360
    scroll element into view        ${Community}
    wait until element is visible       ${Community}
    mouse down    ${Community}


# Click tab Dining Locations
    click element    ${Dining Locations}

# simulate enter Community Waterford Engage360
    scroll element into view        ${Community}
    wait until element is visible       ${Community}
    mouse down    ${Community}



# Enter Button Add Dining Location
    wait until element is visible          ${Add Dining Location}
     click element             ${Add Dining Location}


# Enter a name with more than 30 characters
    click element   ${LocationName}
    input text      ${LocationName}       Dinning Room

# Press "Cancel" button
    scroll element into view            ${Icon, Cancel}
    click element           ${Icon, Cancel}


# Enter Button Add Dining Location
    wait until element is visible          ${Add Dining Location}
     click element             ${Add Dining Location}


# Enter a name with more than 30 characters
    click element   ${LocationName}
    input text      ${LocationName}       Dinning Room

# Save Name
    scroll element into view    ${SaveBtn}
    click element       ${SaveBtn}

    reload page



NGG-TC-180 Dining Locations - Delete
  [Tags]  Validation Test       Case 2

## Enter Button Add Dining Location
# Click tab Dining Locations
  click element    ${Dining Locations}

 # Delete dining Locations
  execute javascript         ${Icon, Delete}

# Press "No, Exit" button
    sleep   1
    scroll element into view        ${No, Exit}
    click element           ${No, Exit}

 # Delete dining Locations
  execute javascript         ${Icon, Delete}

  sleep     1

# button Yes, Delete
    click element       ${Yes, Delete}


