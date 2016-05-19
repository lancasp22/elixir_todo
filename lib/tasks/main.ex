defmodule Mix.Tasks.Runner do
  use Mix.Task
  def run(_) do
    original_list = [{"shower", :incomplete}]
    # IO.inspect(original_list)
    DisplayLoop.display_loop(original_list)
  end
 
end