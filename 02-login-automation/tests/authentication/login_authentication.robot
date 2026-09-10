#credential user valid untuk melakukan authentication
#"Apakah credential tersebut dikenali/valid untuk login?"
#Contoh:
        * Email tidak terdaftar
        * Password salah
        * Email + password tidak cocok

*** Settings ***
Resource  ../../resources/pages/login_page.robot


*** Test Cases ***
#Login dengan password salah, email valid
TS-LOGIN-002 Invalid Password

    [Tags]    negative

    Open Login Page
    Input Email        ${VALID_EMAIL}
    Input Password     ${INVALID_PASSWORD}
    Click Login Button
    Verify Login Failed


#Login dengan email salah, password valid
TS-LOGIN-003 Invalid Email

    [Tags]    negative

    Open Login Page
    Input Email        ${INVALID_EMAIL}
    Input Password     ${VALID_PASSWORD}
    Click Login Button
    Verify Login Failed