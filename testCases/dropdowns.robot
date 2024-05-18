*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Dropdown
   Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
   Maximize Browser Window
   Select From List By Label    dropdown-class-example    Option1
   Sleep    3
   Select From List By Value    dropdown-class-example    option3

