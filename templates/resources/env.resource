*** Settings ***
Documentation       Configurações de ambiente para os testes.


*** Variables ***
${ENV}              ${EMPTY}
${BASE_URL}         http://localhost:8080
${API_ENDPOINT}     ${BASE_URL}/v1
${BROWSER}          chromium
${HEADLESS}         False
${USER}             ${EMPTY}
${PASS}             ${EMPTY}
${DB_HOST}          ${EMPTY}
${DB_PORT}          ${EMPTY}
${DB_USER}          ${EMPTY}
${DB_PASSWORD}      ${EMPTY}
${DB_NAME}          ${EMPTY}


*** Keywords ***
Set Environment
    IF    $ENV == 'PRD' or $ENV == 'prd' or $ENV == 'PROD' or $ENV == 'prod' or $ENV == 'PRODUCTION' or $ENV == 'production'
        Set Production Variables
    ELSE IF    $ENV == 'staging' or $ENV == 'stg' or $ENV == 'STAGING' or $ENV == 'STG'
        Set Staging Variables
    ELSE IF    $ENV == 'homologation' or $ENV == 'hml' or $ENV == 'HOMOLOGATION' or $ENV == 'HML'
        Set Homologation Variables
    ELSE IF    $ENV == 'quality' or $ENV == 'qa' or $ENV == 'QUALITY' or $ENV == 'QA'
        Set Quality Variables
    ELSE IF    $ENV == 'development' or $ENV == 'dev' or $ENV == 'DEVELOPMENT' or $ENV == 'DEV'
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
