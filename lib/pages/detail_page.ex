defmodule XmasPhotoshopping.DetailPage do
  use Tableau.Page, layout: XmasPhotoshopping.RootLayout, permalink: "/:year", year: 2023
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <img class="rounded-sm" src={"https://picsum.photos/200?id=#{"@year"}"} alt="2023" />
    """
  end
end
