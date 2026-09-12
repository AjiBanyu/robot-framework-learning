*** Settings ***

Library    SeleniumLibrary
Resource   ../variables/environment.robot


*** Keywords ***

Open Purhcase Request

    Open Browser    ${PURCHASE_REQUEST_URL}   chrome
    Maximize Browser Window