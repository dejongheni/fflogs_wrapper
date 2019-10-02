defmodule FflogsWrapper.Rankings do
  @url "rankings"

  def get_rankings(encounter_id, params \\ %{}) do
    url = "#{@url}/encounter/#{to_string(encounter_id)}"
    FflogsWrapper.get(url, params)
  end

  def get_character_rankings(character, server, region, params \\ %{}) do
    url = "#{@url}/character/#{character}/#{server}/#{region}"
    FflogsWrapper.get(url, params)
  end
end
