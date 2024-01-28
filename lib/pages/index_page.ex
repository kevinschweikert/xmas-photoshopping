defmodule XmasPhotoshopping.IndexPage do
  use Tableau.Page, layout: XmasPhotoshopping.RootLayout, permalink: "/"
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div>
      <h1 class="text-4xl m-4 text-center font-bold">X-Mas Photoshopping</h1>
    </div>

    <div class="grid grid-cols-4 gap-4">
      <.year
        :for={
          year <- Enum.sort_by(@pages, fn page -> page.opts.year |> String.to_integer() end, :desc)
        }
        year={year}
        base_path={@site.config.base_path}
      />
    </div>
    """
  end

  def year(assigns) do
    ~H"""
    <div>
      <.link href={@base_path <> @year.permalink}>
        <img
          class="rounded-sm aspect-square object-cover"
          src={"#{@base_path}/xmas-photoshopping-#{@year.opts.year}.jpg"}
          alt={@year.opts.year}
        />
        <span><%= @year.opts.year %></span>
      </.link>
    </div>
    """
  end
end
