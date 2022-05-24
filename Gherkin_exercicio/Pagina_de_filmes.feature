#language: pt

Funcionalidade: Página de filmes
SENDO um usuario da Netflix 
QUERO poder escolher os filmes que irei assistir na pagina de filmes
PARA ter uma melhor experiência  de visualização

Contexto: Estar na página de Filmes
 Dado que esteja na home
 Quando realizar uma buscar por um filmes existente
 E acessar a página do filme 



Cenário: Gêneros
 Quando acessar a categoria de Gêneros
 Então deverá aparecer as opções existentes no site

Cenário: Top 10 
 Quando acessar a categoria top 10
 Então deverá aparecer os 10 filmes mais curtidos do site


Cenário: Só na Netflix
 Quando acessado a categoria só na Neflix
 Então deverá aparecer os filmes exclusivos da plataforma


Cenário: assistir filme 
 Quando acessado o filme na netflix 
 Então deverá aparecer o filme selecionado para assistir 