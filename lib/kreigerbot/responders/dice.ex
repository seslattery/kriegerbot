defmodule Kriegerbot.Responders.Dice do
  @moduledoc """
   /roll 3d6

  Replies with a random simulated dice rolls for number of dice specified.
  """

  use Hedwig.Responder

  @usage """
  <text> (/roll 1d6) - Replies with a dice roll when the bot hears /roll followed by a valid dice format ex. "3d20".
  """
  hear ~r/\/roll/i, msg do
    params = String.split(msg.text, " ")|> Enum.at(1) |> String.split("d")
    reply msg, roll(String.to_integer(Enum.at(params, 0)), String.to_integer(Enum.at(params, 1)))
  end
  defp roll(num, sides, rolls \\ [])
  defp roll(0, _, rolls), do: Enum.map(rolls, fn x -> "#{Integer.to_string(x)}  " end)
  defp roll(num, sides, rolls), do: roll(num - 1, sides, [:rand.uniform(sides)] ++ rolls)
end
