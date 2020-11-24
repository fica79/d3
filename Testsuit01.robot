*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary
Resource          Userdefinedkeywords.txt
Library           AutoItLibrary

*** Variables ***
${var1}           4    # This is my first scaler variable
${var2}           4    # This is my 2nd variable
@{USER}           bharat    bharat
&{Credentials}    username=bharat    password=bharat

*** Test Cases ***
TC01
    [Documentation]    Thisi is my first test case. \ \ It is used to compare two variables
    ...    *Testcase01* \ _This will be in Italic_
    ...    link is \ \ http://www.google.com
    [Tags]    Login
    Should Be Equal    ${var1}    ${var2}

TC02
    [Tags]    Login
    [Setup]    Setupdemo
    [Teardown]    Teardowndemo

TC03
    [Tags]    Login
    Should Be Equal As Strings    ${Credentials}[username]    ${Credentials}[password]

TC04
    [Tags]    Login
    Should Be True    4    4

TC05
    [Template]    Should Be Equal As Integers    # this is a template
    [Timeout]    2 minutes 20 seconds    # This is my test timeout
    4    4
    6    6
    8    8
    12    12

TC06

TC List variable

execellib
    ${EXECDIR}

excel_read_demo
    Open Excel Document    C:/Users/fi79c/AppData/Local/Programs/Python/Python38-32/demo.xls
    Read Excel Cell    sheet 1    2    1

open_calculator
    Run    calc.exe

*** Keywords ***
SetupDemo
    Log To Console    this is setup method

Teardowndemo
    Log To Console    This is teardown
