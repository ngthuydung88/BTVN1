*** Settings ***
Library   SeleniumLibrary



*** Keywords ***
Truy cập google
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
finish
    Close Browser