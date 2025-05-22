defmodule Lists do
  def list_module() do
    # Lists are represented as sinly linked lists.
    list = ["ragnar", 35, "aalborg", "programmer", "unemployed"]

    # Appending to the end of the list (expensive)
    list = list ++ [999, 1_000_000]
    IO.puts(list)

    # Removing items from the list.
    list = list -- [999, 1_000_000]
    IO.puts(list)

    # Get the head of the list (first element) (part of the Kernel module)
    first = hd(list)
    IO.puts(first)

    # Get the tail of the list (remainder after the head) (also part of the Kernel module)
    remainder = tl(list)
    IO.puts(remainder)
  end
end
