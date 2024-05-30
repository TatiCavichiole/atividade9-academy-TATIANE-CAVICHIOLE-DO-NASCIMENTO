*** Settings ***
Resource    ../utils/config.robot

Test Setup           Open app
Test Teardown        Teardown


*** Test Cases ***

CT013 - Acessar a tela de depósito
    Dado que o usuário está na tela inicial do aplicativo
    Quando acessar a funcionalidade Depositar
    Então terá acesso a tela de informações da área Depositar

CT014 - Deve ser possivel visualizar todas as opçoes de deposito
        Dado que o usuário está na tela inicial do aplicativo
        Quando acessar a funcionalidade Depositar
        Então os campos "Pix", "Boleto", "TED/DOC" e "Trazer seu salario" devem estar presentes