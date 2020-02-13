defmodule HealthCheckPlug do
  @moduledoc """
  Check your application health by always return 200 with the body `{"status":"ok"}`.
  It is useful to setup monitoring tools that hit this endpoint to check if you app is alive.

  ## Usage

  Add the healthcheck into your phoenix router:

  ```elixir
  # router.ex
  forward "/monitoring/health_check", HealthCheckPlug
  ```
  """
  @behaviour Plug

  import Plug.Conn

  @impl Plug
  def init(opts), do: opts

  @impl Plug
  def call(conn, _opts) do
    body = ~S({"status":"ok"})

    conn
    |> put_resp_header("content-type", "application/json")
    |> send_resp(200, body)
    |> halt()
  end
end
