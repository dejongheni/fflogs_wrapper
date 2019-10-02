defmodule FflogsWrapper do

  def get(url, parameters \\ %{}) do
    base_url = Application.get_env(:fflogs_wrapper, :base_url)
    token = Application.get_env(:fflogs_wrapper, :token)

    parameters = Map.put(parameters, :api_key, token)

    {:ok, request} = HTTPoison.get(base_url <> url, [{"Accept", "application/json"}], params: parameters)
    Poison.decode!(request.body)
  end
end
