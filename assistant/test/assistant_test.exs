defmodule AssistantTest do
  use ExUnit.Case
  doctest Assistant

  test "greets the world" do
    assert Assistant.hello() == :world
  end
end
