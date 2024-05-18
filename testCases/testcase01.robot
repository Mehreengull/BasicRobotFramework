*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/login

*** Test Cases ***
LoginTest
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    LoginToApplication
    Close Browser

*** Keywords ***
LoginToApplication
    Input Text    id:username    tomsmith
    Input Text    id:password    SuperSecretPassword!
    Click Button    xpath://button[@type='submit']