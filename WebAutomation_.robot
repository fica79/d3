*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
OpenBrowser
    Open Browser    http://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Select Frame    id=iframe-09
    sleep    2
    Input Text    class=inputtext    parcov iz indije
    sleep    2
    Input Text    name:pass    ivan
    sleep    8
    Close Browser

OpenBrowser2
    Open Browser    http://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Select Frame    id=iframe-09
    sleep    2
    Select All From List    id:FromCity
    Close Browser

xpath
    Open Browser    https://facebook.com    chrome
    Maximize Browser Window
    sleep    4
    input text    xpath://*[@id="email"]    ifilipovic@synchrotek.com
    sleep    4
    Input Text    xpath://*[@id="pass"]    ivan
    sleep    8
    Close Browser

css selector
    Open Browser    https://facebook.com    chrome
    Maximize Browser Window
    sleep    3
    input text    css:#email    svinjskaglava@gmail.com
    sleep    3
    Input Text    css:#pass    ivan
    sleep    8
    Close Browser

absolute_Xpath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-09
    sleep    3
    Click Element    xpath://input[@value='bmw']    \    #(absolute Xpath) = /html/body/fieldset[3]/input[1]
    sleep    3
    [Teardown]    close browser    # if tc is failed

text4Xpath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-09
    sleep    3
    Element Text Should Be    xpath://option[text()='Toronto']    Toronto
    sleep    3

contains_function_4Xpath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-09
    sleep    3
    Click Element    xpath://input[contains(@value,'bmw')]
    sleep    4
    Close Browser

starts_with_function_4xPath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-09
    sleep    3
    Click Element    xpath://input[starts-with(@value,'bm')]
    sleep    4
    Close Browser

TextBoxDemo
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-09
    sleep    3
    Page Should Contain Textfield    xpath://input[@name='FirstName']    it has failed    debug
    sleep    3
    Input Text    xpath://input[@name='FirstName']    NgenDigital
    sleep    2
    Textfield Value Should Be    xpath://input[@name='FirstName']    NgenDigital
    sleep    3
    Clear Element Text    xpath://input[@name='FirstName']
    sleep    3
    Close Browser
    [Teardown]    close browser

button
    Open Browser    https://facebook.com    chrome
    Maximize Browser Window
    sleep    4
    Input Text    css:#email    ivan
    sleep    2
    Input Text    css:#pass    ivan
    sleep    2
    Click Button    xpath://input[@value='Log In']
    Close Browser
