*** Settings ***
Library  SeleniumLibrary
Resource  config/Environments.robot
Resource  config/RunTimeSettings.robot
Resource  keywords/Logging.robot

Resource    keywords/LoginPage.robot

*** Test Cases ***
Test Me
    Log into Application
    Close Browser

#    Open Browser  ${${ENVIRONMENT}_URL}${SIGN_IN_URL}   ${BROWSER}

#    Open Browser  ${${ENVIRONMENT}_URL}${SIGN_IN_URL}   ${BROWSER}
#    Maximize Browser Window
#    Sleep   5 Seconds
#    Close Browser

#    Log To Console    ${${ENVIRONMENT}_URL}
#$    Log To Console  ${FUT_URL}
#    Open Browser  https://www.google.com/   HeadlessChrome
#    Sleep   5 Seconds
#    Close Browser