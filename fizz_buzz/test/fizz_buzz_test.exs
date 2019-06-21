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

    test "echoes fizz for multiple of 3" do
      assert FizzBuzz.play(9) == "fizz"
    end
  end

  describe "buzz" do
    test "echoes buzz for 5" do
      assert FizzBuzz.play(5) == "buzz"
    end

    test "echoes buzz for multiple of 5" do
      assert FizzBuzz.play(10) == "buzz"
    end
  end

  describe "fizzbuzz" do
    test "echoes fizzbuzz for 15" do
      assert FizzBuzz.play(15) == "fizzbuzz"
    end

    test "echoes fizzbuzz for multiples of 3 and 5" do
      assert FizzBuzz.play(45) == "fizzbuzz"
    end
  end
end
