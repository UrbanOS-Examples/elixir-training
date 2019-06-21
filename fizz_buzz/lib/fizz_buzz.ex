defmodule FizzBuzz do
  @moduledoc """
  Documentation for FizzBuzz.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.play(2)
      2

  """
  def play(number) when rem(number, 5) == 0 and rem(number, 3) == 0 do
    "fizzbuzz"
  end

  def play(number) when rem(number, 5) == 0, do: "buzz"

  def play(number) when rem(number, 3) == 0, do: "fizz"

  def play(number), do: number
end
