*** Settings ***
Library     SeleniumLibrary
Library     ../config/UserCredentials.py

Resource  ../config/Environments.robot
Resource  ../config/RunTimeSettings.robot
Resource  Logging.robot

*** Variables ***
${USERNAME_TXT}=    //input[@id='username']
${NEXT_BTN}=        //button[@id='next']
${PASSWORD_TXT}=    //input[@id='password']
${SIGN_IN_BTN}=     //button[@id='signIn']

${HOME_PAGE_TITLE}=     Home | HPE Support
${GROUPS_PAGE_TITLE}=   My Groups | HPE Support

*** Keywords ***
Log into Application
    Open Browser  ${${ENVIRONMENT}_URL}${SIGN_IN_URL}   ${BROWSER}
    Logging     ${${ENVIRONMENT}_URL}${SIGN_IN_URL} url is opened in ${BROWSER} browser
    Maximize Browser Window
    Set Selenium Implicit Wait  ${IMPLICIT_TIME}
    Logging     Implicit Wait time ${IMPLICIT_TIME}
    Set Selenium Speed  ${SELENIUM_SPEED}
    Logging     Selenium Speed ${SELENIUM_SPEED}
    ${USER_CREDENTIALS}=    Get User  ${LOG_IN_USER}
    Input Text  xpath:${USERNAME_TXT}   ${USER_CREDENTIALS}[user_name]
    Logging     Entered User name
    Click Element  xpath:${NEXT_BTN}
    Logging     Clicked next button
    Input Password  xpath:${PASSWORD_TXT}   ${USER_CREDENTIALS}[password]
    Logging     Entered password
    Click Element  xpath:${SIGN_IN_BTN}
    Logging     Clicked Sign in button
    Sleep   ${DEFEAUL_SLEEP_TIME}
    Title Should Be     ${HOME_PAGE_TITLE}
    Logging     Logging with "${USER_CREDENTIALS}[user_name]" user successful.

Navigate To Groups Page
    Go To   ${${ENVIRONMENT}_URL}${MY_GROUPS_PAGE_URL}
    Sleep   ${DEFEAUL_SLEEP_TIME}
    Title Should Be     ${GROUPS_PAGE_TITLE}
    Logging     Navigated to Groups Page successful.


#Test Users
#    ${USERNAME}=    Get User    User 1
#    Logging  ${USERNAME}[user_name]
#    Logging  ${USERNAME}[password]

