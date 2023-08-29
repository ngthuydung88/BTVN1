*** Settings ***    
Library    SeleniumLibrary
Resource    ../tiki.vn/keyword_tiki.robot
Resource    ../tiki.vn/login_tiki.robot

*** Test Cases ***
[TC01] - Automation Test Tiki
    [Documentation]    Verify search tiki
    [Tags]    function

    start tiki    https://tiki.vn/    chrome    
    input keywords    //input[@data-view-id='main_search_form_input']    nồi chiên
       
    click keywords        //div[text()='nồi chiên không dầu']
    click find second product    4
    click buy button    Chọn mua
    # click account    //span[text()='Tài khoản']
    verify key    Xin chào,
    finish tiki



  

