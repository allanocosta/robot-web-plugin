*** Settings ***
Documentation       Resource com as keywords da home page da aplicação

Library             Browser


*** Keywords ***
Go To Home Page
    Go To                   ${BASE_URL}
