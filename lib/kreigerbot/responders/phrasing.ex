defmodule Kriegerbot.Responders.Phrasing do
  @moduledoc """
  Archer, Phrasing!

  Replies with a random link to a Archer image when a message contains
  'phrasing!'.
  """

  use Hedwig.Responder

  @links [
    "\nhttps://imgflip.com/i/zjx5f"
  ]

  @usage """
  <text> (phrasing) - Replies with a Archer image whenever kreigerbot hears "phrasing".
  """
  hear ~r/phrasing(!)?/i, msg do
    reply msg, random(@links)
  end
end
