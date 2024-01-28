defmodule XmasPhotoshopping.IndexPage do
  use Tableau.Page, layout: XmasPhotoshopping.RootLayout, permalink: "/"
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div>
      <h1 class="text-4xl m-4 text-center font-bold">X-Mas Photoshopping</h1>
    </div>

    <div class="grid grid-cols-4 gap-4">
      <.year :for={year <- @pages} year={year} base_path={@site.config.base_path} />
    </div>
    """
  end

  def year(assigns) do
    ~H"""
    <div>
      <.link href={@base_path <> @year.permalink}>
        <img class="rounded-sm" src={"https://picsum.photos/200?id=#{:rand.uniform(100)}"} alt="2023" />
        <span><%= @year.opts.year %></span>
      </.link>
    </div>
    """
  end
end
