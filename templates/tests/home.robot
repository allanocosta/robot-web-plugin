*** Settings ***
Documentation       Suite de teste da feature home page

Resource            ${CURDIR}/../resources/base.resource
Resource            ${CURDIR}/../resources/pages/HomePage.resource
Resource            ${CURDIR}/../resources/pages/components/Header.resource

Suite Teardown      Close Browser
Test Setup          Start Session
Test Teardown       Take Screenshot

Test Tags           Home


*** Test Cases ***
Deve acessar a home page
    [Documentation]    Deve acesar a home page com sucesso
    Go To Home Page
    Home Menu Should Be Selected
