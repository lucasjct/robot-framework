*** Settings ***

Resource                 resource.robot

Test Setup               Abrir Sessão    
Test Teardown            Encerrar Sessão



*** Test Case ***

Scenario One - Check data table
    Given user be in the table's page
    When the user access one value
    Then should be return the value acessed
