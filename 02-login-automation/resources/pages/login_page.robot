*** Settings ***

Library  SeleniumLibrary
Resource  ../locators/login_locators.robot
Resource  ../variables/login_data.robot
Resource  ../variables/environment.robot
Resource  ../locators/forgot_password_locators.robot
Resource  ../locators/register_locators.robot

*** Keywords ***

Open Login Page

    Open Browser  ${LOGIN_URL}  chrome

    Maximize Browser Window

Input Email 
    [Arguments]    ${email}  
    Input Text    ${EMAIL_FIELD}  ${email}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}  ${password}

Click Forgot Password

    Click Element    ${FORGOT_PASSWORD}    


Click Login Button

    Click Element   ${LOGIN_BUTTON}


Click Registration Button

    Click Element   ${CREATE_ACCOUNT_BUTTON}


Verify Dashboard

    #Capture Page Screenshot
     Wait Until Location Contains   
     ...    ${DASHBOARD_URL}  
     ...    20s

#Credential salah/tidak valid/tidak terdaftar
Verify Login Failed

    Wait Until Page Contains    
    ...    Invalid Credential   
    ...    20s
    #Capture Page Screenshot

#Input Field Kosong
Verify Required Field Error

    [Arguments]   ${email_message}=${EMPTY}  ${password_message}=${EMPTY}
     
    #cek kondisi field email 
    IF    $email_message != ""
        Wait Until Page Contains   ${email_message}   20s   
    END

    #cek kondisi field password
    IF    $password_message != ""
        Wait Until Page Contains   ${password_message}   20s   
    END
    