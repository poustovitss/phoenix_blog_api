defmodule PhoenixBlog.Router do
  use PhoenixBlog.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixBlog do
    pipe_through :api

    resources "/posts", PostController, except: [:new, :edit]
  end
end
