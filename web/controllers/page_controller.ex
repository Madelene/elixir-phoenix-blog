defmodule MaddieBlogPhoenix.PageController do
  use MaddieBlogPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
