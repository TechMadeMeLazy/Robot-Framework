*** Settings ***
Documentation    Nested If else statements demo program

*** Test Cases ***
Nested If else statements
    ${input_data}=    Set Variable    55
    Run Keyword If    ${input_data} == 5
    ...    Pass Execution    input data is equal to 5
    ...    ELSE IF    ${input_data} == 25
	...    Pass Execution    input data is equal to 25
    ...    ELSE
    ...    Pass Execution    input data is not neither 5 or 25