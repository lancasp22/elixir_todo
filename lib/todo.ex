defmodule Todo do

  def add_task(list, task) do
    list ++ [{task, :incomplete}]
  end

  def mark_complete(list, index) do
    List.update_at(list, index, fn({task, _}) -> {task, :complete} end)
  end

  def remove_from_list(list, index) do
    List.delete_at(list, index)
  end

  def update_item(list, index, new_item) do
    List.update_at(list, index, fn({_, status}) -> {new_item, status} end)
  end
end
