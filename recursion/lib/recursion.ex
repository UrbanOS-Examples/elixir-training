defmodule Recursion do
  @moduledoc """
  Documentation for Recursion.
  """

  @doc """
  Does performs operation on a collection,
  reducing the collection elements as it goes.
  """
  def reduce(0, acc), do: acc
    
  def reduce(arg, acc) do
    arg * reduce(arg - 1, acc)
  end
end
