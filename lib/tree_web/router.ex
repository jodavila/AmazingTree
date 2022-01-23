defmodule TreeWeb.Router do
  use TreeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {TreeWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TreeWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
   scope "/api", TreeWeb do
     pipe_through :api
      # todas as funções de InstitutoController
      # resources "/entites", InstitutoController, only: [:index, :show]

      # atraves do scope é possivel fazer o versionamento das rotas

      # scope "/v2", V2, as: :v2 do
      #  scope "/partners", Partners, as: :partners do
      #    get "/objeto", InstitutoController , only: [:index, :show, :update, :create]
      #  end 
      # end 

      get  "/v2/partners/entities", InstitutoController, :index
      get  "/v2/partners/entities/id/:id", InstitutoController, :show
      post "/v2/partners/entities" , InstitutoController, :create
      put  "/v2/partners/entities/id/:id", InstitutoController, :update
       
   end

end
