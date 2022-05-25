defmodule ProjectManagementApiWeb.PageController do
  use ProjectManagementApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
