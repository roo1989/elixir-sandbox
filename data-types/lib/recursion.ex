defmodule Recursion do
  @moduledoc """
  A simple module revolving around Recursion.
  """

  def countdown(0), do: IO.puts("Finished")

  def countdown(n) when n > 0 do
    IO.puts(n)
    countdown(n - 1)
  end

  def total(0), do: 0
  def total(n), do: n + total(n - 1)

  def fibbonacci(0), do: 0
  def fibbonacci(1), do: 1

  def fibbonacci(n) when n > 1 do
    fibbonacci(n - 1) + fibbonacci(n - 2)
  end
end
