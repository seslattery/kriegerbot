defmodule Kriegerbot.Responders.PhrasingTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "kriegerbot", responders: [{Kriegerbot.Responders.Phrasing, []}]
  test "great success - responds with a borat url", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "phrasing"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "https://imgflip.com/i/zjx5f")
  end
end
