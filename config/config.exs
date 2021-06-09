# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crud_users,
  ecto_repos: [CrudUsers.Repo]

# Configures the endpoint
config :crud_users, CrudUsersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0GLU4kJCYE/P7+O3m1liQlzdtuR98cyg+grgVDexKsYsLb9pbJUd27s9pLgWbwk9",
  render_errors: [view: CrudUsersWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CrudUsers.PubSub,
  live_view: [signing_salt: "blbTOk97"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
