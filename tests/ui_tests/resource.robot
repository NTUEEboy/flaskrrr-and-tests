*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           ../../chromedriver_binary/

*** Variables ***
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     admin
${VALID PASSWORD}    admin
${INVALID USER}     ming
${INVALID PASSWORD}    ming
${LOGIN URL}      http://127.0.0.1:5000/

*** Keywords ***
Add chromedriver to PATH
    Evaluate    chromedriver_binary.add_chromedriver_to_path()     modules=chromedriver_binary

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Check Response Message If Equals
    [Arguments]    ${EXPECTED MESSAGE}
    ${msg}    Get Text    class=login-status
    Should Be Equal    ${msg}    ${EXPECTED MESSAGE}

Click login button
    Click Button    id=login-btn

Input valid username and password
    Input Text    id=user    ${VALID USER}
    Input Text    id=pwd    ${VALID PASSWORD}

Input invalid username and password
    Input Text    id=user    ${INVALID USER}
    Input Text    id=pwd    ${INVALID PASSWORD}
    