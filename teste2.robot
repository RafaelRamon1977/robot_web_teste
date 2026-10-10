*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

*** Variables ***
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_HERBERT}  https://google.com.br/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456


*** Keywords ***

Esperar implicitante
    [Arguments]  ${tempo}
    Set selenium implicit wait  ${TEMPO}s

Abrir Site Herbert
    Open Browser  ${SITE_URL_HERBERT}  chrome

   
Abrir Site

    Open Browser  ${SITE_URL}  chrome

Abrir esse site
    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento    10   


Clicar em Link de Login

    Click Element  xpath://a[@href='/login']

Digitar email

    Input Text  id:user  ${USUARIO_EMAIL}

Digitar senha

    Input Text  id:password  ${USUARIO_SENHA}

Clicar em logar

    Click Element  id:btnLogin

Verificar Texto de Login Realizado
   ${TEXTO_ATUAL}   Get Text  id:swal2-title
   Should Be Equal As Strings  ${TEXTO_ATUAL}  Login realizado

Tirar Print
    Capture Page Screenshot

Esperar Elemento
    [Arguments]  ${TEMPO}
    Set Selenium Implicit Wait  ${TEMPO}s

*** Test Cases ***

Cenário 1: Acessando o site da QAZANDO
    Abrir Site
    Esperar Elemento    10
    Clicar em Link de Login
    Tirar Print
    Esperar Elemento    10
    Digitar email
    Tirar Print
    Digitar senha
    Esperar Elemento    10
    Clicar em logar
    Esperar Elemento    10
    Verificar Texto de Login Realizado
    Tirar Print
    
