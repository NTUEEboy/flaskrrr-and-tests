*** Settings ***
Documentation     A test suite with a single test for empty input.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
InvalidLoginTest
    Open Browser To Login Page
    Input Text    id=user    ${EMPTY USER}
    Input Text    id=pwd    ${EMPTY PASSWORD}
    Click Button    id=login-btn
    Log    Test completed