*** Settings ***

Library    SeleniumLibrary


*** Keywords ***

Open Login Page

    Open Browser  https://www.google.com  chrome

    Maximize Browser Window


Input Valid Email

    Log    Input Email ${VALID_EMAIL}



Input Valid Password

    Log    Input Password



Click Login Button

    Log    Click Login Button



Verify Dashboard

    Log    Verify Dashboard Page