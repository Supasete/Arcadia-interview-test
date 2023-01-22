*** Settings ***

Library    SeleniumLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***
Google search "Ladkrabang University" & Click link No.5
    [Documentation]    This test case verifies that user is able to successfully search Ladkrabang University & click link No.5
    Open Browser    https://www.google.co.th/    chrome
    Wait Until Element Is Visible    //*[@class='gLFyf']    timeout=5
    Input Text    //*[@class='gLFyf']    ladkrabang university
    Submit Form    
    ${TEXT}    Get Text    //*[@class='SPZz6b']/h2
    Log To Console    ${TEXT}
    Element Text Should Be    //*[@class='SPZz6b']/h2    สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง
    Click Element   //*[@id="rso"]/div[5]/div/div/div[1]
    Close Browser