defmodule TreeWeb.InstitutoView do
  use TreeWeb, :view
  alias TreeWeb.InstitutoView

  def render("index.json", %{entities: entities}) do
    %{data: render_many(entities, InstitutoView, "instituto.json")}
  end

  def render("show.json", %{instituto: instituto}) do
    %{data: render_one(instituto, InstitutoView, "instituto.json")}
  end

  def render("instituto.json", %{instituto: instituto}) do
    %{
      id: instituto.id,
      name: instituto.name,
      entity_type: instituto.entity_type,
      inep: instituto.inep
    }
  end
end
