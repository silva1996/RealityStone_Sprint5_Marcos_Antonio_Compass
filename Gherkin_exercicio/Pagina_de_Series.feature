#language: pt

Funcionalidade: Página de Series
SENDO um usuario da Netflix 
QUERO poder escolher os Series que irei assistir na pagina de Series
PARA ter uma melhor experiência  de visualização

Contexto: Estar na página de Series
 Dado que esteja na home
 Quando realizar uma buscar por um Series existente
 E acessar a página de Series



Cenário: Gêneros
 Quando acessar a categoria de Gêneros
 Então deverá aparecer as opções existentes no site

Cenário: Top 10 
 Quando acessar a categoria top 10
 Então deverá aparecer as 10 Series mais curtidas do site


Cenário: Só na Netflix
 Quando acessado a categoria só na Neflix
 Então deverá aparecer as Series exclusivos da plataforma


Cenário: assistir Serie
 Quando acessado a Series na netflix 
 Então deverá aparecer a Serie selecionado para assistir 