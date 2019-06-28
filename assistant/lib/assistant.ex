defmodule Assistant do
  @moduledoc """
  Instantiates and defines behavior for a personal
  assistant process.
  """

  use GenServer

  defmodule State do
    @moduledoc """
    Defines the fields that will be stored in the assistant state
    """
    defstruct [
      :name,
      :todos,
      :requests
    ]
  end

  def greeting(pid), do: GenServer.call(pid, :greet)

  def add_todo(pid, todo), do: GenServer.call(pid, {:add_todo, todo})

  def remove_todo(pid, todo), do: GenServer.call(pid, {:remove_todo, todo})

  def list_todos(pid), do: GenServer.call(pid, :list_todos)

  def times_helped(pid), do: GenServer.call(pid, :num_requests)

  def current_time(pid), do: GenServer.call(pid, :current_time)

  def take_a_hike(pid) do
    IO.puts("Very good, sir.")
    GenServer.stop(pid, :normal)
  end

  def start_link(name), do: GenServer.start_link(__MODULE__, [name], name: :"#{name}")

  @impl GenServer
  def init(name) do
    state = %State{
      name: name,
      todos: [],
      requests: 0
    }

    {:ok, state}
  end

  @impl GenServer
  def handle_call(:greet, _from, state) do
    response =
      case :crypto.rand_uniform(0, 3) do
        0 -> "How may I assist you?"
        1 -> "It's nice to meet you!"
        2 -> "Lovely weather we're having."
      end

    reply = "Hello, I'm #{state.name}. #{response}"

    {:reply, reply, state}
  end

  @impl GenServer
  def handle_call(:num_requests, _from, state) do
    new_requests = state.requests + 1
    if rem(new_requests, 5) == 0, do: GenServer.cast(self(), :snark)

    {:reply, "#{new_requests} times, sir, including this one.", %{state | requests: new_requests}}
  end

  @impl GenServer
  def handle_call({:add_todo, todo}, _from, state) do
    {:reply, "I'll remind you, sir.",
     %{state | requests: state.requests + 1, todos: [todo | state.todos]}}
  end

  @impl GenServer
  def handle_call({:remove_todo, todo}, _from, state) do
    {:reply, "Consider it done, sir.",
     %{state | requests: state.requests + 1, todos: List.delete(state.todos, todo)}}
  end

  @impl GenServer
  def handle_call(:list_todos, _from, state) do
    {:reply, "Your todos are as follows: #{Enum.join(state.todos, ", ")}",
     %{state | requests: state.requests + 1}}
  end

  @impl GenServer
  def handle_call(:current_time, _from, state) do
    current_time = Time.utc_now() |> Time.truncate(:second) |> Time.to_string()
    {:reply, "The time is currently #{current_time} GMT", %{state | requests: state.requests + 1}}
  end

  @impl GenServer
  def handle_cast(:snark, state) do
    IO.puts("(Goodness, you're quite useless without me.)")
    {:noreply, state}
  end
end
