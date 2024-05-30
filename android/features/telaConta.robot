*** Settings ***
Resource    ../utils/config.robot

Test Setup           Open app
Test Teardown        Teardown


*** Test Cases ***

CT009 - Acessar a tela de saldo e histórico da conta
    Dado que o usuário está na tela de saldo e histórico da conta

CT010 - Verificar saldo da conta
    Quando o usuário visualizar a tela de saldo
    Então o saldo da conta deve ser exibido corretamente    ${SALDO_CONTA} 
    

CT011 - Verificar histórico da conta
    Quando o usuário visualizar a tela de saldo
    Então as transações recentes devem ser exibidas corretamente
        
CT012 - Verificar botões na tela de saldo e histórico
    Quando o usuário visualizar a tela de saldo e histórico
    Então os botões "Depositar", "Pagar", "Transferir", "Emprestimos", e "Cobrar" devem estar presentes
    E os botões devem estar funcionando corretamente        
