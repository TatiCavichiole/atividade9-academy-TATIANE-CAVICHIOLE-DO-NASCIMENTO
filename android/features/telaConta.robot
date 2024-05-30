*** Settings ***
Resource    ../utils/config.robot

Test Setup           Open app
Test Teardown        Teardown


*** Test Cases ***

CT009 - Acessar a tela de saldo e histórico da conta
    Dado que o usuário acessa a tela de saldo e histórico da conta

CT010 - Verificar saldo da conta
    Dado que o usuário acessa a tela de saldo e histórico da conta
    Quando o usuário visualizar a tela de saldo
    Então o saldo da conta deve ser exibido corretamente 
    

CT011 - Verificar histórico da conta
    Dado que o usuário acessa a tela de saldo e histórico da conta
    Quando o usuário visualizar a tela de saldo
    Então as transações recentes devem ser exibidas corretamente
        
CT012 - Verificar botões na tela de saldo e histórico
    Dado que o usuário acessa a tela de saldo e histórico da conta
    Quando o usuário visualizar a tela de saldo
    Então os botões "Depositar", "Pagar", "Transferir", "Emprestimos", e "Cobrar" devem estar presentes e funcionais
      
