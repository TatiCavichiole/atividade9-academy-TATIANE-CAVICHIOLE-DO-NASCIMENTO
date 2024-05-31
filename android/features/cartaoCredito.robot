*** Settings ***
Resource    ../utils/config.robot

Test Setup           Open app
Test Teardown        Teardown


*** Test Cases ***
       
CT020 - Deve ser possível acessar a funcionalidade Cartão de Crédito
    Dado que o usuário está na tela inicial do aplicativo
    Quando o usuário acessar a tela de Cartão de crédito
    Então as informações "Fatura atual", "Limite Disponível" devem estar presentes

CT021 - Verificar botões na tela de Cartão de crédito
    Quando o usuário acessar a tela de Cartão de crédito
    Então os botões "Pagar Fatura", "Resumo de faturas", "Ajustar limites", "Cartao virtual", "Bloquear cartao" e "Indicar amigos" devem estar presentes
            
CT022 - Verificar informações de ultimas compras no cartão de crédito
    Quando o usuário acessar a tela de Cartão de crédito
    Então as informações das compras recentes devem estar visiveis