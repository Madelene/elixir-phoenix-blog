# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :maddie_blog_phoenix,
  ecto_repos: [MaddieBlogPhoenix.Repo]

# Configures the endpoint
config :maddie_blog_phoenix, MaddieBlogPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mEIN0CHqFFPMrwwSPIq9xPyEZFFr/9ki1RytFDpJrm3sNo8ORBUKJetF1bCrfKbf",
  render_errors: [view: MaddieBlogPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MaddieBlogPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
