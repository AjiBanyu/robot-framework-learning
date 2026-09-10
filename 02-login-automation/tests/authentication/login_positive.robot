*** Settings ***
Resource  ../../resources/pages/login_page.robot


*** Test Cases ***

TS-LOGIN-001 Valid Login

    [Tags]    positive

    Open Login Page
    Input Email         ${VALID_EMAIL}
    Input Password      ${VALID_PASSWORD}
    Click Login Button  
    Verify Dashboard