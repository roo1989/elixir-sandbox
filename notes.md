### Elixir notes.

Implicit returns:
    Elixir has a thing called implicit returns, so in a function, the last value in the function automatically gets returned.

Iex recompile:
    To recompile the iex shell, you can run the command recompile.

Errors:
** (UndefinedFunctionError) function Cards.shuffle/0 is undefined or private. Did you mean:

      * shuffle/1

    (cards 0.1.0) Cards.shuffle()
    iex:3: (file)

In elixir, a module can have multiple methods with the same name, that take in different lengths or values of arguments.
What the error above is showing, is that someone tried to call the `shuffle` method with 0 arguments but 1 argument is required as showed in `*shuffle/1` meaning 1 argument.


Stdlib:
    The elixir standard library documentation you can find all sorts of methods for all data types.

Immutability:
    Everything in Elixir is immutable, meaning that you never change existing data structure, you simply make copies of it.

Do nothing:
    Similar to Python's pass, you can add :ok inside a function to do nothing and recompile without errors.

Comprehensions:
    You can use List.flatten to flatten out nested lists
    You can use a comprehension loop on multiple lists. Ex:
        ```elixir
        for item <- items, value <- values do
          "#{item}, #{value}"
        end
        ```

