*** Settings ***

Library     SeleniumLibrary



*** Variable ***

${URL}          https://training-wheels-protocol.herokuapp.com/
${BROWSER}      chrome


*** Test Case ***

Cenário 1 - Conferir Título
    Verificar se o title da página é o correspondente


*** Keywords ***
Verificar se o title da página é o correspondente   
    Open Browser         ${URL}      ${BROWSER}
    Title Should Be      Training Wheels Protocol
    Close Browser


