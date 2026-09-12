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
    [Arguments]    ${email}  
    Input Text    ${EMAIL_FIELD}  ${email}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}  ${password}


Click Login Button

    Click Element   ${LOGIN_BUTTON}



Verify Dashboard

    #Capture Page Screenshot
     Wait Until Location Contains   
     ...    ${PURCHASE_REQUEST_URL}  
     ...    20s

#Credential salah/tidak valid/tidak terdaftar
Verify Login Failed

    Wait Until Page Contains    
    ...    Invalid Credential   
    ...    20s
    #Capture Page Screenshot
