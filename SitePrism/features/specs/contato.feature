#language: pt
@regression
@contact
Funcionalidade: Contato
    Contexto: Estar na hom
        Dado que esteja na home

    @contact_ok
    Cenário: Entrar em contato pelo formulário Homepage
        Quando entrar em contato pelo formulário da home
        Então deverá apresentar um modal de mensagem enviada

