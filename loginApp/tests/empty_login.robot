*** Settings ***
Documentation     A test suite with a single test for empty input.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
EmptyLoginTest
    Open Browser To Login Page
    Click Button    id=login-btn
    Log    Test completed