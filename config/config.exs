# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todos,
  ecto_repos: [Todos.Repo]

# Configures the endpoint
config :todos, TodosWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uUuI/gHT8+RLLWth4q0DT0Z/su9qUUSJvOK9CV7EW8q26Je2N9SMGtfTr/EFK8n6",
  render_errors: [view: TodosWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Todos.PubSub,
  live_view: [signing_salt: "L13x+ilE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
