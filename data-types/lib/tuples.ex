defmodule Tuples do
  require Logger

  def main() do
    my_tuple = {1, 2, 3, 5}

    # Access an element of a tuple
    first_elem = elem(my_tuple, 1)
    Logger.info(first_elem)
  end

  @doc """
  A very simple function to see how to read tuples in action.
  """
  def access_file() do
    # Try to create a file
    file = File.write("./test.txt", "Hello, World!")

    case File.read(file) do
      {:ok, data} ->
        Logger.info("File content: #{data}")

      {:error, reason} ->
        Logger.error("Some error happened: #{reason}")
    end

    :ok
  end
end
