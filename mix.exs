defmodule RosettaHomeChromecast.Mixfile do
  use Mix.Project

  def project do
    [app: :rosetta_home_chromecast,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :chromecast, :mdns, :cicada]]
  end

  defp deps do
    [
      {:chromecast, "~> 0.1.5"},
      {:mdns, "~> 0.1.5"},
      {:cicada, github: "rosetta-home/cicada", optional: true},
    ]
  end
end
