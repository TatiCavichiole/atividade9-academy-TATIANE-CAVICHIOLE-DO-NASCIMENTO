*** Settings ***
Resource    ../utils/config.robot

Test Setup           Open app
Test Teardown        Teardown


*** Test Cases ***



CT015 - Verificar campos de empréstimo
        Dado que o usuário está na tela inicial do aplicativo
        Quando o usuário acessar a tela de Empréstimo
        Então os campos "Entenda como funciona" e "Novo emprestimo" devem estar presentes

CT016 - Verificar o valor disponivel para emprestimo
            Quando o usuário acessar a tela de Empréstimo
            Então a mensagem de informação do valor disponivel para emprestimo deve estar visivel

CT017 - Deve exibir um link com a mensagem Entenda como funciona
            Quando o usuário acessar a tela de Empréstimo
            Então visualizará o link com a mensagem: Entenda como funciona

CT018 - Deve exibir um botão de Novo Empréstimo
            Quando o usuário acessar a tela de Empréstimo
            Então deve visualizar o botão de Novo Empréstimo

CT019 - Deve ser possível fechar a tela de Empréstimos com o botão X no canto superior esquerdo da tela
            Quando o usuário acessar a tela de Empréstimo
            E executar o botão X "fechar" localizado no canto superior esquerdo da tela
            Então o usuário deverá ser redirecionado para tela inical