*** Settings ***

Library  SeleniumLibrary
Resource  ../locators/forgot_password_locators.robot
# Resource  ../locators/
Resource  ../variables/login_data.robot
Resource  ../variables/environment.robot


*** Keywords ***

# Open Forgot Password Page

#     Open Browser  ${FORGOT_URL}  chrome
#     Maximize Browser Window


Input Forgot Password Email

    [Arguments]      ${email}
    Input Text       ${EMAIL_FIELD}    ${email}


Click Continue Button

    Click Element   ${CONTINUE_BUTTON}

Open Check your Email Page
    #pindah ke session dibrowser yang sama
    Go To   ${CHECK_YOUR_EMAIL} 
    

Input New Password 

    [Arguments]      ${new_password}
    Input Text       ${NEW_PASSWORD_FIELD}   ${new_password}

Input Confirm New Password

    [Arguments]      ${confirm_new_password}
    Input Text       ${CONFIRM_PASSWORD_FIELD}   ${confirm_new_password}

Click Reset Password Button

    Click Element    ${RESET_PASSWORD_BUTTON}

Verify Login Page

    #Capture Page Screenshot
     Wait Until Location Contains   
     ...    ${LOGIN_URL}  
     ...    20s