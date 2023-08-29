*** Settings ***
Library    SeleniumLibrary   
Resource    ../Google/keywork_google.robot
Resource    ../Google/login.robot
 


*** Test Cases ***
[AUT] - Automation Test google
    [Documentation]    truy cap google
    [Tags]    Functional

    Truy cập google    https://www.google.com/    chrome
    Tìm kiếm từ khóa "MSB"    //textarea[@id='APjFqb']    MSB+RETURN 
    Click search    //h3[text()='MSB']
    Out Popup    (//div[@class='pop-up-porlet-banner'])[2]//span
    Verify trang có chứa    Chọn thẻ phù hợp với bạn
    finish


