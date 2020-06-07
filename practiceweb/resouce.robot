*** Settings ***

Library                 Selenium2Library


*** Variable ***

${BROWSER}              firefox 
${URL}                  http://automationpractice.com/index.php?controller=search&orderby=position&orderway=desc&search_query=blouse&submit_search=
${TOTAL}                id=page

*** Keywords ***

Entrar no site com a url da busca
    Go To                  ${URL}

Verificar o numero de resultados

   ${GetText}   Get Webelements     ${TOTAL}

   FOR  ${ITEMS}    IN  @{GetText}
        Log To Console  ${ITEMS.text}
        
    END


Abrir Sessão 
    Open Browser                            ${URL}          ${BROWSER}

#Encerrar Sessão