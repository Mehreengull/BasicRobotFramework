*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
LaunchBrowser
    [Arguments]    ${app_url}    ${browser}
    Open Browser    ${app_url}    ${browser}
    Maximize Browser Window
    ${title}    Get Title
    RETURN    ${title}