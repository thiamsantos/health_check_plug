# HealthCheckPlug

[![Build Status](https://github.com/thiamsantos/health_check_plug/workflows/CI/badge.svg)](https://github.com/thiamsantos/health_check_plug/actions)

Check your application health by always return 200 with the body `{"status":"ok"}`.
It is useful to setup monitoring tools that hit this endpoint to check if you app is alive.

## Installation

The package can be installed
by adding `health_check_plug` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:health_check_plug, "~> 0.1.0"}
  ]
end
```

## Usage

Add the healthcheck into your phoenix router;

```elixir
# router.ex
forward "/monitoring/health_check", HealthCheckPlug
```

The docs can be found at [https://hexdocs.pm/health_check_plug](https://hexdocs.pm/health_check_plug).

## License

[Apache License, Version 2.0](LICENSE) © [Thiago Santos](https://github.com/thiamsantos)
