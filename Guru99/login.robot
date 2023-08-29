*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Start test
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
finish test
    Close Browser    

