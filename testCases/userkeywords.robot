*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.resource
*** Variables ***
${url}    https://the-internet.herokuapp.com/login
${browser}    chrome
*** Test Cases ***
UserTC1
    ${pageTitle}    LaunchBrowser    ${url}    ${browser}
    Log To Console    ${pageTitle}
    Log    ${pageTitle}
    Input Text    id:username    tomsmith
    Input Text    id:password    SuperSecretPassword!
    Click Button    xpath://button[@type='submit']


