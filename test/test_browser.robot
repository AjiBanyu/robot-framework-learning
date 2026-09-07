*** Settings ***
Library    Browser

*** Test Cases ***
Login With Valid Account
    New Browser    chromium    headless=false
    New Page       https://account.starasia.tech/?clientId=APP-20251ZXsevfVyd
    Fill Text      id=emailInput       ajibanyu@yahoo.com
    Fill Text      id=passwordInput    admin123
    Click          button[type="submit"]
    Sleep          5s
    Close Browser