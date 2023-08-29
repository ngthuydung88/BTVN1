*** Settings ***
Library   SeleniumLibrary


*** Keywords ***
Tìm kiếm từ khóa "MSB"
    [Arguments]    ${input_key}    ${input_location}    
    Press Keys    ${input_key}    ${input_location} 
    Sleep    5s
   
Click search
    [Arguments]    ${index}
    Click Element     ${index}
    Sleep    4s
Out Popup
    [Arguments]    ${out_pap}
    Click Element    ${out_pap}
    Sleep    10s

Verify trang có chứa
    [Arguments]    ${text_key}
    Wait Until Element Is Visible    //div[@class="main-banner-section"]//div[text()='${text_key}']   10s
    # Page Should Contain Element    //div[text()='${text_key}']    


