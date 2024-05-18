*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Web_tables
    Open Browser    https://the-internet.herokuapp.com/tables    chrome
    Maximize Browser Window
    ${rows}    Get Element Count    xpath://table[@id='table2']//tbody//tr
    Log To Console    ${rows}
    ${columns}    Get Element Count    xpath://table[@id='table2']//thead/tr[1]/th
    Log To Console    ${columns}
    ${text}    Get Text    xpath://table[@id='table2']//tbody/tr[2]/td[1]
    Log To Console    ${text}
    Table Column Should Contain    xpath://table[@id='table2']    2     First Name
      

