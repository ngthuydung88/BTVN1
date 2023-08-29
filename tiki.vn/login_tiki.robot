*** Settings ***
Library   SeleniumLibrary


*** Keywords ***

start tiki
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
finish tiki
    Close Browser  