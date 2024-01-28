import Config

url = System.fetch_env!("URL")
base_path = System.fetch_env!("BASE_PATH")

config :tableau, :config,
  url: url,
  base_path: base_path

# config :tableau, Tableau.PageExtension, permalink: "#{base_path}/year/:year"
