*** Settings ***

Resource  ../../resources/pages/login_page.robot

*** Test Cases ***


#Login tanpa email dan password
TS-LOGIN-004 Empty Email and Password

    [Tags]    negative

    Open Login Page
    Input Email        ${EMPTY}
    Input Password     ${EMPTY}
    Click Login Button
    Verify Required Field Error  Email is required  Password is required


TS-LOGIN-005 Empty Email and Password Valid

    [Tags]    negative

    Open Login Page
    Input Email       ${EMPTY}
    Input Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Required Field Error  Email is required

TS-LOGIN-006 Email Valid and Empty Password

    [Tags]     negative
    Open Login Page
    Input Email       ${VALID_EMAIL}
    Input Password    ${EMPTY}
    Click Login Button
    Verify Required Field Error   Password is required