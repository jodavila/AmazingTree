# Tree

Sobre o projeto:
Construir uma API usando Phoenix (elixir) e banco de dados MySQL visando permitir a um parceiro da Árvore replicar a sua estrutura de Redes, Escolas, Turmas e administrá-la conforme necessário.

A modelagem deverá utilizar apenas uma entidade (Entity), que poderá representar qualquer nível da estrutura hierárquica.


## Para inicar o servidor :

  * Com o projeto aberto instalar as dependencias `mix deps.get`
  * Gerar a base de dados e inicialiar as tabelas com `mix ecto.setup` e `mix ecto.migrate` 
  * Iniciar o Phoenix com `mix phx.server` ou o terminal interativo `iex -S mix phx.server`

Acessar no navegador [`localhost:4000`](http://localhost:4000).
