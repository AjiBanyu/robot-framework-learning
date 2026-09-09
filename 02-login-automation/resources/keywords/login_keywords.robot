*** Settings ***

Library    SeleniumLibrary
Resource   ../variables/login_data.robot
Resource   ../locators/login_locators.robot
Resource   ../variables/environment.robot

*** Keywords ***

Open Login Page

    Open Browser  ${LOGIN_URL}  chrome

    Maximize Browser Window


Input Valid Email

    Input Text
    ...    ${EMAIL_FIELD}
    ...    ${VALID_EMAIL}

Input Invalid Email

    Input Text 
    ...    ${EMAIL_FIELD}
    ...    ${INVALID_EMAIL}

Input Empty Email

    Input Text
    ...   ${EMAIL_FIELD}
    ...   ${EMPTY_EMAIL}

Input Valid Password

    Input Text
    ...    ${PASSWORD_FIELD}
    ...    ${VALID_PASSWORD}


Input Invalid Password

    Input Text  
    ...    ${PASSWORD_FIELD}
    ...    ${INVALID_PASSWORD} 

Input Empty Password

    Input Text
    ...    ${PASSWORD_FIELD}
    ...    ${EMPTY_PASSWORD}


Click Login Button

    Click Element
    ...    ${LOGIN_BUTTON}


Verify Dashboard

    Capture Page Screenshot

     Wait Until Location Contains
    ...    ${DASHBOARD_URL}
    ...    10s


Verify Login Failed


    Wait Until Page Contains
    ...    Invalid Credential
    ...    10s

    Capture Page Screenshot

    