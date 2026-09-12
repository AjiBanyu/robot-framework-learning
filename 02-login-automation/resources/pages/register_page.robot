*** Settings ***

Library  SeleniumLibrary
Resource  ../locators/register_locators.robot
Resource  ../variables/register_data.robot
Resource  ../variables/environment.robot



*** Keywords ***

# Open Regristration Page

#     Open Browser  ${CREATE_ACCOUNT_URL}  chrome
#     Maximize Browser Window

Open Login Page

    Open Browser  ${LOGIN_URL}  chrome
    Maximize Browser Window

Click Registration Button
    Click Element   ${CREATE_ACCOUNT_BUTTON}

# Verify Registration Page
#     Wait Until Page Contains    Create an account    20s

Input Fullname
    
    [Arguments]    ${fullname}
    Input Text     ${FULLNAME_FIELD}    ${fullname}

Input New Email

    [Arguments]    ${email}
    Input Text     ${EMAIL_FIELD}       ${email}   

Input Password

    [Arguments]    ${password}
    Input Text     ${PASSWORD_FIELD}    ${password}

Input Verify Password

    [Arguments]    ${verify_password}
    Input Text     ${VERIFY_PASSWORD_FIELD}   ${verify_password}

Click Continue Button

    Click Element  ${CONTINUE_BUTTON}

Open Verify Page
    #pindah ke session dibrowser yang sama
    # Wait Until Location Contains    Very\ Email    20s
    Wait Until Location Contains    ${VERIFY_EMAIL_URL}    10s


#Email sudah terdaftar
Verify Email already exist

    Wait Until Page Contains    
    ...    Email already registered 
    ...    20s
    #Capture Page Screenshot