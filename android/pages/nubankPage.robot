*** Settings ***

Resource    ../../base.robot

Library    XML

*** Variables ***
${TELA_INICIAL}              xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
${BUTTON_PERFIL}             xpath=//android.widget.ScrollView/android.view.View[1]
${BUTTON_OCULTAR_SALDO}      xpath=//android.widget.ScrollView/android.widget.Button[1]
${BUTTON__DUVIDAS}           xpath=//android.widget.ScrollView/android.widget.Button[2]
${BUTTON_CONVITE}            xpath=//android.widget.ScrollView/android.widget.Button[3]
${BUTTON_QUERO_CONHECER}     xpath=//android.view.View[@content-desc="Quero conhecer"]
${BUTTON_PIX}                xpath=//android.view.View[@content-desc="Pix"]
${BUTTON_PAGAR}              xpath=//android.view.View[@content-desc="Pagar"]
${BUTTON_INVEST_CONHECER}    xpath=//android.view.View[@content-desc="Conhecer"]
${BUTTON_TRANSFERIR}         xpath=//android.view.View[@content-desc="Transferir"]
${BUTTON_DEPOSITAR}          xpath=//android.view.View[@content-desc="Depositar"]
${BUTTON_EMPRESTIMOS}        xpath=//android.view.View[@content-desc="Empréstimos"]
${BUTTON_RECARGA}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BUTTON_COBRAR}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BUTTON_DOACAO}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BUTTON_ATALHOS}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${BUTTON_DICA}               xpath=//android.view.View[contains(@content-desc,"Dica")]
${BUTTON_INDICAR_AMIGOS}     xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${CARD_MEUS_CARTOES}         xpath=//android.view.View[@content-desc="Meus cartões"]
${CARD_EMPRESTIMO_DISP}      xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${CARD_GUARDAR_DINHEIRO}     xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${FUNCAO_CARTAO_CREDITO}     xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${FUNCAO_EMPRESTIMO}         xpath=//android.view.View[contains(@content-desc,"Empréstimo")]
${FUNCAO_INVESTIMENTOS}      xpath=//android.view.View[contains(@content-desc,"Investimentos")]
${FUNCAO_SEGURO_VIDA}        xpath=//android.view.View[contains(@content-desc,"Seguro de vida")]
${FUNCAO_DESCUBRA_MAIS}      xpath=//android.view.View[@content-desc="Descubra mais"]
${FUNCAO_WHATSAPP}           xpath=//android.view.View[contains(@content-desc,"WhatsApp")]
${NOME_USUARIO}              xpath=//android.view.View[contains(@content-desc,"Olá, Breno Freitas")]
${NOME_ESPERADO}             Olá, Breno Freitas
${CONTA_E_SALDO}             xpath=//android.view.View[contains(@content-desc,"Conta")]
${CARROSSEL_01}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${CARROSSEL_02}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${CARROSSEL_03}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${CARROSSEL_04}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${MENU_CARROSSEL}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]
${MENU_CARROSSEL_SALDO}      xpath=//android.widget.HorizontalScrollView
${TELA_DEPOSITAR}            xpath=//android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]
${TELA_CONVITE}              xpath=//android.widget.ImageView[contains(@content-desc,"Resgate seus amigos da fila do banco")]
${TELA_SALDO}                xpath=//android.widget.ScrollView
${DESCUBRA_MAIS_2}           xpath=//android.view.View[contains(@content-desc,"Indique seus amigos")]
${PAGINA_DESCUBRA_MAIS}      xpath=//android.widget.ImageView[contains(@content-desc,"Resgate seus amigos da fila do banco")]
${DINHEIRO_GUARDADO}         xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]
${SALDO_CONTA}               xpath=//android.view.View[contains(@content-desc,"R$ 181,79")]
${SALDO_ESPERADO}            R$ 181,79
${HISTORICO}                 xpath=//android.view.View[@content-desc="Histórico"]
${PIX_DEPOSITAR}             xpath=//android.view.View[contains(@content-desc,"Pix")]
${BOLETO_DEPOSITAR}          xpath=//android.view.View[contains(@content-desc,"Boleto")]
${TED_DEPOSITAR}             xpath=//android.view.View[contains(@content-desc,"TED/DOC")]
${SALARIO_DEPOSITAR}         xpath=//android.view.View[contains(@content-desc,"Trazer seu salário")]

         
*** Keywords ***

Dado que o usuário está na tela inicial do aplicativo
    Wait Until Element Is Visible    ${TELA_INICIAL}    timeout=10s
    Element Should Be Visible    ${BUTTON_PERFIL}
    
Quando o usuário visualizar o menu carrossel
    Wait Until Element Is Visible    ${MENU_CARROSSEL}

Então os atalhos "Pix", "Pagar", "Transferir", "Depositar", "Emprestimos", "Recarga celular", "Cobrar", "Doação" e "Encontar atalhos" devem estar presentes
    Element Should Be Visible    ${BUTTON_PIX} 
    Element Should Be Visible    ${BUTTON_PAGAR} 
    Element Should Be Visible    ${BUTTON_TRANSFERIR}
    Element Should Be Visible    ${BUTTON_DEPOSITAR}
    Element Should Be Visible    ${BUTTON_EMPRESTIMOS}
    Element Should Be Visible    ${BUTTON_RECARGA}
    Element Should Be Visible    ${BUTTON_DOACAO}
    Element Should Be Visible    ${BUTTON_ATALHOS}
    Element Should Be Visible    ${BUTTON_COBRAR}

Quando o usuário visualizar a tela inicial
    Wait Until Element Is Visible    ${TELA_INICIAL}
    Element Should Be Visible    ${BUTTON_PERFIL}

Então os atalhos "Meus cartoes", "Cartao de credito", "Emprestimos", "Investimentos", "Seguro de vida", "Descubra mais" devem estar presentes
    Element Should Be Visible    ${CARD_MEUS_CARTOES} 
    Element Should Be Visible    ${FUNCAO_CARTAO_CREDITO}
    Element Should Be Visible    ${FUNCAO_EMPRESTIMO}  
    Element Should Be Visible    ${BUTTON_DEPOSITAR}
    Element Should Be Visible    ${BUTTON_EMPRESTIMOS}
    Element Should Be Visible    ${FUNCAO_INVESTIMENTOS}
    Element Should Be Visible    ${FUNCAO_SEGURO_VIDA}
    Element Should Be Visible    ${FUNCAO_DESCUBRA_MAIS} 
   
Entao devera exibir o nome do usuario logado no App
    [Arguments]    ${NOME_ESPERADO}
    Element Should Be Visible    ${NOME_USUARIO}
    ${nome_atual}    Get Element Attribute    ${NOME_USUARIO}    contentDescription
    Should Be Equal    ${nome_atual}    ${NOME_ESPERADO}

Quando o usuário clicar no botao de visualização do saldo
    Espera o elemento e faz o click    ${BUTTON_OCULTAR_SALDO}
    Verifica se contem o text no content-desc   ${CONTA_E_SALDO}    Conta R$ 181,79

Então deverá ocultar o saldo
    Verifica se não contem o text no content-desc    ${CONTA_E_SALDO}    Conta R$ 181,79

Quando o usuário clicar no botao de indicar amigos
    Espera o elemento e faz o click    ${BUTTON_CONVITE} 
    
Então deverá ser redirecionado para tela de convite
    Wait Until Element Is Visible   ${TELA_CONVITE}  
    Verifica se contem o text no content-desc   ${TELA_CONVITE}    Resgate seus amigos da fila do banco


Então deverá exibir o botao de duvidas
   Wait Until Element Is Visible   ${BUTTON__DUVIDAS}
 
Quando o usuário clicar em uma notificação
   Swipe By Percent    50    90    50    5
   Espera o elemento e faz o click    ${DESCUBRA_MAIS_2} 

Então deverá ser direcionado para a tela de notificações
   Page Should Contain Element    ${PAGINA_DESCUBRA_MAIS}
   Verifica se contem o text no content-desc    ${PAGINA_DESCUBRA_MAIS}   Resgate seus amigos da fila do banco 
    
E as notificações devem ser exibidas    
    Wait Until Element Is Visible    ${PAGINA_DESCUBRA_MAIS}
    Page Should Contain Element    ${PAGINA_DESCUBRA_MAIS}
    Verifica se contem o text no content-desc   ${PAGINA_DESCUBRA_MAIS}    Resgate seus amigos da fila do banco 


Dado que o usuário acessa a tela de saldo e histórico da conta
    Click Element    ${CONTA_E_SALDO}

Quando o usuário visualizar a tela de saldo
    Wait Until Element Is Visible    ${TELA_SALDO}
    Element Should Be Visible    ${TELA_SALDO}

Então o saldo da conta deve ser exibido corretamente
  Verifica se contem o text no content-desc   ${SALDO_CONTA}    R$ 181,79

Então as transações recentes devem ser exibidas corretamente
    Wait Until Element Is Visible    ${HISTORICO}
    Verifica se contem o text no content-desc   ${HISTORICO}    Histórico

Então os botões "Depositar", "Pagar", "Transferir", "Emprestimos", e "Cobrar" devem estar presentes e funcionais
    Page Should Contain Element    ${MENU_CARROSSEL_SALDO}
    Element Should Be Visible    ${BUTTON_DEPOSITAR} 
    Element Should Be Visible    ${BUTTON_PAGAR}
    Element Should Be Visible    ${BUTTON_TRANSFERIR}  
    Element Should Be Visible    ${BUTTON_EMPRESTIMOS}
    Element Should Be Visible    ${BUTTON_COBRAR}
    
Quando acessar a funcionalidade Depositar
    Click Element    ${CARROSSEL_04}

Então terá acesso a tela de informações da área Depositar
    Wait Until Element Is Visible    ${TELA_DEPOSITAR}
    Verifica se contem o text no content-desc    ${TELA_DEPOSITAR}    Como você quer depositar na sua conta do Nubank

 Então os campos "Pix", "Boleto", "TED/DOC" e "Trazer seu salario" devem estar presentes
    Wait Until Element Is Visible    ${TELA_DEPOSITAR}
    Element Should Be Visible    ${PIX_DEPOSITAR}
    Verifica se contem o text no content-desc    ${PIX_DEPOSITAR}    Pix
    Verifica se contem o text no content-desc
    ...    ${PIX_DEPOSITAR}
    ...    Sem custo e cai na hora, mesmo de madrugada e fim de semana
       
    Element Should Be Visible    ${BOLETO_DEPOSITAR}
    Verifica se contem o text no content-desc    ${BOLETO_DEPOSITAR}    Boleto
    Verifica se contem o text no content-desc
    ...    ${BOLETO_DEPOSITAR}
    ...    Boleto
    
    Element Should Be Visible    ${TED_DEPOSITAR}
    Verifica se contem o text no content-desc    ${TED_DEPOSITAR}    TED/DOC
    Verifica se contem o text no content-desc
    ...    ${TED_DEPOSITAR}
    ...    Pode ter custo e cai somente em horário comercial de dias úteis
    
    Element Should Be Visible    ${SALARIO_DEPOSITAR}
    Verifica se contem o text no content-desc    ${SALARIO_DEPOSITAR}    Trazer seu salário
    Verifica se contem o text no content-desc
    ...    ${SALARIO_DEPOSITAR}
    ...    Receba todo mês direto aqui na sua conta, sem custo
