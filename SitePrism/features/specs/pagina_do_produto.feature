#language : pt

@regression
@pdp
Funcionalidade: Busca
    COMO usuário do Ecommerce AdvantageOnlineShopping
    QUERO poder personalizar os produtos que irei comprar na página no produto
    PARA poder ter uma melhor experiência de compras

Contexto: Estar na página de um produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto 

@change_color_pdp
Cenário: Trocar a cor do produto na PDP 
    Quando alterar a cor do produto
    Então deverá alterar a imagem apresentada na PDP