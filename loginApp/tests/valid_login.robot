*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
ValidLoginTest
    Open Browser To Login Page
    Input Text    id=user    ${VALID USER}
    Input Text    id=pwd    ${VALID PASSWORD}
    Click Button    id=login-btn
    Log    Test completed
