defmodule AppWeb.WebhookController do
  use AppWeb, :controller

  def show(conn, %{"request" => request}) do
    render(conn, "show.html", request: request)
  end

  def index(conn, %{"request" => request}), do: do_index(conn, request)
  def index(conn, _params), do: do_index(conn, "default")

  defp do_index(conn, request) do
    render(conn, "index.html", request: request)
  end
end
