*** Variables ***
${FUT_URL}=                  https://portal-ext-fut.support.hpe.com/
${ITG_URL}=                  https://itg-ext.support.hpe.com/
${SIGN_IN_URL}=              hpesc/public/home/signin
${MY_PRODUCTS_PAGE_URL}=     connect/s/assets
${MY_CONTRACTS_PAGE_URL}=    connect/s/contracts
${MY_GROUPS_PAGE_URL}=       connect/s/groups

# FUT
# ITG
${Group_Assets_TestSB}=         Assets_TestSB
${Group_Assets_RealSB}=         Assets_RealSB
${Group_Contracts_TestSB}=      Contracts_TestSB
${Group_Contracts_RealSB}=      Contracts_RealSB



#*** Settings ***
#
#Resource            ../CommonResource.robot
#
#
#*** Keywords ***
#
#My Foo Bar Keyword
#    [Documentation]    Does so and so
#    [Arguments]        ${arg1}
#    Do this
#    Do that
#    [Return]           Some value