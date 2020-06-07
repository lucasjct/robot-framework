*** Settings ***

Library                 SeleniumLibrary


*** Variable ***

${BROWSER}              firefox 
${URL}                  http://automationpractice.com/index.php?controller=search&orderby=position&orderway=desc&search_query=Short&submit_search=
${TOTAL}                css=#center_column > h1
${GRID}                 id=grid


*** Keywords ***

Entrar no site com a url da busca
    Go To                  ${URL}

Verificar o numero de resultados
   ${obterTexto}   Get Webelements     ${TOTAL}

    FOR  ${ITEMS}  IN     @{obterTexto}
        Log To Console  \n${ITEMS.text}
        Log             \n${ITEMS.text}
    END

Verificar List ou Grid
    Element Text Should Be   ${GRID}     Grid
   
         
Abrir Sessão 
    Open Browser             ${URL}      ${BROWSER}

#Encerrar Sessão
    #Close  Browser