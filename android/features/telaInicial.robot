*** Settings ***
Resource    ../utils/config.robot

Test Setup           Open app
Test Teardown        Teardown


*** Test Cases ***

CT001 - Acessar as funcionalidades do App
    Dado que o usuário está na tela inicial do aplicativo

CT002 - Verificar a presença de todos os atalhos no menu carrossel
    Quando o usuário visualizar o menu carrossel
    Então os atalhos "Pix", "Pagar", "Transferir", "Depositar", "Emprestimos", "Recarga celular", "Cobrar", "Doação" e "Encontar atalhos" devem estar presentes