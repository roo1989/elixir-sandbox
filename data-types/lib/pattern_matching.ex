defmodule PatternMatching do
  def simple_example do
    my_variable = 10
    IO.puts(my_variable)

    # Match it to something else
    my_variable = 20
    IO.puts(my_variable)

    my_string = "Hello, world!"
    IO.puts(my_string)
  end

  def list_example do
    [head | tail] = [1, 2, 3, 4]
    IO.puts(head)
    IO.puts(tail)
    [age, name] = [24, "Ragnar"]
    IO.puts(age)
    IO.puts(name)
  end

  def tuple_example do
    {status, message} = {:ok, "200 OK"}
    IO.puts(status)
    IO.puts(message)
  end

  def map_example do
    %{key: value} = %{key: "Age", value: 24}
    IO.puts(value)
  end

  def ignore_example do
    {_, age} = {1, 35}
  end
end
