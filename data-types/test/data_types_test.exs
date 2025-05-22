defmodule DataTypesTest do
  use ExUnit.Case
  doctest DataTypes

  test "greets the world" do
    assert DataTypes.hello() == :world
  end
end
