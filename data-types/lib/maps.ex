defmodule MapModule do
  def example() do
    traditional_map = %{:name => "Ragnar", 1 => false, "age" => 35}
    colon_seperated_map = %{name: "Ragnar", age: 35}

    IO.puts(traditional_map[:name])
    IO.puts(colon_seperated_map.name)

    Map.get(colon_seperated_map, :name)
    Map.get(colon_seperated_map, :occupation, "Student")
    Map.put(colon_seperated_map, :new_key, "New value")

    colon_seperated_map = %{colon_seperated_map | name: "Daniel"}
    IO.puts(colon_seperated_map)
  end
end
