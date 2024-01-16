*** Settings ***
Documentation       Resource com as keywords do header da aplicação

Library             Browser


*** Variables ***
${NAV_HOME}     css=.navbar-nav > li >> xpath=//a[@href="/"]


*** Keywords ***
Home Menu Should Be Selected
    Wait For Elements State                         ${NAV_HOME} >> xpath=//a[@style="color: orange;"]
