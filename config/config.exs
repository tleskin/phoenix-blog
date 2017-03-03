# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog,
  ecto_repos: [Blog.Repo]

# Configures the endpoint
config :blog, Blog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u6e0fgF//n34NB0jplmnp47oBI2hSn8VWA9UfvB+l2QzpcCxRhTfxkW+iPj0uIok",
  render_errors: [view: Blog.ErrorView, accepts: ~w(json)],
  pubsub: [name: Blog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

  config :phoenix, :format_encoders,
    "json-api": Poison

  config :mime, :types, %{
    "application/vnd.api+json" => ["json-api"]
  }

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
