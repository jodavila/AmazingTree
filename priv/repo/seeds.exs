# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Tree.Repo.insert!(%Tree.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Tree.Repo
alias Tree.Educacao.Instituto
 
Repo.delete_all("entities")

Repo.insert!(%Instituto{name: "Colegio Tecnico", entity_type: "network" })
Repo.insert!(%Instituto{name: "Colegio Tecnico Industrial B", entity_type: "school", inep: 123, parent_id: 1})
Repo.insert!(%Instituto{name: "Turma 71A", entity_type: "class", parent_id: 2 })
Repo.insert!(%Instituto{name: "Turma 71B", entity_type: "class", parent_id: 2 })