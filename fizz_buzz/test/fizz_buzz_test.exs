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

  describe "fizz" do
    test "echoes fizz for 3" do
      assert FizzBuzz.play(3) == "fizz"
    end
  end

  describe "buzz" do
    test "echoes buzz for 5" do
      assert FizzBuzz.play(5) == "buzz"
    end
  end
end
