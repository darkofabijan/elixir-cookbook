defmodule Server do

  def listen do
    receive do
      {client, message} ->
        client <- {:ok, "Such a nice msg #{message}"}
        listen
    end
  end

end
