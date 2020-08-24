# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :biblioteca,
  ecto_repos: [Biblioteca.Repo]

# Configures the endpoint
config :biblioteca, BibliotecaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2pG/rxWdYRShWmppLgrtfVraj0hfN165LYD1LbdwRHj3o/LAKIoTqlp2p7O9f1pC",
  render_errors: [view: BibliotecaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Biblioteca.PubSub,
  live_view: [signing_salt: "3sc22xZC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
