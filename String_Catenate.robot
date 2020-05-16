*** Settings ***
Documentation    Strings addition demo

*** Test Cases ***
Add strings with out catenate command
    ${a}=    Set Variable    Hello
    ${b}=    Set Variable    World
    ${c}=    Set Variable    !!!
    ${d}=    Set Variable    ${a}${b}${c}
    Log      d=${d}
    # Expected Output: HelloWorld!!!
    
	${e}=    Set Variable    ${a} ${b} ${c}
    Log      Strings adding with empty separator between a,b and c variables = ${e}
    # Expected Output: Hello World !!!
    
    
Add strings with Catenate command
    ${a}=    Set Variable    Hello
    ${b}=    Set Variable    World
    ${c}=    Set Variable    !!!
    ${d}=    Catenate    ${a}    ${b}    ${c}
    Log      d=${d}   
    # Expected Output: Hello World !!! 
	
    ${e}=    Catenate    SEPARATOR=    ${a}    ${b}    ${c}
    Log      Catenate command with empty separator between a, b and c variables = ${e}
    # Expected Output: HelloWorld!!!    
    
	${f}=    Catenate    SEPARATOR=---    ${a}    ${b}    ${c}
    Log      Catenate command with --- separator between a and b variables = ${f}
    # Expected Output: Hello---World---!!!    
    
	${g}=    Catenate    SEPARATOR=%    ${a}    ${b}    ${c}
    Log      Catenate command with % symbol separator between a and b variables = ${g}
    # Expected Output: Hello%World%!!!