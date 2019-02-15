# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :teaching_resources,
  ecto_repos: [TeachingResources.Repo]

# Configures the endpoint
config :teaching_resources, TeachingResourcesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CmQ1rLFGK5Iq3Gz1rNSAFe9iMmEriVRlZ4UWMq7/Fa02Y/3OS37kE2U9TBL2/Fne",
  render_errors: [view: TeachingResourcesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TeachingResources.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
