*** Settings ***
Documentation    HTML Error messages demo program

*** Test Cases ***
Test case without HTML error message
    # Log 'Test case is failed' message in reports
    Fail    Test case is failed
        
Test case with HTML error message for Fail Scenario
    # Log 'Test case is failed' message in reports with text in Red color and size in h1 
    Fail    *HTML*<h1 style="color:Red;">Test case is failed</h1>
    
Test case with HTML error message for Pass Scenario
    # Log 'Test case is failed' message in reports with text in Green color and size in h1
    Pass Execution    *HTML*<h1 style="color:Green;">Test case is failed</h1>