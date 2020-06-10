
*** Settings ***

Documentation           Test Simulator Enviroment QA-Ninja: https://training-wheels-protocol.herokuapp.com/  
Library                 SeleniumLibrary


*** Variable ***

${BROWSER}              firefox 
${URL}                  https://training-wheels-protocol.herokuapp.com/  
${CLICKCHECK}           xpath://*[@id="content"]/ul/li[2]/a 
${TOR}                  id=thor                 
${CAP}                  css=input[value='cap'] 
${IRONMAN}              css=input[value='iron-man']
${PANTER}               xpath=//*[@id='checkboxes']/input[7]

# Variable second scenario
${DROPDOWN}             id=dropdown

*** Keywords ***
###                     ****First Scenario*****

Given the user access the homepage
  Go To                                ${URL}  
  Title Should Be                      Training Wheels Protocol

When he click in checkcbox
    #Wait Until Element is Visible       css:#body > div:nth-child(1) > a > img
    Mouse Over                          ${CLICKCHECK}       
    Click Link                          ${CLICKCHECK}  
    Capture Page Screenshot   

Then next page should be checkcbox
    Page Should Contain Element         css:#content > div > h3
    Select Checkbox                     ${TOR}
    Checkbox Should Be Selected         ${TOR}      #A diferença entre os métodos para checkbox é que o primeiro seleciona e o segundo faz a conferência se foi selecionado
    #Close Browser
    Select Checkbox                     ${CAP}                   #seletor feito com querySelector
    Checkbox Should Be Selected         ${CAP}
    Select Checkbox                     ${IRONMAN}
    Checkbox Should Be Selected         ${IRONMAN}
    Select Checkbox                     ${PANTER}     #sete é a hierarquia do elemento na tag 'form'
    Checkbox Should Be Selected         ${PANTER} 


                # *** Second Scenario *****

Given the user are in page with combo box
    Go To                          ${URL}/dropdown
    Mouse Over                     ${DROPDOWN} 
When he select the box
    Click Element                   ${DROPDOWN} 

Then the option list should be displayed
    Capture Page Screenshot 

And an option should be selected by Label
    Select From List By Label           class:avenger-list              Tony Stark
    ${SELECTED}=                        Get Selected List Value         ${DROPDOWN} 
    Should Be Equal                     ${SELECTED}                     3
    Capture Page Screenshot 


And other option should be selected by Value
    Go To                           ${URL}/dropdown
    Mouse Over                      ${DROPDOWN} 
    Click Element                   ${DROPDOWN} 
    Select From List By Value       ${DROPDOWN}                      7
    ${SELECTED}=                    Get Selected List Label         ${DROPDOWN} 
    Should Be Equal                 ${SELECTED}                     Scott Lang


                     #*** Scenario Three ***

Given the user access page with radio button
    Go To                                      ${URL}/radios
    Page Should Contain Radio Button            id:content           


When user select one option 
    Select Radio Button                          movies      cap
    Radio Button Should Be Set To                movies      cap


Then the option should be displayed selected
    Capture Page Screenshot

                        #**** Scenario Four - table ****


Given user be in the page's table

    Go to                                       ${URL}/tables
    Page Should Contain Element                 id=actors

When the user access one value
    ${TARGET}=                                  Get WebElement         xpath=.//tr[contains(., '@chadwickboseman')]
    Log                                         ${TARGET.text}
    Log To Console                              ${TARGET.text}
    Should Contain                              ${TARGET.text}         $ 700.000
    Should Contain                              ${TARGET.text}  	   Pantera Negra         
    #Table Row Should Contain                    id=actors       1         10.000.000     Homem de Ferro	

Then the robot should return the value acessed
    Capture Page Screenshot

        ###Ganchos
Abrir Sessão 
    Open Browser                            ${URL}          ${BROWSER}

Encerrar Sessão
    Capture Page Screenshot
    Close Browser