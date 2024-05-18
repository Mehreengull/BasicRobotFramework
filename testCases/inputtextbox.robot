*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${baseURL}    https://demo.nopcommerce.com/
${email_txt}    id:Email
*** Test Cases ***
InputTextBox
    Open Browser    ${baseURL}    ${browser}
    Set Selenium Speed    2seconds
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[normalize-space()='Log in']
    Element Should Be Visible    ${email_txt}
    #Element Should Be Disabled    ${email_txt}
    Input Text    ${email_txt}    test@gmail.com
    Clear Element Text    ${email_txt}
    Go To    https://the-internet.herokuapp.com/checkboxes
    Select Checkbox    xpath://input[1]
    Unselect Checkbox    xpath://input[2]


