
Funcionalidade: Validar todos os atalhos do menu carrossel da homepage e botões
    Como usuário do aplicativo
    Desejo acessar as funcionalidades disponíveis
    Para realizar consultas e transações

    Contexto: Acessar as funcionalidades do App
        Dado que o usuário está na tela inicial do aplicativo

        Cenário: Verificar a presença de todos os atalhos no menu carrossel
            Quando o usuário visualizar o menu carrossel
            Então os atalhos "Pix", "Pagar", "Transferir", "Depositar", "Emprestimos", "Recarga celular", "Cobrar", "Doação" e "Encontar atalhos" devem estar presentes

        Cenário: Verificar a presença de todos os atalhos e botoes na tela inicial
            Quando o usuário visualizar a tela inicial
            Então os atalhos "Meus cartoes", "Cartao de credito", "Emprestimos", "Investimentos", "Seguro de vida", "Descubra mais" devem estar presentes

        Cenário: Deve exibir o nome do usuario e saldo na tela inicial
            Quando o usuário visualizar a tela inicial
            Entao devera exibir o nome do usuario logado no App
        
        Cenário: Deve ser possivel ocultar a visualização do saldo na tela inicial
            Quando o usuário clicar no botao de visualização do saldo
            Então deverá ocultar o saldo

        Cenário: Deve exibir o botao de indicar amigos na tela inicial
            Quando o usuário clicar no botao de indicar amigos
            Então deverá ser redirecionado para tela de convite
        
        Cenário: Deve exibir o botao de duvidas na tela inicial
            Quando o usuário visualizar a tela inicial
            Então deverá exibir o botao de duvidas
           
        Cenário: Deve exibir a opçao de Decubra mais na tela inicial
            Quando o usuário clicar em uma notificação
            Então deverá ser direcionado para a tela de notificações
            E as notificações devem ser exibidas


Funcionalidade: Validar o saldo e o histórico da conta e os botões disponíveis na tela
    Como usuário do aplicativo
    Desejo visualizar o saldo e o histórico da conta
    Para acompanhar minhas finanças

    Contexto: Acessar a tela de saldo e histórico da conta
        Dado que o usuário está na tela de saldo e histórico da conta

        Cenário: Verificar saldo da conta
            Quando o usuário acessar a tela de saldo
            Então o saldo da conta deve ser exibido corretamente
            E o saldo deve estar atualizado

        Cenário: Verificar histórico da conta
            Quando o usuário acessar a tela de saldo
            Então as transações recentes devem ser exibidas corretamente
        
        Cenário: Verificar botões na tela de saldo e histórico
            Quando o usuário acessar a tela de saldo e histórico
            Então os botões "Depositar", "Pagar", "Transferir", "Emprestimos", e "Cobrar" devem estar presentes
            E os botões devem estar funcionando corretamente        


Funcionalidade: Validar a tela de depósito e seus botões
    Como usuário do aplicativo
    Desejo realizar depósitos na minha conta
    Para aumentar meu saldo

    Contexto: Acessar a tela de depósito
        Dado que o usuário está na tela de depósito

        Cenário: Verificar campos de depósito
            Quando o usuário acessar a tela de depósito
            Então os campos "Pix", "Boleto", "TED/DOC" e "Trazer seu salario" devem estar presentes


Funcionalidade: Validar a tela de Empréstimo e seus botões
    Como usuário do aplicativo
    Desejo solicitar um empréstimo
    Para obter crédito

    Contexto: Acessar a tela de Empréstimo
        Dado que o usuário está na tela de Empréstimo

        Cenário: Verificar campos de empréstimo
            Quando o usuário acessar a tela de Empréstimo
            Então os campos "Entenda como funciona" e "Novo emprestimo" devem estar presentes

        Cenário: Verificar o valor disponivel para emprestimo
            Quando o usuário acessar a tela de Empréstimo
            Então a mensagem de informação do valor disponivel para emprestimo deve estar visivel


Funcionalidade: Validar a tela de Cartão de crédito e seus botões
    Como usuário do aplicativo
    Desejo gerenciar meu cartão de crédito
    Para controlar meus gastos e limites

    Contexto: Acessar a tela de Cartão de crédito
        Dado que o usuário está na tela de Cartão de crédito

        Cenário: Verificar informações do cartão de crédito
            Quando o usuário acessar a tela de Cartão de crédito
            Então as informações "Fatura atual", "Limite Disponível" devem estar presentes

        Cenário: Verificar botões na tela de Cartão de crédito
            Quando o usuário acessar a tela de Cartão de crédito
            Então os botões "Pagar Fatura", "Resumo de faturas", "Ajustar limites", "Cartao virtual", "Bloquear cartao" e "Indicar amigos" devem estar presentes
            
        Cenário: Verificar informações de ultimas compras no cartão de crédito
            Quando o usuário acessar a tela de Cartão de crédito
            Então as informações das compras recentes devem estar visiveis
     