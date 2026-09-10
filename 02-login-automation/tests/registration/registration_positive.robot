*** Settings ***

Resource  ../../resources/pages/register_page.robot


*** Test Cases ***

TS-REGISTRATION-001 Create New Account Valid

    [Tags]    positive
    
    # Login Page
    Open Login Page
    Click Registration Button
    # Verify Registration Page

    # Create New Account
    Input Fullname           ${VALID_FULLNAME}
    Input New Email          ${VALID_EMAIL}
    Input Password           ${VALID_PASSWORD}
    Input Verify Password    ${VALID_PASSWORD}
    Click Continue Button

    # Verify Page
    Open Verify Page



    