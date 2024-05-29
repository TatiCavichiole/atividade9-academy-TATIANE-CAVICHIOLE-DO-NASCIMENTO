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

CT003 - Verificar a presença de todos os atalhos e botoes na tela inicial
    Quando o usuário visualizar a tela inicial
    Então os atalhos "Meus cartoes", "Cartao de credito", "Emprestimos", "Investimentos", "Seguro de vida", "Descubra mais" devem estar presentes

CT004 - Deve exibir o nome do usuario e saldo na tela inicial
    Quando o usuário visualizar a tela inicial
    Entao devera exibir o nome do usuario logado no App    ${NOME_ESPERADO}
        
CT005 - Deve ser possivel ocultar a visualização do saldo na tela inicial
    Quando o usuário clicar no botao de visualização do saldo
    Então deverá ocultar o saldo

CT006 - Deve exibir o botao de indicar amigos na tela inicial
    Quando o usuário clicar no botao de indicar amigos
    Então deverá ser redirecionado para tela de convite
        
CT007 - Deve exibir o botao de duvidas na tela inicial
    Quando o usuário visualizar a tela inicial
    Então deverá exibir o botao de duvidas
           
CT008 - Deve exibir notificações na tela inicial
    Quando o usuário clicar em uma notificação
    Então deverá ser direcionado para a tela de notificações
    E as notificações devem ser exibidas