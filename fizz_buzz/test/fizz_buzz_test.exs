defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  describe "most numbers" do
    setup do
      IO.puts("Getting started")
      :ok
    end

    test "echoes the number back" do
      assert FizzBuzz.play(1) == 1
    end
  end
end
