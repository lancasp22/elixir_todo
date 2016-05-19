defmodule InputTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "add item to list from user input" do

    capture_io("get up", fn -> 
      value = Input.gets
      assert value == "get up"
      end
    )

  end
end