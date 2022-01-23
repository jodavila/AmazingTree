defmodule TreeWeb.PageController do
  use TreeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
