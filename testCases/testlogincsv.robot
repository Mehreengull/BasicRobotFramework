*** Settings ***
Resource    ../resources/login.resource
Library    DataDriver    ../testdata/login.csv
Suite Setup    Open My Browser
Test Template    Invalid Login
*** Test Cases ***
login_with_csv    using ${username} and ${password}
*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login
    Validate Success Message