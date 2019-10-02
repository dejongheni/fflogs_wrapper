defmodule FflogsWrapper.Report do
  @url "report"

  def get_fights(code, params \\ %{}) do
    url = "#{@url}/fights/#{code}"
    FflogsWrapper.get(url, params)
  end

  ## doesn't work

  # def get_view(view, code, params \\ %{}) do
  #   url = "#{@url}/view/#{view}/#{code}"
  #   FflogsWrapper.get(url, params)
  # end

  # def get_table(table, code, params \\ %{}) do
  #   url = "#{@url}/table/#{table}/#{code}"
  #   FflogsWrapper.get(url, params)
  # end
end
