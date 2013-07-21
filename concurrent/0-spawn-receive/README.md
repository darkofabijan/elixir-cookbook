```Elixir
  iex(1)> c "server.ex"
  [Server]
  iex(2)> server_pid = spawn(Server, :listen, [])
#PID<0.46.0>
  iex(3)> server_pid <- {self, "Yay this is message"}
{#PID<0.26.0>, "Yay this is message"}
iex(4)> receive do
...(4)>   {:ok, message} ->
...(4)>     IO.puts "Server returned #{message}"
...(4)> end
Server returned Such a nice msg Yay this is message
:ok
iex(5)>
</code>
```
