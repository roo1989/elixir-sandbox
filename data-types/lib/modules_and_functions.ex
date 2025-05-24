defmodule Users do
  def new(name, age) do
    %{name: name, age: age}
  end

  def new do
    generate_default_user()
    dbg()
  end

  defp generate_default_user do
    %{name: "John Doe", age: 30}
  end
end
