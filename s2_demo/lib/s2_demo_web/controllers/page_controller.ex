defmodule S2DemoWeb.PageController do
  use S2DemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
