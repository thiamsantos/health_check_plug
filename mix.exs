defmodule HealthCheckPlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :health_check_plug,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Check your application health",
      package: package(),
      name: "HealthCheckPlug",
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["Thiago Santos"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/thiamsantos/health_check_plug"}
    ]
  end

  defp docs do
    [
      main: "HealthCheckPlug",
      source_url: "https://github.com/thiamsantos/health_check_plug"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.0", optional: true},
      {:ex_doc, "~> 0.21.3", only: :dev, runtime: false}
    ]
  end
end
