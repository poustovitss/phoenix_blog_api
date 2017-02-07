# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_blog,
  ecto_repos: [PhoenixBlog.Repo]

# Configures the endpoint
config :phoenix_blog, PhoenixBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "seLg5Vw/zLzfSuqJssSj2TVgO9ysCFrah7jQDRykcd4rphNOUSw3cyl1v80PapeC",
  render_errors: [view: PhoenixBlog.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
