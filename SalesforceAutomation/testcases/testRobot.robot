*** Settings ***
Library  SeleniumLibrary
Resource  ../config/Environments.robot
Resource  ../config/RunTimeSettings.robot
Resource  ../keywords/Logging.robot

Resource    ../keywords/LoginPage.robot
Resource    ../keywords/GroupsPage.robot

Test Setup  Log into Application
Test Teardown  Close Browser

*** Test Cases ***

Test Me
    Navigate To Groups Page
    Add Contract    ${Group_Contracts_TestSB}   abc     def

#    Navigate To Groups Page
#    Select Group    Assets_TestSB
#    Select Contracts Tab
#    Click Contracts Plus Button
#    Click Support Agreement Check Box
#    Input Text  xpath:${GROUP_DETAILS_SAID_TXT}     abc
#    Input Text  xpath:${GROUP_DETAILS_SAR_TXT}      def

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