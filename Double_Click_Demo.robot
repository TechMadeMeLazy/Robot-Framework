*** Settings ***
Library    SeleniumLibrary    
    
*** Test Cases ***   
Double Click Demo
    Open Browser      http://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Clear Element Text    id=field1
    Input Text    id=field1    Hello Tech Made Me Lazy
    Double Click Element    //button[contains(text(),'Copy Text')]
    Sleep    5s    
    Close Browser
    
    
    
