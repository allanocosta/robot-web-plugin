*** Settings ***
Documentation       Resource com as keywords do header da aplicação


*** Variables ***
${NAV_BAR}      css=.navbar-nav > li


*** Keywords ***
Home Menu Should Be Selected
    Wait For Elements State                         ${NAV_BAR} >> xpath=//a[@href="/" and @style="color: orange;"]
