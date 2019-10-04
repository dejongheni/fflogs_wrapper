defmodule FflogsWrapper do

  @spec get(String.t, map) :: map
  def get(url, parameters \\ %{}) do
    base_url = Application.get_env(:fflogs_wrapper, :base_url)
    token = Application.get_env(:fflogs_wrapper, :token)

    parameters = Map.put(parameters, :api_key, token)

    {:ok, request} =
      RateLimitator.with_limit(
        :get_fflogs,
        fn -> HTTPoison.get(base_url <> url, [{"Accept", "application/json"}], params: parameters) end,
        max_demand: Application.get_env(:fflogs_wrapper, :max_demand),
        interval: Application.get_env(:fflogs_wrapper, :interval)
      )
      |> Task.await

    Poison.decode!(request.body)
  end
end
