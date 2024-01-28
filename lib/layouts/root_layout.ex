defmodule XmasPhotoshopping.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!DOCTYPE HTML>
    <html>
      <head>
        <title>X-Mas Photoshopping</title>
        <link rel="stylesheet" type="text/css" href={"#{@site.config.base_path}/css/site.css"} />
      </head>
      <body class="m-4 flex flex-col items-center bg-gray-50 dark:bg-gray-900 dark:text-gray-50">
        <%= render(@inner_content) %>
      </body>
      <%= if Mix.env() == :dev do %>
        <XmasPhotoshopping.live_reload />
      <% end %>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end
end
