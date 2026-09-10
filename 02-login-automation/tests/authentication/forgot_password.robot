*** Settings ***
Resource   ../../resources/pages/forgot_password_page.robot
Resource   ../../resources/pages/login_page.robot

*** Test Cases ***

TS-FORGOT-001 Reset Password With Registred Email

    [Tags]   positive

    #Login Page
    Open Login Page
    Click Forgot Password

    #Forgot Password Page
    Input Forgot Password Email   ${VALID_EMAIL}
    Click Continue Button


    #Check your Email Page
    Open Check your Email Page

    #Create New Password Page
    #Input New Password            ${NEW_PASSWORD_FIELD}
    #Input Confirm New Password    ${CONFIRM_PASSWORD_FIELD}
    #Click Reset Password Button

    #Verify Login Page
