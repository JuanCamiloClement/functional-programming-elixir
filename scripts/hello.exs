defmodule Hello do
  def world(name) do
    IO.puts("Hello #{name}!")
  end
end

Hello.world("Juan")

defmodule User do
  defstruct username: "", email: "", age: nil
end

user1 = %{username: "Juan", email: "juan@test.com", age: 24}
%{username: username} = user1
Hello.world(username)
