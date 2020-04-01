*** Settings ***

Resource                resource.robot

Test Setup              Abrir Sessão
Test Teardown           Encerra Sessão



*** Test Case ***

Scenario 1 - accessing home and ckecking the title
    Given the user access the homepage
    When he click in checkcbox
    Then next page should be checkcbox
   
