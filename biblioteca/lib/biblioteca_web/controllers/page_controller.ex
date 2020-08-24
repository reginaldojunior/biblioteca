defmodule BibliotecaWeb.PageController do
  use BibliotecaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
