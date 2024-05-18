*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
HandleWindows
    Open Browser    https://test.numuworld.com/    chrome
    Maximize Browser Window
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Influencer Marketing on demand, reliable and effective.
    Click Button    id:bitPrimaryButton
    Sleep    3
    Switch Window    url=https://test.client.numuworld.com/request-demo?lang=en
    Sleep    2
    ${location}    Get Location
    Log To Console    ${location}
    Capture Page Screenshot    log.png
