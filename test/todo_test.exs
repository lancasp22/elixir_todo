defmodule TodoTest do
  use ExUnit.Case
  
  test "adds item to a new list" do
    item_text = "elixir training"

    new_list = Todo.add_task([], item_text)

    assert List.first(new_list) == {item_text, :incomplete}
  end

  test "adds item to an existing list" do
    item_text = "elixir training"
    existing_list = [{"I already exist", :incomplete}]

    new_list = Todo.add_task(existing_list, item_text)

    assert List.last(new_list) == {item_text, :incomplete}
  end

  test "updates status to complete" do
    existing_list = [{"I already exist", :incomplete}]

    updated_list = Todo.mark_complete(existing_list, 0)

    assert updated_list == [{"I already exist", :complete}]
  end

  test "remove item from list" do
    existing_list = [{"I already exist", :incomplete}]

    updated_list = Todo.remove_from_list(existing_list, 0)

    assert updated_list == []
  end

  test "update item in list" do
    existing_list = [{"I already exist", :incomplete}]

    updated_list = Todo.update_item(existing_list, 0, "New text yo!")

    assert updated_list == [{"New text yo!", :incomplete}]
  end

end
