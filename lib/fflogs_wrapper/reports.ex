defmodule FflogsWrapper.Reports do
    @url "reports"

    def get_guild_reports(guild, server, region, params \\ %{}) do
      url = "#{@url}/guild/#{guild}/#{server}/#{region}"
      FflogsWrapper.get(url, params)
    end

    def get_user_reports(user, params \\ %{}) do
      url = "#{@url}/user/#{user}"
      FflogsWrapper.get(url, params)
    end
end
