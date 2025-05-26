defmodule EpmdUp do
  @moduledoc """
  A simple Elixir module to check and manage the Erlang Port Mapper Daemon (`epmd`).
  """

  require Logger

  @doc """
  Checks if the Erlang Port Mapper Daemon (`epmd`) is active and accepting connections.

  This function attempts to establish a TCP connection to the `epmd` port (4369) on localhost.
  If the connection is successful, it means `epmd` is running and accepting connections.

  ## Returns

    * `true` - if `epmd` is active and accepting connections
    * `false` - if `epmd` is not running or not accepting connections
  """
  @spec active?() :: boolean()
  def active? do
    case :net_adm.names() do
      {:ok, _} -> true
      {:error, _} -> false
    end
  end

  @doc """
  Finds the full path of the Erlang Port Mapper Daemon (`epmd`) executable in the system.

  Returns `nil` if the executable cannot be found in the system's PATH.
  """
  @spec find_epmd_executable() :: binary() | nil
  def find_epmd_executable do
    System.find_executable("epmd")
  end
end
