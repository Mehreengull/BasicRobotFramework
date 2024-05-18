*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome
*** Keywords ***
Open my browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close my browser
    Close All Browsers
   
Input username
    [Arguments]    ${username}
    Input Text    xpath://input[@placeholder='Username']    ${username}
Input Password
    [Arguments]    ${password}
    Input Text        xpath://input[@placeholder='Password']    ${password}
Click Login
    Click Button    xpath://button[normalize-space()='Login']
Validate Success Message
    Page Should Contain    Invalid credentials