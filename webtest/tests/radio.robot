*** Settings ***

Resource        resource.robot

Test Setup      Abrir Sessão 
Test Teardown   Encerrar Sessão

*** Test Case ***
Scenario 1 - Testing radio button
    Given the user access page with radio button
    When user select one option 
    Then the option should be displayed selected