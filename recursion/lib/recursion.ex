defmodule Recursion do
  @moduledoc """
  Documentation for Recursion.
  """

  @doc """
  Does performs operation on a collection,
  reducing the collection elements as it goes.
  """
  def reduce([], acc, _func), do: acc

  def reduce([head | tail], acc, func) do
    reduce(tail, func.(head, acc), func)
  end
end
