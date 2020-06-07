*** Settings ***

Resource                resouce.robot

Test Setup              Abrir Sessão
#Test Teardown           Encerrar Sessão

*** Test Case ***

Cenario I - obter elementos da pagina de busca
    Entrar no site com a url da busca
    Verificar o numero de resultados
    Verificar List ou Grid
