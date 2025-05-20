defmodule Basic do
  def main() do
  end

  def basic_types_ints() do
    IO.puts(1 + 1)
    IO.puts(5 * 5)
    IO.puts(10 / 2)
    # Will return float
    IO.puts(10 / 2)

    # Will return int
    IO.puts(div(10, 2))
  end

  def basic_types_strings() do
    IO.puts("Ragnar")

    first_name = "Ragnar"
    last_name = "Olafsson"

    # Concat using <>
    IO.puts(first_name <> " " <> last_name)

    # Concat using #{}
    IO.puts("#{first_name} #{last_name}")
  end

  def basic_types_bool() do
    # Basic boolean types
    IO.puts(true)
    IO.puts(false)

    # Representing empty values
    IO.puts(nil)

    # Under the hood booleans are represented as :atoms
    # same as true == :true
    IO.puts(true == true)
    IO.puts(false == false)
    IO.puts(nil == nil)

    is_atom(true)
    is_atom(false)
    is_atom(nil)
  end
end
