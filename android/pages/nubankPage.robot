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
${BUTTON_NOVO_EMPRESTIMO}    xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${BUTTON_INDICAR_AMIGOS}     xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${BUTTON_FECHAR}             xpath=//android.widget.Button[1]
${CARD_MEUS_CARTOES}         xpath=//android.view.View[@content-desc="Meus cartões"]
${EMPRESTIMO_DISP}           xpath=//android.view.View[@content-desc="O valor disponível no
...    momento é de R$ 10.000,00"]
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
${TELA_EMPRESTIMO}           xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]
${DESCUBRA_MAIS_2}           xpath=//android.view.View[contains(@content-desc,"Indique seus amigos")]
${PAGINA_DESCUBRA_MAIS}      xpath=//android.widget.ImageView[contains(@content-desc,"Resgate seus amigos da fila do banco")]
${DINHEIRO_GUARDADO}         xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]
${SALDO_CONTA}               xpath=//android.view.View[contains(@content-desc,"R$ 181,79")]
${SALDO_ESPERADO}            Conta 
...    R$ 181,79
${HISTORICO}                 xpath=//android.view.View[@content-desc="Histórico"]
${PIX_DEPOSITAR}             xpath=//android.view.View[contains(@content-desc,"Pix")]
${BOLETO_DEPOSITAR}          xpath=//android.view.View[contains(@content-desc,"Boleto")]
${TED_DEPOSITAR}             xpath=//android.view.View[contains(@content-desc,"TED/DOC")]
${SALARIO_DEPOSITAR}         xpath=//android.view.View[contains(@content-desc,"Trazer seu salário")]
${CARROSSEL_EMPRESTIMO}      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${EMPRESTIMO_FUNCIONAMENTO}  xpath=//android.view.View[@content-desc="Entenda como funciona >"]         
${FATURA_CARTAO}             xpath=//android.view.View[@content-desc="R$ 780,72"]
${LIMITE_DISP_CARTAO}        xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"]
${PAGAR_FATURA_CARTAO}       xpath=//android.view.View[@content-desc="Pagar fatura"]
${RESUMO_FATURA_CARTAO}      xpath=//android.view.View[@content-desc="Resumo de faturas"]
${AJUSTAR_FATURA_CARTAO}     xpath=//android.view.View[@content-desc="Ajustar limites"]
${VIRTUAL_FATURA_CARTAO}     xpath=//android.view.View[@content-desc="Cartão virtual"]
${BLOQUEAR_FATURA_CARTAO}    xpath=//android.view.View[@content-desc="Bloquear cartão"]
${INDICAR_FATURA_CARTAO}     xpath=//android.view.View[@content-desc="Indicar amigos"]
${CARROSSEL_CARTAO}          xpath=//android.widget.HorizontalScrollView
${PAG_CARTAO}                xpath=//android.view.View[contains(@content-desc,"Pagamento recebido")]
${PAG_SUPERMERCADO}          xpath=//android.view.View[contains(@content-desc,"Supermercado")]
${TRANSFERENCIA_ENVIADA}     xpath=//android.view.View[contains(@content-desc,"Transferência enviada")]
${SALDO_DISPONIVEL}          xpath=//android.view.View[@content-desc="Saldo disponível"]


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
    Swipe By Percent    50    90    50    5
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
    Element Should Not Contain Text    ${CONTA_E_SALDO}    R$ 181,79
    #Verifica se contem o text no content-desc   ${CONTA_E_SALDO}    R$ 181,79

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
    Wait Until Element Is Visible    ${SALDO_DISPONIVEL}
    Element Should Be Visible    ${SALDO_DISPONIVEL}

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
Quando o usuário acessar a tela de Empréstimo
    Swipe By Percent    50    50    08    50
    Wait Until Page Contains Element    ${CARROSSEL_01}
    Click Element    ${CARROSSEL_EMPRESTIMO}
Então os campos "Entenda como funciona" e "Novo emprestimo" devem estar presentes
    Wait Until Page Contains Element    ${TELA_EMPRESTIMO}
    Verifica se contem o text no content-desc
    ...    ${EMPRESTIMO_FUNCIONAMENTO}
    ...    Entenda como funciona >
    Element Should Be Visible    ${BUTTON_NOVO_EMPRESTIMO}

Então a mensagem de informação do valor disponivel para emprestimo deve estar visivel
    Wait Until Page Contains Element    ${TELA_EMPRESTIMO}
    Page Should Contain Element    ${TELA_EMPRESTIMO}
    Verifica se contem o text no content-desc
    ...    ${EMPRESTIMO_DISP}
    ...   O valor disponível no momento é de R$ 10.000,00
       
Então visualizará o link com a mensagem: Entenda como funciona
    Page Should Contain Element    ${EMPRESTIMO_FUNCIONAMENTO}
    Verifica se contem o text no content-desc    ${EMPRESTIMO_FUNCIONAMENTO}    Entenda como funciona >

Então deve visualizar o botão de Novo Empréstimo
    Page Should Contain Element    ${BUTTON_NOVO_EMPRESTIMO}
    Verifica se contem o text no content-desc    ${BUTTON_NOVO_EMPRESTIMO}    NOVO EMPRÉSTIMO

E executar o botão X "fechar" localizado no canto superior esquerdo da tela
    Click Element    ${BUTTON_FECHAR}
Então o usuário deverá ser redirecionado para tela inical
    Wait Until Page Contains Element    ${TELA_INICIAL}
    Element Should Be Visible    ${TELA_INICIAL}

Quando o usuário acessar a tela de Cartão de crédito
    Swipe By Percent    50    50    50    10
    Wait Until Element Is Visible    ${FUNCAO_CARTAO_CREDITO}
    Click Element    ${FUNCAO_CARTAO_CREDITO}

Então as informações "Fatura atual", "Limite Disponível" devem estar presentes
    Verifica se contem o text no content-desc    ${FATURA_CARTAO}    R$ 780,72
    Verifica se contem o text no content-desc    ${LIMITE_DISP_CARTAO}    Limite disponível R$ 806,78

Então os botões "Pagar Fatura", "Resumo de faturas", "Ajustar limites", "Cartao virtual", "Bloquear cartao" e "Indicar amigos" devem estar presentes
    Wait Until Element Is Visible    ${CARROSSEL_CARTAO}
    Page Should Contain Element    ${PAGAR_FATURA_CARTAO}
    Verifica se contem o text no content-desc    ${RESUMO_FATURA_CARTAO}    Resumo de faturas
    Page Should Contain Element    ${RESUMO_FATURA_CARTAO}
    Verifica se contem o text no content-desc    ${RESUMO_FATURA_CARTAO}    Resumo de faturas
    Page Should Contain Element    ${AJUSTAR_FATURA_CARTAO}
    Verifica se contem o text no content-desc    ${AJUSTAR_FATURA_CARTAO}    Ajustar limites
    Page Should Contain Element    ${VIRTUAL_FATURA_CARTAO}
    Verifica se contem o text no content-desc    ${VIRTUAL_FATURA_CARTAO}    Cartão virtual
    Swipe By Percent    80    80    20    80
    Element Should Be Visible    ${BLOQUEAR_FATURA_CARTAO}
    Verifica se contem o text no content-desc    ${BLOQUEAR_FATURA_CARTAO}    Bloquear cartão
    Page Should Contain Element    ${INDICAR_FATURA_CARTAO}
    Verifica se contem o text no content-desc    ${INDICAR_FATURA_CARTAO}    Indicar amigos

Então as informações das compras recentes devem estar visiveis
    Swipe By Percent    50    70    50    10
    Element Should Be Visible    ${PAG_CARTAO}
    Page Should Contain Element    ${PAG_CARTAO}
    Verifica se contem o text no content-desc    ${PAG_CARTAO}    Pagamento recebido
    Verifica se contem o text no content-desc    ${PAG_CARTAO}    VOCÊ PAGOU R$ 50,00
    Verifica se contem o text no content-desc    ${PAG_CARTAO}    R$ 30,00
    Verifica se contem o text no content-desc    ${PAG_CARTAO}    Pix
    Verifica se contem o text no content-desc    ${PAG_CARTAO}    Ontem
    Element Should Be Visible    ${PAG_SUPERMERCADO}
    Verifica se contem o text no content-desc    ${PAG_SUPERMERCADO}    Supermercado
    Verifica se contem o text no content-desc    ${PAG_SUPERMERCADO}    BRENO FREITAS
    Verifica se contem o text no content-desc    ${PAG_SUPERMERCADO}    R$ 30,00
    Verifica se contem o text no content-desc    ${PAG_SUPERMERCADO}    Pix
    Verifica se contem o text no content-desc    ${PAG_SUPERMERCADO}    Ontem
    Element Should Be Visible    ${TRANSFERENCIA_ENVIADA}
    Verifica se contem o text no content-desc    ${TRANSFERENCIA_ENVIADA}    Transferência enviada
    Verifica se contem o text no content-desc    ${TRANSFERENCIA_ENVIADA}    BRENO FREITAS
    Verifica se contem o text no content-desc    ${TRANSFERENCIA_ENVIADA}    R$ 30,00
    Verifica se contem o text no content-desc    ${TRANSFERENCIA_ENVIADA}    Pix
    Verifica se contem o text no content-desc    ${TRANSFERENCIA_ENVIADA}    Ontem

