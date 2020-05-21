*** Settings ***
Library    SeleniumLibrary    
    
*** Test Cases ***   
Mouse Hover Demo
    Open Browser    http://demowebshop.tricentis.com/    Chrome
    Maximize Browser Window
    Mouse Over    partial link:COMPUTERS
    Sleep    5s
    Mouse Over    partial link:ELECTRONICS
    Sleep    5s
    Close Browser