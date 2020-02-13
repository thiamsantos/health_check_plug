defmodule HealthCheckPlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  setup do
    %{conn: conn(:post, "/")}
  end

  describe "call/1" do
    test "returns ok", %{conn: conn} do
      conn = HealthCheckPlug.call(conn, [])

      assert conn.status == 200
      assert conn.resp_body == ~S({"status":"ok"})
      assert get_resp_header(conn, "content-type") == ["application/json"]
      assert conn.state == :sent
    end
  end
end
