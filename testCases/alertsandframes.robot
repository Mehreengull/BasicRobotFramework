*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Alerts
    Open Browser    https://the-internet.herokuapp.com/nested_frames    chrome
    Set Selenium Speed    2 seconds
    Maximize Browser Window
    Select Frame    frame-top
    Log To Console    frame-top
    Unselect Frame
    Select Frame    frame-bottom
    Log To Console    frame-bottom



