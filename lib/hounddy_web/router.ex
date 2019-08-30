defmodule HounddyWeb.Router do
  use HounddyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug HounddyWeb.Context
  end

  if Mix.env() == :dev do
    forward "/sent-emails", Bamboo.SentEmailViewerPlug
  end

  scope "/" do
    pipe_through :api

    forward("/api", Absinthe.Plug, schema: HounddyWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: HounddyWeb.Schema)
    end
  end
end
