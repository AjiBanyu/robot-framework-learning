*** Settings ***

Resource    ../resources/keywords/login_keywords.robot
Resource    ../resources/variables/login_data.robot


*** Test Cases ***

TS-LOGIN-001 Valid Login

    [Tags]    positive

    Open Login Page
    Input Valid Email
    Input Valid Password
    Click Login Button
    Verify Dashboard


TS-LOGIN-002 Invalid Password

    [Tags]    negative

    Open Login Page
    Input Valid Email
    Input Invalid Password
    Click Login Button
    Verify Login Failed


TS-LOGIN-003 Invalid Email

    [Tags]    negative

    Open Login Page
    Input Invalid Email
    Input Valid Password
    Click Login Button
    Verify Login Failed


TS-LOGIN-004 Empty Email and Password

    [Tags]    negative

    Open Login Page
    Input Empty Email
    Input Empty Password
    Click Login Button
    Verify Login Failed