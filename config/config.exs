# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :meechuv1,
  ecto_repos: [Meechuv1.Repo]

# Configures the endpoint
config :meechuv1, Meechuv1Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a6OLKqXLknKHCFJy1Bo/9fPnSNfuLKiygCdfTTkZe399sXpGgmQLty0kOUPlaUK7",
  render_errors: [view: Meechuv1Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Meechuv1.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Meechuv1.Coherence.User,
  repo: Meechuv1.Repo,
  module: Meechuv1,
  web_module: Meechuv1Web,
  router: Meechuv1Web.Router,
  messages_backend: Meechuv1Web.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

config :coherence, Meechuv1Web.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%

  config :arc,
    storage: Arc.Storage.Local
