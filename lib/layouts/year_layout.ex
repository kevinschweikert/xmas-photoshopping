defmodule XmasPhotoshopping.YearLayout do
  use Tableau.Layout,
    layout: XmasPhotoshopping.RootLayout

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <h1 class="text-4xl"><%= @page.year %></h1>
    <img class="rounded-sm" src={"https://picsum.photos/800?id=#{@page.year}"} alt={@page.year} />
    <.link href={"#{@site.config.base_path}/"}> Back </.link>
    """
  end
end
