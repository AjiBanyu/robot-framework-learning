*** Settings ***

Library  SeleniumLibrary
Resource  ../locators/login_locators.robot
Resource  ../variables/login_data.robot
Resource  ../variables/environment.robot

*** Keywords ***

Open Login Page

    Open Browser  ${LOGIN_URL}  chrome

    Maximize Browser Window

Input Email 
      
    Input Text    ${EMAIL_FIELD}   ${EMAIL}

Input Password

    Input Text    ${PASSWORD_FIELD}  ${PASSWORD}
    
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