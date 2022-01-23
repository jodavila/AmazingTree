defmodule TreeWeb.InstitutoController do
  use TreeWeb, :controller

  alias Tree.Educacao
  alias Tree.Educacao.Instituto

  action_fallback TreeWeb.FallbackController

  def create(conn, %{"instituto" => instituto_params}) do
    with {:ok, %Instituto{} = instituto} <- Educacao.create_instituto(instituto_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.instituto_path(conn, :show, instituto))
      |> render("show.json", instituto: instituto)
    end
  end

  def index(conn, _params) do
    entities = Educacao.list_entities()
    # lista_tree = Educacao.procura_todos_relacionados(id)

    render(conn, "index.json", entities: entities)
  end

  
  def show(conn, %{"id" => id}) do
    instituto = Educacao.get_instituto!(id)
    # lista_tree = Educacao.procura_todos_relacionados(id)
    render(conn, "show.json", instituto: instituto)
  end

  def update(conn, %{"id" => id, "instituto" => instituto_params}) do
    instituto = Educacao.get_instituto!(id)

    with {:ok, %Instituto{} = instituto} <- Educacao.update_instituto(instituto, instituto_params) do
      render(conn, "show.json", instituto: instituto)
    end
  end

  def delete(conn, %{"id" => id}) do
    instituto = Educacao.get_instituto!(id)

    with {:ok, %Instituto{}} <- Educacao.delete_instituto(instituto) do
      # mostrar como ficou apos o delete
      #send_resp(conn, :no_content, "")
      render("show.json", instituto: instituto)
    end
  end
end
