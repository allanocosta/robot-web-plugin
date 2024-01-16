*** Settings ***
Documentation       Resource com as keywords gerais do projeto

Library             Collections
Library             OperatingSystem
Library             JSONLibrary
Resource            env.resource


*** Keywords ***
Get Fixtures
    [Arguments]             ${FILE_NAME}            ${METODO}
    ${data}                 Load Json From File     ${CURDIR}/../fixtures/${FILE_NAME}.json         encoding=utf-8
    Log                     ${data}
    RETURN                  ${data}[${METODO}]

Start Session
    Set Environment         $env
    New Browser             browser=${BROWSER}      headless=False
    New Page                ${BASE_URL}
    Sessionstorage Clear

Token In Session Storage Should Not Be Empty
    ${token}                Sessionstorage Get Item                         Token
    Should Not Be Empty     ${token}                O token do session storage não deve estar vazio.
    Log                     Token encontrado no session storage: ${token}
