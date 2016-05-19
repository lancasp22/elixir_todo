defmodule DisplayLoopTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "add item if user requests it" do

    capture_io("1", fn -> 
      value = DisplayLoop.select_operation
      assert value == :add
      end
    )

  end

  test "prompt user to add" do

    value = capture_io("1\nTask Name\n9", fn -> 
     DisplayLoop.display_loop([])
    end)
     assert String.contains?(value, ["1", "Task Name", "Whatever!"])
  end

  test "prompt user to mark complete" do

    value = capture_io("2\n1\n9", fn -> 
     DisplayLoop.display_loop([])
    end)
     assert String.contains?(value, ["1", "Task Number to complete", "Whatever!"])
  end

  test "prompt user to remove task" do

    value = capture_io("2\n1\n9", fn -> 
     DisplayLoop.display_loop([])
    end)
     assert String.contains?(value, ["1", "Task Number to remove", "Whatever!"])
  end

end