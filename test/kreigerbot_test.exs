defmodule KreigerbotTest do
  use ExUnit.Case
  doctest Kreigerbot

  test "greets the world" do
    assert Kreigerbot.hello() == :world
  end
end
