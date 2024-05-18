*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Waits
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    Wait Until Page Contains    Register
    Select Radio Button    Gender    M
    Input Text    id:FirstName    John
    Input Text    id:LastName    Fabric
    Input Text    id:Email    johnfabric@gmail.com
    Input Text    id:Password    john12345
    Input Text    id:ConfirmPassword    john12345
    Click Button    id:register-button
    ${sel_speed}    Get Selenium Speed
    Log To Console    ${sel_speed}
    Close Browser

