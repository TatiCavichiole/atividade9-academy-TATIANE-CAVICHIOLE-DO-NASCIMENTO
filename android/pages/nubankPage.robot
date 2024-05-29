*** Settings ***

Resource    ../../base.robot


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
${CONTA_E_SALDO}             xpath=//android.view.View[contains(@content-desc,"Conta")]
${CARROSSEL_01}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${CARROSSEL_02}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${CARROSSEL_03}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${CARROSSEL_04}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${MENU_CARROSSEL}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]

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
