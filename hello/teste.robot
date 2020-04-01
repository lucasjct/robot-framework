*** Settings ***

Library    app.py


*** Test Case ***
Deve Retornar Mensagens de Boas Vindas

    ${result}   welcome     "Lucas"
    Log To Console      ${result}
    Should Be Equal     ${result}   Olá "Lucas" Bem vindo ao curso de RobotFramework!
