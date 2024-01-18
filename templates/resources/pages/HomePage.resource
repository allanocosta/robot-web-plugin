*** Settings ***
Documentation       Resource com as keywords da home page da aplicação

Resource            components/Header.resource


*** Keywords ***
Go To Home Page
    Go To                   ${BASE_URL}
    Home Menu Should Be Selected
