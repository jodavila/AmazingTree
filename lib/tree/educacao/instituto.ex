defmodule Tree.Educacao.Instituto do
  use Ecto.Schema
  import Ecto.Changeset

  schema "entities" do
    field :entity_type, :string
    field :inep, :integer
    field :name, :string
    field :parent_id, :id

    timestamps()
  end

  @doc false
  def changeset(instituto, attrs) do
    instituto
    |> cast(attrs, [:name, :entity_type, :inep])
    |> validate_required([:name, :entity_type, :inep])
  end
end
