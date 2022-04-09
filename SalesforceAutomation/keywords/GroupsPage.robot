*** Settings ***
Library     SeleniumLibrary
Library     String

Resource  ../config/Environments.robot
Resource  ../config/RunTimeSettings.robot
Resource  Logging.robot

*** Variables ***
${GROUP_DETAILS_GROUP_NAME_LABLE}=          //h4/span
${GROUP_DETAILS_CONTRACTS_TAB}=             //a[@role='tab']//span[text()='Contracts']
${GROUP_DETAILS_CONTRACTS_PLUS_BTN}=        //div[text()='Contracts']//*[@data-id='create_data']/button
${GROUP_DETAILS_SUPPORT_AGREEMENT_LNK}=     //span[text()='Support Agreement']
${GROUP_DETAILS_SAID_TXT}=                  //label[text()='Service Agreement ID (SAID) or HPE Contract Number']/../div/input
${GROUP_DETAILS_SAR_TXT}=                   //label[text()='Support Account Reference']/../div/input
${GROUP_DETAILS_NEXT_BTN}=                  //button[@title='Next']
${GROUP_DETAILS_CONFIRM_BTN}=               //button[text()='Confirm']
*** Keywords ***
Add Contract
    [Arguments]  ${GROUP_NAME}      ${SAID}     ${SAR}
    Logging     Working on ${SAID}:${SAR}
    Click Link  ${GROUP_NAME}
    Sleep   ${DEFEAUL_SLEEP_TIME}
    Wait Until Element Contains     xpath:${GROUP_DETAILS_GROUP_NAME_LABLE}     ${GROUP_NAME}
    Logging     Selected "${GROUP_NAME}" group successful.
    Click Element   ${GROUP_DETAILS_CONTRACTS_TAB}
    Logging     Contracts tab selected
    Click Element  ${GROUP_DETAILS_CONTRACTS_PLUS_BTN}
    Logging     Plus button clicked
    Click Element  ${GROUP_DETAILS_SUPPORT_AGREEMENT_LNK}
    Logging     Support Agreement check box selected
    Input Text  xpath:${GROUP_DETAILS_SAID_TXT}     ${SAID}
    Logging     Entered SAID
    Input Text  xpath:${GROUP_DETAILS_SAR_TXT}      ${SAR}
    Logging     Entered SAR
    Click Element  xpath:${GROUP_DETAILS_NEXT_BTN}
    Logging     Clicked Next button
    Click Element  xpath:${GROUP_DETAILS_CONFIRM_BTN}
    Logging     Clicked Confirm button
    Sleep   ${DEFEAUL_SLEEP_TIME}


#Select Group
#    [Arguments]  ${GROUP_NAME_TO_SELECT}
#    Click Link  ${GROUP_NAME_TO_SELECT}
#    Sleep   ${DEFEAUL_SLEEP_TIME}
#    Wait Until Element Contains     xpath:${GROUP_DETAILS_GROUP_NAME_LABLE}     ${GROUP_NAME_TO_SELECT}
#    Logging     Selected "${GROUP_NAME_TO_SELECT}" successfull.
#
#Select Contracts Tab
#    Click Element   ${GROUP_DETAILS_CONTRACTS_TAB}
#
#Click Contracts Plus Button
#    Click Element  ${GROUP_DETAILS_CONTRACTS_PLUS_BTN}
#
#Click Support Agreement Check Box
#    Click Element  ${GROUP_DETAILS_SUPPORT_AGREEMENT_LNK}


