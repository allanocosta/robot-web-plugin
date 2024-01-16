*** Settings ***
Documentation       Configurações de ambiente para os testes.


*** Variables ***
${BASE_URL}         http://localhost:8080
${API_ENDPOINT}     ${BASE_URL}/v1
${BROWSER}          chromium
${USER}             ${EMPTY}
${PASS}             ${EMPTY}
${DB_HOST}          ${EMPTY}
${DB_PORT}          ${EMPTY}
${DB_USER}          ${EMPTY}
${DB_PASSWORD}      ${EMPTY}
${DB_NAME}          ${EMPTY}


*** Keywords ***
Set Environment
    [Arguments]             ${env}
    IF    $env == 'PRD' or $env == 'prd' or $env == 'production' or $env == 'producao' or $env == 'PROD' or $env == 'prod'
        Set Production Variables
    ELSE IF    $env == 'staging' or $env == 'stg' or $env == 'STAGING' or $env == 'STG'
        Set Staging Variables
    ELSE IF    $env == 'homologation' or $env == 'hml' or $env == 'HOMOLOGATION' or $env == 'HML'
        Set Homologation Variables
    ELSE IF    $env == 'quality' or $env == 'qa' or $env == 'QUALITY' or $env == 'QA'
        Set Quality Variables
    ELSE IF    $env == 'development' or $env == 'dev' or $env == 'DEVELOPMENT' or $env == 'DEV'
        Set Development Variables
    ELSE
        Set Development Variables
    END

Set Production Variables
    Set Global Variable     ${BASE_URL}             https://automationexercise.com
    Set Global Variable     ${API_ENDPOINT}         ${BASE_URL}/api
    Set Test Variable       ${USER}
    Set Test Variable       ${PASS}

Set Staging Variables
    Set Global Variable     ${BASE_URL}             http://localhost:8080
    Set Global Variable     ${API_ENDPOINT}         ${BASE_URL}/api
    Set Test Variable       ${USER}
    Set Test Variable       ${PASS}

Set Development Variables
    Set Global Variable     ${BASE_URL}             https://automationexercise-dev.com
    Set Global Variable     ${API_ENDPOINT}         ${BASE_URL}/api
    Set Test Variable       ${USER}
    Set Test Variable       ${PASS}

Set Quality Variables
    Set Global Variable     ${BASE_URL}             https://automationexercise-qa.com
    Set Global Variable     ${API_ENDPOINT}         ${BASE_URL}/api
    Set Test Variable       ${USER}
    Set Test Variable       ${PASS}

Set Homologation Variables
    Set Global Variable     ${BASE_URL}             https://automationexercise-hml.com
    Set Global Variable     ${API_ENDPOINT}         ${BASE_URL}/api
    Set Test Variable       ${USER}
    Set Test Variable       ${PASS}
