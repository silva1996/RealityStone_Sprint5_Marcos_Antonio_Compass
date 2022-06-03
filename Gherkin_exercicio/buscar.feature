#linguagem: pt-br
@pdp
Funcionalidade: Busca
SENDO um usuario da Neflix
QUERO poder escolher filmes, series ou documenatarios
PARA poder assistir 


Contexto: Estar na home
 Dado que esteja na home


Cenario: Buscar 
Quando realizar uma busca por um Títulos, Gente ou Gêneros
Então  deverão ser retornados resultados na busca

Esquema do Cenário: Buscar  
Quando buscar pela opção "<opção>"
Então deverão ser retornados resultados da busca

      Exemplos: 
|     opções        |
|     Títulos       |
|     Gente         |
|     Gêneros       |

# primeira execeução = Títulos
# segunda execeução = Gente
# terceira execeução = Gêneros 