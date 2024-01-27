defmodule XmasPhotoshopping.YearLayout do
  use Tableau.Layout,
    layout: XmasPhotoshopping.RootLayout

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <h1 class="text-4xl"><%= @page.year %></h1>
    <img class="rounded-sm" src={"https://picsum.photos/800?id=#{:rand.uniform(100)}"} alt="2083" />
    <.link navigate="/"> Back </.link>
    """
  end
end
