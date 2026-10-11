*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_HERBERT} https://google.com.br/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456


** Keywords **
Abrir Site Herbert
    Open Browser  ${SITE_URL_HERBERT}  chrome

   
Abrir Site

    Open Browser  ${SITE_URL}  chrome

Abrir esse site
    [Arguments]  ${SITE_URL}
    Open Browser  ${SITE_URL}  chrome

Aguardar Página Carregar

    Sleep  5s

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
     

** Test Cases **

Cenário 1: Acessando o site da QAZANDO
    
    Abrir Site
    Aguardar Página Carregar
    Clicar em Link de Login
    Aguardar Página Carregar
    Digitar email
    Digitar senha
    Tirar Print
    Aguardar Página Carregar
    Clicar em logar
    Tirar Print
    Aguardar Página Carregar
    Verificar Texto de Login Realizado
    Tirar Print

Cenário 2: Testando Robot
    
    Abrir Site Herbert
    Aguardar Página Carregar
    Clicar em Link de Login
    Aguardar Página Carregar
    Digitar email
    Digitar senha
    Aguardar Página Carregar
    Clicar em logar
    Aguardar Página Carregar
    Verificar Texto de Login Realizado

Cenário 3: Testando valor no teste
    [Tags]  teste3
    Abrir esse site  https://automationpratice.com.br/
    Aguardar Página Carregar
    Clicar em Link de Login
    Aguardar Página Carregar
    Digitar email
    Tirar Print
    Digitar senha
    Aguardar Página Carregar
    Clicar em logar
    Tirar Print
    Aguardar Página Carregar
    Verificar Texto de Login Realizado
    Tirar Print
