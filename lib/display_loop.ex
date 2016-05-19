defmodule DisplayLoop do

  def display_loop(list) do
    IO.puts("List : ")
    IO.inspect(list)

    select_operation 
    |> execute_operation(list)

  end

  def select_operation do
    input = Input.gets("What to do?\n1 : Add Task\n2 : Mark Task as Complete\n9 : Exit\n")
    case input do
      "1" -> :add
      "2" -> :markComplete
      "3" -> :remove
      "9" -> :quit
    end
  end

  def execute_operation(:quit, list), do: IO.puts("Whatever! ")
  def execute_operation(:add, list) do
   item = Input.gets("What to add? : ")

   Todo.add_task(list, item)
   |> display_loop

  end

  def execute_operation(:markComplete, list) do
   index = Input.gets("Task Number to complete? : ")
   { num, _ } = Integer.parse(index)

   Todo.mark_complete(list, num)
   |> display_loop
  end
end