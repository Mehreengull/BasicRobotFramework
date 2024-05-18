*** Settings ***
Resource    ../resources/login.resource
Suite Setup    Open My Browser
Suite Teardown    Close My Browser
Test Template    Invalid Login
*** Test Cases ***    username    password
Right pass wrong user    old    admin123
Right user wrong pass    Admin    adm

    
*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login
    Validate Success Message
    
