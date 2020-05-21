*** Settings ***
Library    ExtendedSeleniumLibrary
Library    SeleniumLibrary    
    
*** Test Cases ***
Right Click Demo
    Open Browser      http://demo.guru99.com/test/simple_context_menu.html    Chrome
    Maximize Browser Window
    Right Click Element    //span[text()='right click me']
    Sleep  5s
    Close Browser