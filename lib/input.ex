defmodule Input do
  def gets do
    String.strip(IO.gets("> "))
  end

  def gets(cursor) do
    String.strip(IO.gets(cursor))
  end

end