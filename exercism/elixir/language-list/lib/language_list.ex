defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    # Please implement the remove/1 function
    List.delete_at(list, 0)
  end

  def first(list) do
    # Please implement the first/1 function
    List.first(list, [])
  end

  def count(list) do
    # Please implement the count/1 function
    length(list)
  end

  def functional_list?(list) do
    # Please implement the functional_list?/1 function
    "Elixir" in list
  end
end
