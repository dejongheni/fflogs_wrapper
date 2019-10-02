defmodule FflogsWrapper.Parses do
  @url "parses"

  def get_character_parses(character, server, region, params \\ %{}) do
    url = "#{@url}/character/#{character}/#{server}/#{region}"
    FflogsWrapper.get(url, params)
  end
end
