import Config

config :tableau, :config,
  url: System.fetch_env!("URL"),
  base_path: System.fetch_env!("BASE_PATH")
