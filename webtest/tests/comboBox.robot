*** Settings ***

Resource                resource.robot

Test Setup              Abrir Sessão
Test Teardown           Encerrar Sessão

*** Test Case ***

Scenario Selecting combo box options
    Given the user are in page with combo box
    When he select the box
    Then the option list should be displayed
    And an option should be selected by Label
    And other option should be selected by Value
