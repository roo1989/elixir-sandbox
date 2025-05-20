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

Accessing elements in a list:

```elixir
[color1, color2] = ["blue", "red"]
```
This will match the first element in the left hand array to the first element in the right hand array and assign the value from the right hand side to the variable in the left hand side list.

Accessing elements in a tuple:

```elixir
    {status, data} = Some.read()
```

Compilation:
    Elixir -> Transpiled to  Erlang -> Compiled and executed on the BEAM (Bogdan Erland Abstrac Machine)


BEAM:
    BEAM is a virtual machine that executes the Elixir code similar to the JVM in Java

Erlang:
    You can run erlang code with ease in Elixir like so.

```elixir
   :erlang.function_to_call()  
```

Logic checks:
    When possible, avoid using if statements and use case statements instead.

```elixir
# Bad
{status, data} = some_function_that_returns_tuple()
if status == :error do
    return "Some error"
else
    return data
end
```

```elixir
# Good
{status, data} = some_function_that_returns_tuple()
case status do
    :ok -> data
    :error -> raise SomeException
end
```

Utilize elixir's pattern matching features.

Pipe operator.
    A pipe operator can be used to chain method calls in a clean and concise way.
```elixir
Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size)
```
When calling a function using the pipe operator, the chained function first argument is the result of the previous function call.


Anonymous functions:
    In Elixir, anonymous functions are treated as a first class citizen. Meaning that: 
        - Named and anonymous functions can be assigned to variables.
        - Named and anonymous functions can be passed around like data as arguments
            and return values
        - Anonymous functions can be created dynamically.

Doctests:

Elixir will look for a @doc string and an # Examples block to execute blocktest.

- Example

```elixir
    @doc """
    This is an example docstring with an included doctest.
    
    # Examples

    iex > Module.some_function
            |> another_funcion
            |> third_function
        [return_value]
  """
```

Atoms:
    - An Atom is a constant where it's name is the value
A practical use of atoms are when you have to reuse a string value.

Ints:
    - A nice syntastic sugar for large integers is seperating underscores
```elixir
# Without sugar
one_million = 1000000

# With sugar
one_million = 1_000_000 # Will output the same as above
```

Strings:
    - String values are defined with the double quotes.
```elixir
first_name = "Ragnar"
```
    - To concat strings you use the <> operator

```elixir
full_name = "Ragnar " <> "Olafsson" # Will return Ragnar Olafsson
```

    - Another way to do concat operation is string interpolation

```elixir

first_name = "Ragnar"
last_name = "Olafsson"

IO.puts("#{first_name} #{last_name}") # Will return Ragnar Olafsson
```
