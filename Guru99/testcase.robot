*** Settings ***
Library  SeleniumLibrary
Resource    ../Guru99/login.robot
Resource    ../Guru99/keyword_gru.robot


*** Test Cases ***
[TC_01] - Script Automation Test Guru 99 
    [Documentation]    verify the first line
    [Tags]    Functional   

        Start test    https://demo.guru99.com/test/login.html    chrome
        input email    //input[@id='email']    ngthuydung88@gmail.com
        input paswork    //input[@id='passwd']    Baochau@1
        click button    //button[@id='SubmitLogin']  
        verify key    Successfully Logged in...
        finish test



 
  
