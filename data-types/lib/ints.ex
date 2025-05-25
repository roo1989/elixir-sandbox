defmodule Ints do
  def big_int do
    # Since there is no fixed size, you can do this. 
    IO.puts(1_234_828_282_828_282 * 192_222_228_499)
  end

  def parse(n) do
    # Parse a string to an integer
    Integer.parse(n)
  end

  def parse_with_err_handling(n) do
    case Integer.parse(n) do
      {int, _rest} -> {:ok, int}
      :error -> {:error, :invalid_integer}
    end
  end

  def int_to_str(n) do
    Integer.to_string(n)
  end

  def int_is_odd(n) do
    Integer.is_odd(n)
  end

  def int_is_even(n) do
    Integer.even(n)
  end

  def int_mod(n) do
    Integer.mod(-3, 10)
  end
end
