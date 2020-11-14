*** Settings ***
Documentation     A test suite with a single test for invalid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
InvalidLoginTest
    Open Browser To Login Page
    Input Text    id=user    ${INVALID USER}
    Input Text    id=pwd    ${INVALID PASSWORD}
    Click Button    id=login-btn
    Log    Test completed