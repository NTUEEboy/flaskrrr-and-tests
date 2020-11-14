*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     admin
${VALID PASSWORD}    admin
${INVALID USER}     ming
${INVALID PASSWORD}    ming
${LOGIN URL}      http://127.0.0.1:5000/

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}