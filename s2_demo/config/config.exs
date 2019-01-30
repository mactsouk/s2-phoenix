# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :s2_demo,
  ecto_repos: [S2Demo.Repo]

# Configures the endpoint
config :s2_demo, S2DemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vLACKatAhQgVYNi/Qz5X7JwP734OukBxBrp1qITLy7xy7Y1aFeVrStDW08u0aux3",
  render_errors: [view: S2DemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: S2Demo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
