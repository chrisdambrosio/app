defmodule AppWeb.WebhookController do
  use AppWeb, :controller

  def show(conn, %{"request" => request}) do
    render(conn, "show.html", request: request)
  end

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
