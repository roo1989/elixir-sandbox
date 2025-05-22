defmodule Functional do
  def immutability() do
    # Everything in Elixir is immutable.
    list = [1, 2, 3]
    list ++ [999, 1_000_000]

    # Will return the original list,
    IO.puts(list)

    list = list ++ [999, 1_000_000]

    # Will return a new list
    IO.puts(list)
  end

  def module_string() do
    # There are no objects, only modules.
    String.downcase("RAGNAR")
    String.upcase("ragnar")

    list = [1, 2, 3]
    List.delete(list, 1)
  end
end
