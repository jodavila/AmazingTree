defmodule Tree.Repo.Migrations.CreateEntities do
  use Ecto.Migration

  def change do
    create table(:entities) do
      add :name, :string
      add :entity_type, :string
      add :inep, :integer
      add :parent_id, references(:entities, on_delete: :nothing)

      timestamps()
    end

    create index(:entities, [:parent_id])
  end
end
