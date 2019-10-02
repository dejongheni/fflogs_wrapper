defmodule FflogsWrapper.Zones do
  @url "zones"

  def get_zones do
    FflogsWrapper.get(@url)
  end
end
