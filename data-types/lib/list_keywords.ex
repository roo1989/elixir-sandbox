defmodule ListKeywords do
  def example(opts \\ []) do
    Keyword.get(opts, :name, "Ragnar")
  end
end
