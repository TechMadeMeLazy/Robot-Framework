*** Settings ***
Library     SeleniumLibrary
Library     config/UserCredentials.py

Resource  config/Environments.robot
Resource  config/RunTimeSettings.robot
Resource  Logging.robot

*** Variables ***
${USERNAME_TXT}=    //input[@id='username']
${NEXT_BTN}=        //button[@id='next']
${PASSWORD_TXT}=    //input[@id='password']
${SIGN_IN_BTN}=     //button[@id='signIn']

*** Keywords ***
Log into Application
    Open Browser  ${${ENVIRONMENT}_URL}${SIGN_IN_URL}   ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait  ${IMPLICIT_TIME}
    Set Selenium Speed  ${SELENIUM_SPEED}
    ${USER_CREDENTIALS}=    Get User  ${LOG_IN_USER}
    Input Text  xpath:${USERNAME_TXT}   ${USER_CREDENTIALS}[user_name]
    Click Element  xpath:${NEXT_BTN}
    Input Password  xpath:${PASSWORD_TXT}   ${USER_CREDENTIALS}[password]
    Click Element  xpath:${SIGN_IN_BTN}


#Test Users
#    ${USERNAME}=    Get User    User 1
#    Logging  ${USERNAME}[user_name]
#    Logging  ${USERNAME}[password]

