*** Settings ***
Documentation     login
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid login
    [Setup]    Open Browser To Login Page
    Input valid username and password
    Click login button
    Check Response Message If Equals    success login
    [Teardown]    Close All Browsers

Invalid login
    [Setup]    Open Browser To Login Page
    Input invalid username and password
    Click login button
    Check Response Message If Equals    username or(and) password is(are) incorrect
    [Teardown]    Close All Browsers

Empty login
    [Setup]    Open Browser To Login Page
    Click login button
    Check Response Message If Equals    username or(and) password is(are) empty
    [Teardown]    Close All Browsers
