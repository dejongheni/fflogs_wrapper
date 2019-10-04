defmodule FflogsWrapper.MixProject do
  use Mix.Project

  def project do
    [
      app: :fflogs_wrapper,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:httpoison, :rate_limitator]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.6"},
      {:poison, "~> 3.1"},
      {:rate_limitator, git: "https://github.com/Gurimarukin/rate_limitator.git", tag: "1.1.0"}
    ]
  end
end
