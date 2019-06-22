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

  @doc """
  Counts the number of elements in a collection.
  Uses a 'named' anonymous function bound to
  a variable and called with the '.' operator and
  capture syntax.
  """
  def count(enum) do
    counter = fn _num, acc -> 1 + acc end

    reduce(enum, 0, &counter.(&1, &2))
  end

  @doc """
  Alternative count; counts the elements in a
  collection with a direct call to an anonymous
  function.
  """
  def count_anon(enum) do
    reduce(enum, 0, fn _num, acc -> 1 + acc end)
  end
end
