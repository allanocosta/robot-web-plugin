*** Settings ***
Documentation       Resource com as keywords da home page da aplicação

Resource            ${CURDIR}/../base.resource
Resource            ${CURDIR}/../env.resource
Resource            components/Header.resource
Library             Browser


*** Keywords ***
Go To Home Page
    Go To                   ${BASE_URL}
    Wait For Elements State                         selector
