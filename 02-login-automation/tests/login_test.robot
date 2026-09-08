*** Settings ***

Resource    ../resources/keywords/login_keywords.robot
Resource    ../resources/variables/login_data.robot


*** Test Cases ***

TS-LOGIN-001 Valid Login

    Open Login Page
    Input Valid Email
    Input Valid Password
    Click Login Button
    Verify Dashboard