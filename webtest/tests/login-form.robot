*** Settings ***

Resource            resource.robot
Test Setup          Abrir Sessão 
Test Teardown       Encerrar Sessão

*** Test Case ***

Login Com Sucesso
    Go To                        ${URL}/login
    Login With                   stark           jarvis!
    Should See Loged Started     Tony Stark

Login Com Erro

    [tags]                 login_error
    Go To                  ${URL}/login
    Login With             stark           123456
    Alert Login            Senha é invalida!

    

Usuario não cadastrado

    [tags]                  login-user-404
    Go To                   ${URL}/login
    Login With              test                           123456
    Alert Login            O usuário informado não está cadastrado!




*** Keywords ***

Login With  
    [Arguments]             ${NAME}        ${PASSWORD}

    Input Text              css=input[name="username"]       ${NAME} 
    Input Text              css=input[name="password"]       ${PASSWORD}    
    Click Element           class=btn-login

Alert Login
    [Arguments]             ${ALERT}

    ${MESSAGE}=             Get WebElement               id=flash
    Should Contain          ${MESSAGE.text}              ${ALERT}

Should See Loged Started
    [Arguments]             ${fullName}

    Page Should Contain     Olá, ${fullName}. Você acessou uma área logada!
