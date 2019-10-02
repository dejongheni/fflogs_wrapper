defmodule FflogsWrapperTest do
  use ExUnit.Case
  doctest FflogsWrapper

  test "greets the world" do
    assert FflogsWrapper.hello() == :world
  end
end
