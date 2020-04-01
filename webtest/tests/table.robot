*** Settings ***

Resource                 resource.robot

Test Setup               Abrir Sessão    
Test Teardown            Encerrar Sessão



*** Test Case ***

Scenario One - Check data table
    Given user be in the page's table
    When the user access one value
    Then the robot should return the value acessed
