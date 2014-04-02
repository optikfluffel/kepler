defmodule Router do
  use Sugar.Router, plugs: [
      { Plugs.HotCodeReload, [] },
      { Plugs.StaticFiles, url: "/static", path: "priv/static" },

      # Uncomment the following line for session store
      # { Plugs.Session, name: "_sugar_session", adapter: Plugs.Session.Adapters.Ets },

      # Uncomment the following line for request logging,
      # and add 'applications: [:exlager],' to the application
      # Keyword list in your mix.exs
      # { Plugs.Logger, [] }
  ]

  # Uncomment the following line for request logging,
  # and add 'applications: [:exlager],' to the application
  # Keyword list in your mix.exs
  # plug Plugs.Logger

  # Define your routes here
  get "/", Kepler.Controllers.Main, :index
end
