defmodule GuessingGame do
  def compare(_, nil), do: "Make a guess"
  def compare(nil, _), do: "Make a guess"
  def compare(secret_number, guess) when secret_number > guess, do: "Too high"
  def compare(secret_number, guess) when secret_number < guess, do: "Too low"
  def compare(secret_number, guess) when secret_number == guess, do: "Correct"
end
